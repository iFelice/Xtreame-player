package okhttp3.internal.connection;

import Q6.B;
import Q6.D;
import Q6.j;
import Q6.o;
import Q6.p;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.ws.RealWebSocket;
import p113o3.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Exchange {
    private final RealCall call;
    private final ExchangeCodec codec;
    private final RealConnection connection;
    private final EventListener eventListener;
    private final ExchangeFinder finder;
    private boolean hasFailure;
    private boolean isDuplex;

    public final class RequestBodySink extends o {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(Exchange exchange, B b8, long j8) {
            super(b8);
            q0.h(b8, "delegate");
            this.this$0 = exchange;
            this.contentLength = j8;
        }

        private final <E extends IOException> E complete(E e8) {
            if (this.completed) {
                return e8;
            }
            this.completed = true;
            return (E) this.this$0.bodyComplete(this.bytesReceived, false, true, e8);
        }

        @Override // Q6.o, Q6.B, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            long j8 = this.contentLength;
            if (j8 != -1 && this.bytesReceived != j8) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                complete(null);
            } catch (IOException e8) {
                throw complete(e8);
            }
        }

        @Override // Q6.o, Q6.B, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e8) {
                throw complete(e8);
            }
        }

        @Override // Q6.o, Q6.B
        public void write(j jVar, long j8) throws IOException {
            q0.h(jVar, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            long j9 = this.contentLength;
            if (j9 == -1 || this.bytesReceived + j8 <= j9) {
                try {
                    super.write(jVar, j8);
                    this.bytesReceived += j8;
                    return;
                } catch (IOException e8) {
                    throw complete(e8);
                }
            }
            throw new ProtocolException("expected " + this.contentLength + " bytes but received " + (this.bytesReceived + j8));
        }
    }

    public final class ResponseBodySource extends p {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        private boolean invokeStartEvent;
        final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(Exchange exchange, D d6, long j8) {
            super(d6);
            q0.h(d6, "delegate");
            this.this$0 = exchange;
            this.contentLength = j8;
            this.invokeStartEvent = true;
            if (j8 == 0) {
                complete(null);
            }
        }

        @Override // Q6.p, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            try {
                super.close();
                complete(null);
            } catch (IOException e8) {
                throw complete(e8);
            }
        }

        public final <E extends IOException> E complete(E e8) {
            if (this.completed) {
                return e8;
            }
            this.completed = true;
            if (e8 == null && this.invokeStartEvent) {
                this.invokeStartEvent = false;
                this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
            }
            return (E) this.this$0.bodyComplete(this.bytesReceived, true, false, e8);
        }

        @Override // Q6.p, Q6.D
        public long read(j jVar, long j8) throws IOException {
            q0.h(jVar, "sink");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            try {
                long j9 = delegate().read(jVar, j8);
                if (this.invokeStartEvent) {
                    this.invokeStartEvent = false;
                    this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
                }
                if (j9 == -1) {
                    complete(null);
                    return -1L;
                }
                long j10 = this.bytesReceived + j9;
                long j11 = this.contentLength;
                if (j11 != -1 && j10 > j11) {
                    throw new ProtocolException("expected " + this.contentLength + " bytes but received " + j10);
                }
                this.bytesReceived = j10;
                if (j10 == j11) {
                    complete(null);
                }
                return j9;
            } catch (IOException e8) {
                throw complete(e8);
            }
        }
    }

    public Exchange(RealCall realCall, EventListener eventListener, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        q0.h(realCall, "call");
        q0.h(eventListener, "eventListener");
        q0.h(exchangeFinder, "finder");
        q0.h(exchangeCodec, "codec");
        this.call = realCall;
        this.eventListener = eventListener;
        this.finder = exchangeFinder;
        this.codec = exchangeCodec;
        this.connection = exchangeCodec.getConnection();
    }

    private final void trackFailure(IOException iOException) {
        this.hasFailure = true;
        this.finder.trackFailure(iOException);
        this.codec.getConnection().trackFailure$okhttp(this.call, iOException);
    }

    public final <E extends IOException> E bodyComplete(long j8, boolean z7, boolean z8, E e8) {
        if (e8 != null) {
            trackFailure(e8);
        }
        if (z8) {
            if (e8 != null) {
                this.eventListener.requestFailed(this.call, e8);
            } else {
                this.eventListener.requestBodyEnd(this.call, j8);
            }
        }
        if (z7) {
            if (e8 != null) {
                this.eventListener.responseFailed(this.call, e8);
            } else {
                this.eventListener.responseBodyEnd(this.call, j8);
            }
        }
        return (E) this.call.messageDone$okhttp(this, z8, z7, e8);
    }

    public final void cancel() {
        this.codec.cancel();
    }

    public final B createRequestBody(Request request, boolean z7) {
        q0.h(request, "request");
        this.isDuplex = z7;
        RequestBody requestBodyBody = request.body();
        q0.e(requestBodyBody);
        long jContentLength = requestBodyBody.contentLength();
        this.eventListener.requestBodyStart(this.call);
        return new RequestBodySink(this, this.codec.createRequestBody(request, jContentLength), jContentLength);
    }

    public final void detachWithViolence() {
        this.codec.cancel();
        this.call.messageDone$okhttp(this, true, true, null);
    }

    public final void finishRequest() throws IOException {
        try {
            this.codec.finishRequest();
        } catch (IOException e8) {
            this.eventListener.requestFailed(this.call, e8);
            trackFailure(e8);
            throw e8;
        }
    }

    public final void flushRequest() throws IOException {
        try {
            this.codec.flushRequest();
        } catch (IOException e8) {
            this.eventListener.requestFailed(this.call, e8);
            trackFailure(e8);
            throw e8;
        }
    }

    public final RealCall getCall$okhttp() {
        return this.call;
    }

    public final RealConnection getConnection$okhttp() {
        return this.connection;
    }

    public final EventListener getEventListener$okhttp() {
        return this.eventListener;
    }

    public final ExchangeFinder getFinder$okhttp() {
        return this.finder;
    }

    public final boolean getHasFailure$okhttp() {
        return this.hasFailure;
    }

    public final boolean isCoalescedConnection$okhttp() {
        return !q0.c(this.finder.getAddress$okhttp().url().host(), this.connection.route().address().url().host());
    }

    public final boolean isDuplex$okhttp() {
        return this.isDuplex;
    }

    public final RealWebSocket.Streams newWebSocketStreams() {
        this.call.timeoutEarlyExit();
        return this.codec.getConnection().newWebSocketStreams$okhttp(this);
    }

    public final void noNewExchangesOnConnection() {
        this.codec.getConnection().noNewExchanges$okhttp();
    }

    public final void noRequestBody() {
        this.call.messageDone$okhttp(this, true, false, null);
    }

    public final ResponseBody openResponseBody(Response response) throws IOException {
        q0.h(response, "response");
        try {
            String strHeader$default = Response.header$default(response, "Content-Type", null, 2, null);
            long jReportedContentLength = this.codec.reportedContentLength(response);
            return new RealResponseBody(strHeader$default, jReportedContentLength, r.c(new ResponseBodySource(this, this.codec.openResponseBodySource(response), jReportedContentLength)));
        } catch (IOException e8) {
            this.eventListener.responseFailed(this.call, e8);
            trackFailure(e8);
            throw e8;
        }
    }

    public final Response.Builder readResponseHeaders(boolean z7) throws IOException {
        try {
            Response.Builder responseHeaders = this.codec.readResponseHeaders(z7);
            if (responseHeaders != null) {
                responseHeaders.initExchange$okhttp(this);
            }
            return responseHeaders;
        } catch (IOException e8) {
            this.eventListener.responseFailed(this.call, e8);
            trackFailure(e8);
            throw e8;
        }
    }

    public final void responseHeadersEnd(Response response) {
        q0.h(response, "response");
        this.eventListener.responseHeadersEnd(this.call, response);
    }

    public final void responseHeadersStart() {
        this.eventListener.responseHeadersStart(this.call);
    }

    public final Headers trailers() {
        return this.codec.trailers();
    }

    public final void webSocketUpgradeFailed() {
        bodyComplete(-1L, true, true, null);
    }

    public final void writeRequestHeaders(Request request) throws IOException {
        q0.h(request, "request");
        try {
            this.eventListener.requestHeadersStart(this.call);
            this.codec.writeRequestHeaders(request);
            this.eventListener.requestHeadersEnd(this.call, request);
        } catch (IOException e8) {
            this.eventListener.requestFailed(this.call, e8);
            trackFailure(e8);
            throw e8;
        }
    }
}
