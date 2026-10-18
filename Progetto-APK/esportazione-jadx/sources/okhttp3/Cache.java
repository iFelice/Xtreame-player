package okhttp3;

import D6.e;
import F2.G;
import I6.k;
import Q6.B;
import Q6.D;
import Q6.j;
import Q6.l;
import Q6.m;
import Q6.o;
import Q6.p;
import Q6.w;
import Q6.x;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeSet;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import p113o3.r;
import p162u6.q;
import p162u6.s;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Cache implements Closeable, Flushable {
    public static final Companion Companion = new Companion(null);
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    private final DiskLruCache cache;
    private int hitCount;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    public static final class CacheResponseBody extends ResponseBody {
        private final l bodySource;
        private final String contentLength;
        private final String contentType;
        private final DiskLruCache.Snapshot snapshot;

        public CacheResponseBody(DiskLruCache.Snapshot snapshot, String str, String str2) {
            q0.h(snapshot, "snapshot");
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            this.bodySource = r.c(new p(snapshot.getSource(1)) { // from class: okhttp3.Cache.CacheResponseBody.1
                @Override // Q6.p, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    this.getSnapshot().close();
                    super.close();
                }
            });
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            String str = this.contentLength;
            if (str != null) {
                return Util.toLongOrDefault(str, -1L);
            }
            return -1L;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            String str = this.contentType;
            if (str != null) {
                return MediaType.Companion.parse(str);
            }
            return null;
        }

        public final DiskLruCache.Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // okhttp3.ResponseBody
        public l source() {
            return this.bodySource;
        }
    }

    public final class RealCacheRequest implements CacheRequest {
        private final B body;
        private final B cacheOut;
        private boolean done;
        private final DiskLruCache.Editor editor;
        final /* synthetic */ Cache this$0;

        public RealCacheRequest(final Cache cache, DiskLruCache.Editor editor) {
            q0.h(editor, "editor");
            this.this$0 = cache;
            this.editor = editor;
            B bNewSink = editor.newSink(1);
            this.cacheOut = bNewSink;
            this.body = new o(bNewSink) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // Q6.o, Q6.B, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    Cache cache2 = cache;
                    RealCacheRequest realCacheRequest = this;
                    synchronized (cache2) {
                        if (realCacheRequest.getDone()) {
                            return;
                        }
                        realCacheRequest.setDone(true);
                        cache2.setWriteSuccessCount$okhttp(cache2.getWriteSuccessCount$okhttp() + 1);
                        super.close();
                        this.editor.commit();
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void abort() {
            Cache cache = this.this$0;
            synchronized (cache) {
                if (this.done) {
                    return;
                }
                this.done = true;
                cache.setWriteAbortCount$okhttp(cache.getWriteAbortCount$okhttp() + 1);
                Util.closeQuietly(this.cacheOut);
                try {
                    this.editor.abort();
                } catch (IOException unused) {
                }
            }
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public B body() {
            return this.body;
        }

        public final boolean getDone() {
            return this.done;
        }

        public final void setDone(boolean z7) {
            this.done = z7;
        }
    }

    /* JADX INFO: renamed from: okhttp3.Cache$urls$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<String>, E6.a {
        private boolean canRemove;
        private final Iterator<DiskLruCache.Snapshot> delegate;
        private String nextUrl;

        public AnonymousClass1(Cache cache) {
            this.delegate = cache.getCache$okhttp().snapshots();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextUrl != null) {
                return true;
            }
            this.canRemove = false;
            while (this.delegate.hasNext()) {
                try {
                    DiskLruCache.Snapshot next = this.delegate.next();
                    try {
                        continue;
                        this.nextUrl = r.c(next.getSource(0)).v(Long.MAX_VALUE);
                        q0.k(next, null);
                        return true;
                    } catch (Throwable th) {
                        try {
                            continue;
                            throw th;
                        } catch (Throwable th2) {
                            q0.k(next, th);
                            throw th2;
                        }
                    }
                } catch (IOException unused) {
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.canRemove) {
                throw new IllegalStateException("remove() before next()".toString());
            }
            this.delegate.remove();
        }

        @Override // java.util.Iterator
        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.nextUrl;
            q0.e(str);
            this.nextUrl = null;
            this.canRemove = true;
            return str;
        }
    }

    public Cache(File file, long j8, FileSystem fileSystem) {
        q0.h(file, "directory");
        q0.h(fileSystem, "fileSystem");
        this.cache = new DiskLruCache(fileSystem, file, VERSION, 2, j8, TaskRunner.INSTANCE);
    }

    private final void abortQuietly(DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException unused) {
            }
        }
    }

    public static final String key(HttpUrl httpUrl) {
        return Companion.key(httpUrl);
    }

    /* JADX INFO: renamed from: -deprecated_directory, reason: not valid java name */
    public final File m22deprecated_directory() {
        return this.cache.getDirectory();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.cache.close();
    }

    public final void delete() {
        this.cache.delete();
    }

    public final File directory() {
        return this.cache.getDirectory();
    }

    public final void evictAll() {
        this.cache.evictAll();
    }

    @Override // java.io.Flushable
    public void flush() {
        this.cache.flush();
    }

    public final Response get$okhttp(Request request) {
        q0.h(request, "request");
        try {
            DiskLruCache.Snapshot snapshot = this.cache.get(Companion.key(request.url()));
            if (snapshot == null) {
                return null;
            }
            try {
                Entry entry = new Entry(snapshot.getSource(0));
                Response response = entry.response(snapshot);
                if (entry.matches(request, response)) {
                    return response;
                }
                ResponseBody responseBodyBody = response.body();
                if (responseBodyBody != null) {
                    Util.closeQuietly(responseBodyBody);
                }
                return null;
            } catch (IOException unused) {
                Util.closeQuietly(snapshot);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    public final DiskLruCache getCache$okhttp() {
        return this.cache;
    }

    public final int getWriteAbortCount$okhttp() {
        return this.writeAbortCount;
    }

    public final int getWriteSuccessCount$okhttp() {
        return this.writeSuccessCount;
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final void initialize() {
        this.cache.initialize();
    }

    public final boolean isClosed() {
        return this.cache.isClosed();
    }

    public final long maxSize() {
        return this.cache.getMaxSize();
    }

    public final synchronized int networkCount() {
        return this.networkCount;
    }

    public final CacheRequest put$okhttp(Response response) {
        DiskLruCache.Editor editorEdit$default;
        q0.h(response, "response");
        String strMethod = response.request().method();
        if (HttpMethod.INSTANCE.invalidatesCache(response.request().method())) {
            try {
                remove$okhttp(response.request());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!q0.c(strMethod, "GET")) {
            return null;
        }
        Companion companion = Companion;
        if (companion.hasVaryAll(response)) {
            return null;
        }
        Entry entry = new Entry(response);
        try {
            editorEdit$default = DiskLruCache.edit$default(this.cache, companion.key(response.request().url()), 0L, 2, null);
            if (editorEdit$default == null) {
                return null;
            }
            try {
                entry.writeTo(editorEdit$default);
                return new RealCacheRequest(this, editorEdit$default);
            } catch (IOException unused2) {
                abortQuietly(editorEdit$default);
                return null;
            }
        } catch (IOException unused3) {
            editorEdit$default = null;
        }
    }

    public final void remove$okhttp(Request request) {
        q0.h(request, "request");
        this.cache.remove(Companion.key(request.url()));
    }

    public final synchronized int requestCount() {
        return this.requestCount;
    }

    public final void setWriteAbortCount$okhttp(int i8) {
        this.writeAbortCount = i8;
    }

    public final void setWriteSuccessCount$okhttp(int i8) {
        this.writeSuccessCount = i8;
    }

    public final long size() {
        return this.cache.size();
    }

    public final synchronized void trackConditionalCacheHit$okhttp() {
        this.hitCount++;
    }

    public final synchronized void trackResponse$okhttp(CacheStrategy cacheStrategy) {
        try {
            q0.h(cacheStrategy, "cacheStrategy");
            this.requestCount++;
            if (cacheStrategy.getNetworkRequest() != null) {
                this.networkCount++;
            } else if (cacheStrategy.getCacheResponse() != null) {
                this.hitCount++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void update$okhttp(Response response, Response response2) {
        DiskLruCache.Editor editorEdit;
        q0.h(response, "cached");
        q0.h(response2, "network");
        Entry entry = new Entry(response2);
        ResponseBody responseBodyBody = response.body();
        q0.f(responseBodyBody, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        try {
            editorEdit = ((CacheResponseBody) responseBodyBody).getSnapshot().edit();
            if (editorEdit == null) {
                return;
            }
            try {
                entry.writeTo(editorEdit);
                editorEdit.commit();
            } catch (IOException unused) {
                abortQuietly(editorEdit);
            }
        } catch (IOException unused2) {
            editorEdit = null;
        }
    }

    public final Iterator<String> urls() {
        return new AnonymousClass1(this);
    }

    public final synchronized int writeAbortCount() {
        return this.writeAbortCount;
    }

    public final synchronized int writeSuccessCount() {
        return this.writeSuccessCount;
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        private final Set<String> varyFields(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            for (int i8 = 0; i8 < size; i8++) {
                if (k.F0("Vary", headers.name(i8))) {
                    String strValue = headers.value(i8);
                    if (treeSet == null) {
                        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
                        q0.g(comparator, "CASE_INSENSITIVE_ORDER");
                        treeSet = new TreeSet(comparator);
                    }
                    Iterator it = k.S0(strValue, new char[]{','}).iterator();
                    while (it.hasNext()) {
                        treeSet.add(k.X0((String) it.next()).toString());
                    }
                }
            }
            return treeSet == null ? s.f30544G : treeSet;
        }

        public final boolean hasVaryAll(Response response) {
            q0.h(response, "<this>");
            return varyFields(response.headers()).contains("*");
        }

        public final String key(HttpUrl httpUrl) {
            q0.h(httpUrl, "url");
            m mVar = m.f6065J;
            return G.C(httpUrl.toString()).b("MD5").d();
        }

        public final int readInt$okhttp(l lVar) throws IOException {
            q0.h(lVar, "source");
            try {
                long jU = lVar.u();
                String strK = lVar.K();
                if (jU >= 0 && jU <= 2147483647L && strK.length() <= 0) {
                    return (int) jU;
                }
                throw new IOException("expected an int but was \"" + jU + strK + '\"');
            } catch (NumberFormatException e8) {
                throw new IOException(e8.getMessage());
            }
        }

        public final Headers varyHeaders(Response response) {
            q0.h(response, "<this>");
            Response responseNetworkResponse = response.networkResponse();
            q0.e(responseNetworkResponse);
            return varyHeaders(responseNetworkResponse.request().headers(), response.headers());
        }

        public final boolean varyMatches(Response response, Headers headers, Request request) {
            q0.h(response, "cachedResponse");
            q0.h(headers, "cachedRequest");
            q0.h(request, "newRequest");
            Set<String> setVaryFields = varyFields(response.headers());
            if ((setVaryFields instanceof Collection) && setVaryFields.isEmpty()) {
                return true;
            }
            for (String str : setVaryFields) {
                if (!q0.c(headers.values(str), request.headers(str))) {
                    return false;
                }
            }
            return true;
        }

        private final Headers varyHeaders(Headers headers, Headers headers2) {
            Set<String> setVaryFields = varyFields(headers2);
            if (setVaryFields.isEmpty()) {
                return Util.EMPTY_HEADERS;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i8 = 0; i8 < size; i8++) {
                String strName = headers.name(i8);
                if (setVaryFields.contains(strName)) {
                    builder.add(strName, headers.value(i8));
                }
            }
            return builder.build();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(File file, long j8) {
        this(file, j8, FileSystem.SYSTEM);
        q0.h(file, "directory");
    }

    public static final class Entry {
        public static final Companion Companion = new Companion(null);
        private static final String RECEIVED_MILLIS;
        private static final String SENT_MILLIS;
        private final int code;
        private final Handshake handshake;
        private final String message;
        private final Protocol protocol;
        private final long receivedResponseMillis;
        private final String requestMethod;
        private final Headers responseHeaders;
        private final long sentRequestMillis;
        private final HttpUrl url;
        private final Headers varyHeaders;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(e eVar) {
                this();
            }
        }

        static {
            StringBuilder sb = new StringBuilder();
            Platform.Companion companion = Platform.Companion;
            sb.append(companion.get().getPrefix());
            sb.append("-Sent-Millis");
            SENT_MILLIS = sb.toString();
            RECEIVED_MILLIS = companion.get().getPrefix() + "-Received-Millis";
        }

        public Entry(D d6) throws IOException {
            q0.h(d6, "rawSource");
            try {
                x xVarC = r.c(d6);
                String strV = xVarC.v(Long.MAX_VALUE);
                HttpUrl httpUrl = HttpUrl.Companion.parse(strV);
                if (httpUrl == null) {
                    IOException iOException = new IOException("Cache corruption for ".concat(strV));
                    Platform.Companion.get().log("cache corruption", 5, iOException);
                    throw iOException;
                }
                this.url = httpUrl;
                this.requestMethod = xVarC.v(Long.MAX_VALUE);
                Headers.Builder builder = new Headers.Builder();
                int int$okhttp = Cache.Companion.readInt$okhttp(xVarC);
                for (int i8 = 0; i8 < int$okhttp; i8++) {
                    builder.addLenient$okhttp(xVarC.v(Long.MAX_VALUE));
                }
                this.varyHeaders = builder.build();
                StatusLine statusLine = StatusLine.Companion.parse(xVarC.v(Long.MAX_VALUE));
                this.protocol = statusLine.protocol;
                this.code = statusLine.code;
                this.message = statusLine.message;
                Headers.Builder builder2 = new Headers.Builder();
                int int$okhttp2 = Cache.Companion.readInt$okhttp(xVarC);
                for (int i9 = 0; i9 < int$okhttp2; i9++) {
                    builder2.addLenient$okhttp(xVarC.v(Long.MAX_VALUE));
                }
                String str = SENT_MILLIS;
                String str2 = builder2.get(str);
                String str3 = RECEIVED_MILLIS;
                String str4 = builder2.get(str3);
                builder2.removeAll(str);
                builder2.removeAll(str3);
                this.sentRequestMillis = str2 != null ? Long.parseLong(str2) : 0L;
                this.receivedResponseMillis = str4 != null ? Long.parseLong(str4) : 0L;
                this.responseHeaders = builder2.build();
                if (isHttps()) {
                    String strV2 = xVarC.v(Long.MAX_VALUE);
                    if (strV2.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + strV2 + '\"');
                    }
                    this.handshake = Handshake.Companion.get(!xVarC.q() ? TlsVersion.Companion.forJavaName(xVarC.v(Long.MAX_VALUE)) : TlsVersion.SSL_3_0, CipherSuite.Companion.forJavaName(xVarC.v(Long.MAX_VALUE)), readCertificateList(xVarC), readCertificateList(xVarC));
                } else {
                    this.handshake = null;
                }
                q0.k(d6, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    q0.k(d6, th);
                    throw th2;
                }
            }
        }

        private final boolean isHttps() {
            return q0.c(this.url.scheme(), "https");
        }

        private final List<Certificate> readCertificateList(l lVar) throws IOException {
            int int$okhttp = Cache.Companion.readInt$okhttp(lVar);
            if (int$okhttp == -1) {
                return q.f30542G;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(int$okhttp);
                for (int i8 = 0; i8 < int$okhttp; i8++) {
                    String strK = lVar.K();
                    j jVar = new j();
                    m mVar = m.f6065J;
                    m mVarY = G.y(strK);
                    if (mVarY == null) {
                        throw new IOException("Corrupt certificate in cache entry");
                    }
                    jVar.m0(mVarY);
                    arrayList.add(certificateFactory.generateCertificate(jVar.Z()));
                }
                return arrayList;
            } catch (CertificateException e8) {
                throw new IOException(e8.getMessage());
            }
        }

        private final void writeCertList(Q6.k kVar, List<? extends Certificate> list) throws IOException {
            try {
                kVar.V(list.size()).r(10);
                Iterator<? extends Certificate> it = list.iterator();
                while (it.hasNext()) {
                    byte[] encoded = it.next().getEncoded();
                    m mVar = m.f6065J;
                    q0.g(encoded, "bytes");
                    kVar.B(G.I(encoded).a()).r(10);
                }
            } catch (CertificateEncodingException e8) {
                throw new IOException(e8.getMessage());
            }
        }

        public final boolean matches(Request request, Response response) {
            q0.h(request, "request");
            q0.h(response, "response");
            return q0.c(this.url, request.url()) && q0.c(this.requestMethod, request.method()) && Cache.Companion.varyMatches(response, this.varyHeaders, request);
        }

        public final Response response(DiskLruCache.Snapshot snapshot) {
            q0.h(snapshot, "snapshot");
            String str = this.responseHeaders.get("Content-Type");
            String str2 = this.responseHeaders.get("Content-Length");
            return new Response.Builder().request(new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new CacheResponseBody(snapshot, str, str2)).handshake(this.handshake).sentRequestAtMillis(this.sentRequestMillis).receivedResponseAtMillis(this.receivedResponseMillis).build();
        }

        public final void writeTo(DiskLruCache.Editor editor) throws IOException {
            q0.h(editor, "editor");
            w wVarB = r.b(editor.newSink(0));
            try {
                wVarB.B(this.url.toString());
                wVarB.r(10);
                wVarB.B(this.requestMethod);
                wVarB.r(10);
                wVarB.V(this.varyHeaders.size());
                wVarB.r(10);
                int size = this.varyHeaders.size();
                for (int i8 = 0; i8 < size; i8++) {
                    wVarB.B(this.varyHeaders.name(i8));
                    wVarB.B(": ");
                    wVarB.B(this.varyHeaders.value(i8));
                    wVarB.r(10);
                }
                wVarB.B(new StatusLine(this.protocol, this.code, this.message).toString());
                wVarB.r(10);
                wVarB.V(this.responseHeaders.size() + 2);
                wVarB.r(10);
                int size2 = this.responseHeaders.size();
                for (int i9 = 0; i9 < size2; i9++) {
                    wVarB.B(this.responseHeaders.name(i9));
                    wVarB.B(": ");
                    wVarB.B(this.responseHeaders.value(i9));
                    wVarB.r(10);
                }
                wVarB.B(SENT_MILLIS);
                wVarB.B(": ");
                wVarB.V(this.sentRequestMillis);
                wVarB.r(10);
                wVarB.B(RECEIVED_MILLIS);
                wVarB.B(": ");
                wVarB.V(this.receivedResponseMillis);
                wVarB.r(10);
                if (isHttps()) {
                    wVarB.r(10);
                    Handshake handshake = this.handshake;
                    q0.e(handshake);
                    wVarB.B(handshake.cipherSuite().javaName());
                    wVarB.r(10);
                    writeCertList(wVarB, this.handshake.peerCertificates());
                    writeCertList(wVarB, this.handshake.localCertificates());
                    wVarB.B(this.handshake.tlsVersion().javaName());
                    wVarB.r(10);
                }
                q0.k(wVarB, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    q0.k(wVarB, th);
                    throw th2;
                }
            }
        }

        public Entry(Response response) {
            q0.h(response, "response");
            this.url = response.request().url();
            this.varyHeaders = Cache.Companion.varyHeaders(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
            this.sentRequestMillis = response.sentRequestAtMillis();
            this.receivedResponseMillis = response.receivedResponseAtMillis();
        }
    }
}
