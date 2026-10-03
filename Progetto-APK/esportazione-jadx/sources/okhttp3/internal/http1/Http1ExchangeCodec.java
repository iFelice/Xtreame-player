package okhttp3.internal.http1;

import A0.O;
import D6.e;
import Q6.B;
import Q6.D;
import Q6.G;
import Q6.j;
import Q6.k;
import Q6.l;
import Q6.q;
import com.google.android.gms.common.api.d;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import p148t.a;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    public static final Companion Companion = new Companion(null);
    private static final long NO_CHUNK_YET = -1;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    private final OkHttpClient client;
    private final RealConnection connection;
    private final HeadersReader headersReader;
    private final k sink;
    private final l source;
    private int state;
    private Headers trailers;

    public abstract class AbstractSource implements D {
        private boolean closed;
        private final q timeout;

        public AbstractSource() {
            this.timeout = new q(Http1ExchangeCodec.this.source.timeout());
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public abstract /* synthetic */ void close();

        public final boolean getClosed() {
            return this.closed;
        }

        public final q getTimeout() {
            return this.timeout;
        }

        @Override // Q6.D
        public long read(j jVar, long j8) throws IOException {
            q0.h(jVar, "sink");
            try {
                return Http1ExchangeCodec.this.source.read(jVar, j8);
            } catch (IOException e8) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
                throw e8;
            }
        }

        public final void responseBodyComplete() {
            if (Http1ExchangeCodec.this.state == 6) {
                return;
            }
            if (Http1ExchangeCodec.this.state == 5) {
                Http1ExchangeCodec.this.detachTimeout(this.timeout);
                Http1ExchangeCodec.this.state = 6;
            } else {
                throw new IllegalStateException("state: " + Http1ExchangeCodec.this.state);
            }
        }

        public final void setClosed(boolean z7) {
            this.closed = z7;
        }

        @Override // Q6.D
        public G timeout() {
            return this.timeout;
        }
    }

    public final class ChunkedSink implements B {
        private boolean closed;
        private final q timeout;

        public ChunkedSink() {
            this.timeout = new q(Http1ExchangeCodec.this.sink.timeout());
        }

        @Override // Q6.B, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.sink.B("0\r\n\r\n");
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // Q6.B, java.io.Flushable
        public synchronized void flush() {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.sink.flush();
        }

        @Override // Q6.B
        public G timeout() {
            return this.timeout;
        }

        @Override // Q6.B
        public void write(j jVar, long j8) {
            q0.h(jVar, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            if (j8 == 0) {
                return;
            }
            Http1ExchangeCodec.this.sink.F(j8);
            Http1ExchangeCodec.this.sink.B("\r\n");
            Http1ExchangeCodec.this.sink.write(jVar, j8);
            Http1ExchangeCodec.this.sink.B("\r\n");
        }
    }

    public final class ChunkedSource extends AbstractSource {
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;
        final /* synthetic */ Http1ExchangeCodec this$0;
        private final HttpUrl url;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            super();
            q0.h(httpUrl, "url");
            this.this$0 = http1ExchangeCodec;
            this.url = httpUrl;
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
        }

        private final void readChunkSize() throws ProtocolException {
            if (this.bytesRemainingInChunk != -1) {
                this.this$0.source.K();
            }
            try {
                this.bytesRemainingInChunk = this.this$0.source.X();
                String string = I6.k.X0(this.this$0.source.K()).toString();
                if (this.bytesRemainingInChunk < 0 || (string.length() > 0 && !I6.k.U0(string, ";", false))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + string + '\"');
                }
                if (this.bytesRemainingInChunk == 0) {
                    this.hasMoreChunks = false;
                    Http1ExchangeCodec http1ExchangeCodec = this.this$0;
                    http1ExchangeCodec.trailers = http1ExchangeCodec.headersReader.readHeaders();
                    OkHttpClient okHttpClient = this.this$0.client;
                    q0.e(okHttpClient);
                    CookieJar cookieJar = okHttpClient.cookieJar();
                    HttpUrl httpUrl = this.url;
                    Headers headers = this.this$0.trailers;
                    q0.e(headers);
                    HttpHeaders.receiveHeaders(cookieJar, httpUrl, headers);
                    responseBodyComplete();
                }
            } catch (NumberFormatException e8) {
                throw new ProtocolException(e8.getMessage());
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.this$0.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, Q6.D
        public long read(j jVar, long j8) throws IOException {
            q0.h(jVar, "sink");
            if (j8 < 0) {
                throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
            }
            if (!(!getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            if (!this.hasMoreChunks) {
                return -1L;
            }
            long j9 = this.bytesRemainingInChunk;
            if (j9 == 0 || j9 == -1) {
                readChunkSize();
                if (!this.hasMoreChunks) {
                    return -1L;
                }
            }
            long j10 = super.read(jVar, Math.min(j8, this.bytesRemainingInChunk));
            if (j10 != -1) {
                this.bytesRemainingInChunk -= j10;
                return j10;
            }
            this.this$0.getConnection().noNewExchanges$okhttp();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            responseBodyComplete();
            throw protocolException;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }
    }

    public final class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        public FixedLengthSource(long j8) {
            super();
            this.bytesRemaining = j8;
            if (j8 == 0) {
                responseBodyComplete();
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.bytesRemaining != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, Q6.D
        public long read(j jVar, long j8) throws IOException {
            q0.h(jVar, "sink");
            if (j8 < 0) {
                throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
            }
            if (!(!getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            long j9 = this.bytesRemaining;
            if (j9 == 0) {
                return -1L;
            }
            long j10 = super.read(jVar, Math.min(j9, j8));
            if (j10 == -1) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete();
                throw protocolException;
            }
            long j11 = this.bytesRemaining - j10;
            this.bytesRemaining = j11;
            if (j11 == 0) {
                responseBodyComplete();
            }
            return j10;
        }
    }

    public final class KnownLengthSink implements B {
        private boolean closed;
        private final q timeout;

        public KnownLengthSink() {
            this.timeout = new q(Http1ExchangeCodec.this.sink.timeout());
        }

        @Override // Q6.B, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // Q6.B, java.io.Flushable
        public void flush() {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.sink.flush();
        }

        @Override // Q6.B
        public G timeout() {
            return this.timeout;
        }

        @Override // Q6.B
        public void write(j jVar, long j8) {
            q0.h(jVar, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            Util.checkOffsetAndCount(jVar.f6064H, 0L, j8);
            Http1ExchangeCodec.this.sink.write(jVar, j8);
        }
    }

    public final class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        public UnknownLengthSource() {
            super();
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (!this.inputExhausted) {
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, Q6.D
        public long read(j jVar, long j8) throws IOException {
            q0.h(jVar, "sink");
            if (j8 < 0) {
                throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
            }
            if (!(!getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long j9 = super.read(jVar, j8);
            if (j9 != -1) {
                return j9;
            }
            this.inputExhausted = true;
            responseBodyComplete();
            return -1L;
        }
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, RealConnection realConnection, l lVar, k kVar) {
        q0.h(realConnection, "connection");
        q0.h(lVar, "source");
        q0.h(kVar, "sink");
        this.client = okHttpClient;
        this.connection = realConnection;
        this.source = lVar;
        this.sink = kVar;
        this.headersReader = new HeadersReader(lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void detachTimeout(q qVar) {
        G g8 = qVar.f6072a;
        G g9 = G.NONE;
        q0.h(g9, "delegate");
        qVar.f6072a = g9;
        g8.clearDeadline();
        g8.clearTimeout();
    }

    private final boolean isChunked(Response response) {
        return I6.k.F0("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null));
    }

    private final B newChunkedSink() {
        if (this.state == 1) {
            this.state = 2;
            return new ChunkedSink();
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    private final D newChunkedSource(HttpUrl httpUrl) {
        if (this.state == 4) {
            this.state = 5;
            return new ChunkedSource(this, httpUrl);
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    private final D newFixedLengthSource(long j8) {
        if (this.state == 4) {
            this.state = 5;
            return new FixedLengthSource(j8);
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    private final B newKnownLengthSink() {
        if (this.state == 1) {
            this.state = 2;
            return new KnownLengthSink();
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    private final D newUnknownLengthSource() {
        if (this.state == 4) {
            this.state = 5;
            getConnection().noNewExchanges$okhttp();
            return new UnknownLengthSource();
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        getConnection().cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public B createRequestBody(Request request, long j8) throws ProtocolException {
        q0.h(request, "request");
        if (request.body() != null && request.body().isDuplex()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (isChunked(request)) {
            return newChunkedSink();
        }
        if (j8 != -1) {
            return newKnownLengthSink();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public RealConnection getConnection() {
        return this.connection;
    }

    public final boolean isClosed() {
        return this.state == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public D openResponseBodySource(Response response) {
        q0.h(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return newFixedLengthSource(0L);
        }
        if (isChunked(response)) {
            return newChunkedSource(response.request().url());
        }
        long jHeadersContentLength = Util.headersContentLength(response);
        return jHeadersContentLength != -1 ? newFixedLengthSource(jHeadersContentLength) : newUnknownLengthSource();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Response.Builder readResponseHeaders(boolean z7) {
        int i8 = this.state;
        if (i8 != 1 && i8 != 2 && i8 != 3) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        try {
            StatusLine statusLine = StatusLine.Companion.parse(this.headersReader.readLine());
            Response.Builder builderHeaders = new Response.Builder().protocol(statusLine.protocol).code(statusLine.code).message(statusLine.message).headers(this.headersReader.readHeaders());
            if (z7 && statusLine.code == 100) {
                return null;
            }
            int i9 = statusLine.code;
            if (i9 == 100) {
                this.state = 3;
                return builderHeaders;
            }
            if (102 > i9 || i9 >= 200) {
                this.state = 4;
                return builderHeaders;
            }
            this.state = 3;
            return builderHeaders;
        } catch (EOFException e8) {
            throw new IOException(a.c("unexpected end of stream on ", getConnection().route().address().url().redact()), e8);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long reportedContentLength(Response response) {
        q0.h(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        if (isChunked(response)) {
            return -1L;
        }
        return Util.headersContentLength(response);
    }

    public final void skipConnectBody(Response response) {
        q0.h(response, "response");
        long jHeadersContentLength = Util.headersContentLength(response);
        if (jHeadersContentLength == -1) {
            return;
        }
        D dNewFixedLengthSource = newFixedLengthSource(jHeadersContentLength);
        Util.skipAll(dNewFixedLengthSource, d.API_PRIORITY_OTHER, TimeUnit.MILLISECONDS);
        dNewFixedLengthSource.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Headers trailers() {
        if (this.state != 6) {
            throw new IllegalStateException("too early; can't read the trailers yet".toString());
        }
        Headers headers = this.trailers;
        return headers == null ? Util.EMPTY_HEADERS : headers;
    }

    public final void writeRequest(Headers headers, String str) {
        q0.h(headers, "headers");
        q0.h(str, "requestLine");
        if (this.state != 0) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        this.sink.B(str).B("\r\n");
        int size = headers.size();
        for (int i8 = 0; i8 < size; i8++) {
            this.sink.B(headers.name(i8)).B(": ").B(headers.value(i8)).B("\r\n");
        }
        this.sink.B("\r\n");
        this.state = 1;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void writeRequestHeaders(Request request) {
        q0.h(request, "request");
        RequestLine requestLine = RequestLine.INSTANCE;
        Proxy.Type type = getConnection().route().proxy().type();
        q0.g(type, "connection.route().proxy.type()");
        writeRequest(request.headers(), requestLine.get(request, type));
    }

    private final boolean isChunked(Request request) {
        return I6.k.F0("chunked", request.header("Transfer-Encoding"));
    }
}
