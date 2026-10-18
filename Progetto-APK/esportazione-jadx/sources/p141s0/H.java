package p141s0;

import L1.d;
import android.net.Uri;
import android.net.http.HttpEngine;
import android.net.http.UrlRequest;
import android.net.http.UrlResponseInfo;
import android.os.SystemClock;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import p096m2.l;
import p117p0.C3171i;
import p117p0.G;
import p117p0.InterfaceC3168f;
import p117p0.M;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class H extends AbstractC3178c {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public volatile long f29876A;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HttpEngine f29877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f29878f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f29879g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f29880h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f29881i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f29882j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f29883k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f29884l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final l f29885m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final l f29886n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C3171i f29887o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final G f29888p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final p190y4.l f29889q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f29890r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f29891s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f29892t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public C3188m f29893u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public G f29894v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ByteBuffer f29895w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public UrlResponseInfo f29896x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public IOException f29897y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f29898z;

    public H(HttpEngine httpEngine, Executor executor, int i8, int i9, int i10, l lVar) {
        super(true);
        httpEngine.getClass();
        this.f29877e = d.k(httpEngine);
        executor.getClass();
        this.f29878f = executor;
        this.f29879g = i8;
        this.f29880h = i9;
        this.f29881i = i10;
        this.f29882j = false;
        this.f29883k = false;
        this.f29884l = null;
        this.f29885m = lVar;
        this.f29889q = null;
        this.f29890r = false;
        this.f29888p = InterfaceC3168f.f28080a;
        this.f29886n = new l(3);
        this.f29887o = new C3171i();
    }

    public static String x(String str, Map map) {
        List list = (List) map.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (String) list.get(0);
    }

    public final byte[] A() throws y {
        byte[] bArrCopyOf = M.f28051b;
        ByteBuffer byteBufferY = y();
        while (!this.f29898z) {
            this.f29887o.e();
            byteBufferY.clear();
            z(byteBufferY);
            byteBufferY.flip();
            if (byteBufferY.remaining() > 0) {
                int length = bArrCopyOf.length;
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, byteBufferY.remaining() + bArrCopyOf.length);
                byteBufferY.get(bArrCopyOf, length, byteBufferY.remaining());
            }
        }
        return bArrCopyOf;
    }

    /* JADX WARN: Code duplicated, block: B:117:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x018d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x0187 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:61:0x0145  */
    /* JADX WARN: Code duplicated, block: B:66:0x0162 A[Catch: IOException -> 0x0185, TryCatch #2 {IOException -> 0x0185, blocks: (B:64:0x014d, B:66:0x0162, B:68:0x0166, B:71:0x0187, B:72:0x018c, B:73:0x018d, B:74:0x0192), top: B:117:0x014d }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0166 A[Catch: IOException -> 0x0185, LOOP:2: B:62:0x0149->B:68:0x0166, LOOP_END, TryCatch #2 {IOException -> 0x0185, blocks: (B:64:0x014d, B:66:0x0162, B:68:0x0166, B:71:0x0187, B:72:0x018c, B:73:0x018d, B:74:0x0192), top: B:117:0x014d }] */
    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws y {
        long j8;
        ByteBuffer byteBufferY;
        String strX;
        c3188m.getClass();
        H1.i(!this.f29891s);
        this.f29887o.e();
        this.f29888p.getClass();
        this.f29876A = SystemClock.elapsedRealtime() + ((long) this.f29880h);
        this.f29893u = c3188m;
        try {
            G gW = w(c3188m);
            this.f29894v = gW;
            gW.f29874a.start();
            u();
            try {
                this.f29888p.getClass();
                boolean zB = false;
                for (long jElapsedRealtime = SystemClock.elapsedRealtime(); !zB && jElapsedRealtime < this.f29876A; jElapsedRealtime = SystemClock.elapsedRealtime()) {
                    zB = this.f29887o.b((this.f29876A - jElapsedRealtime) + 5);
                    this.f29888p.getClass();
                }
                IOException iOException = this.f29897y;
                if (iOException != null) {
                    String message = iOException.getMessage();
                    if (message != null && k.h0(message).contains("err_cleartext_not_permitted")) {
                        throw new w(iOException);
                    }
                    C3171i c3171i = new C3171i();
                    gW.f29874a.getStatus(new F(new int[1], c3171i));
                    c3171i.a();
                    throw new D(iOException, 2001, 1);
                }
                if (!zB) {
                    SocketTimeoutException socketTimeoutException = new SocketTimeoutException();
                    C3171i c3171i2 = new C3171i();
                    gW.f29874a.getStatus(new F(new int[1], c3171i2));
                    c3171i2.a();
                    throw new D(socketTimeoutException, 2002, 1);
                }
                UrlResponseInfo urlResponseInfo = this.f29896x;
                urlResponseInfo.getClass();
                UrlResponseInfo urlResponseInfoO = d.o(urlResponseInfo);
                int httpStatusCode = urlResponseInfoO.getHttpStatusCode();
                Map asMap = urlResponseInfoO.getHeaders().getAsMap();
                if (httpStatusCode < 200 || httpStatusCode > 299) {
                    if (httpStatusCode == 416) {
                        if (c3188m.f29968f == I.d(x("Content-Range", asMap))) {
                            this.f29891s = true;
                            v(c3188m);
                            long j9 = c3188m.f29969g;
                            if (j9 != -1) {
                                return j9;
                            }
                            return 0L;
                        }
                    }
                    try {
                        A();
                    } catch (IOException unused) {
                        String str = M.f28050a;
                    }
                    C3185j c3185j = httpStatusCode == 416 ? new C3185j(2008) : null;
                    urlResponseInfoO.getHttpStatusText();
                    throw new A(httpStatusCode, c3185j, asMap);
                }
                p190y4.l lVar = this.f29889q;
                if (lVar != null && (strX = x("Content-Type", asMap)) != null && !lVar.apply(strX)) {
                    throw new z(strX);
                }
                if (httpStatusCode == 200) {
                    j8 = c3188m.f29968f;
                    if (j8 == 0) {
                        j8 = 0;
                    }
                } else {
                    j8 = 0;
                }
                Iterator it = urlResponseInfoO.getHeaders().getAsList().iterator();
                while (true) {
                    if (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        if (((String) entry.getKey()).equalsIgnoreCase("Content-Encoding")) {
                            if (!((String) entry.getValue()).equalsIgnoreCase("identity")) {
                                this.f29892t = c3188m.f29969g;
                            }
                            this.f29891s = true;
                            v(c3188m);
                            if (j8 != 0) {
                                byteBufferY = y();
                                while (j8 > 0) {
                                    try {
                                        this.f29887o.e();
                                        byteBufferY.clear();
                                        z(byteBufferY);
                                        if (!Thread.currentThread().isInterrupted()) {
                                            throw new InterruptedIOException();
                                        }
                                        if (!this.f29898z) {
                                            throw new D();
                                        }
                                        byteBufferY.flip();
                                        H1.i(byteBufferY.hasRemaining());
                                        int iMin = (int) Math.min(byteBufferY.remaining(), j8);
                                        byteBufferY.position(byteBufferY.position() + iMin);
                                        j8 -= (long) iMin;
                                    } catch (IOException e8) {
                                        if (e8 instanceof y) {
                                            throw ((y) e8);
                                        }
                                        throw new D(e8, e8 instanceof SocketTimeoutException ? 2002 : 2001, 1);
                                    }
                                }
                            }
                            return this.f29892t;
                        }
                    }
                    long j10 = c3188m.f29969g;
                    if (j10 != -1) {
                        this.f29892t = j10;
                    } else {
                        long jB = I.b(x("Content-Length", asMap), x("Content-Range", asMap));
                        this.f29892t = jB != -1 ? jB - j8 : -1L;
                    }
                    this.f29891s = true;
                    v(c3188m);
                    if (j8 != 0) {
                        byteBufferY = y();
                        while (j8 > 0) {
                            this.f29887o.e();
                            byteBufferY.clear();
                            z(byteBufferY);
                            if (!Thread.currentThread().isInterrupted()) {
                                throw new InterruptedIOException();
                            }
                            if (!this.f29898z) {
                                throw new D();
                            }
                            byteBufferY.flip();
                            H1.i(byteBufferY.hasRemaining());
                            int iMin2 = (int) Math.min(byteBufferY.remaining(), j8);
                            byteBufferY.position(byteBufferY.position() + iMin2);
                            j8 -= (long) iMin2;
                        }
                    }
                    return this.f29892t;
                }
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
                throw new D(new InterruptedIOException(), 1004, 1);
            }
        } catch (IOException e9) {
            if (e9 instanceof y) {
                throw ((y) e9);
            }
            throw new D(e9, 2000, 1);
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final synchronized void close() {
        try {
            G g8 = this.f29894v;
            if (g8 != null) {
                g8.f29875b.f29870a = true;
                g8.f29874a.cancel();
                this.f29894v = null;
            }
            ByteBuffer byteBuffer = this.f29895w;
            if (byteBuffer != null) {
                byteBuffer.limit(0);
            }
            this.f29893u = null;
            this.f29896x = null;
            this.f29897y = null;
            this.f29898z = false;
            if (this.f29891s) {
                this.f29891s = false;
                t();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        UrlResponseInfo urlResponseInfo = this.f29896x;
        if (urlResponseInfo != null) {
            return Uri.parse(urlResponseInfo.getUrl());
        }
        C3188m c3188m = this.f29893u;
        if (c3188m != null) {
            return c3188m.f29963a;
        }
        return null;
    }

    @Override // p141s0.AbstractC3178c, p141s0.InterfaceC3184i
    public final Map k() {
        UrlResponseInfo urlResponseInfo = this.f29896x;
        return urlResponseInfo == null ? Collections.emptyMap() : urlResponseInfo.getHeaders().getAsMap();
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws y {
        H1.i(this.f29891s);
        if (i9 == 0) {
            return 0;
        }
        if (this.f29892t == 0) {
            return -1;
        }
        ByteBuffer byteBufferY = y();
        if (!byteBufferY.hasRemaining()) {
            this.f29887o.e();
            byteBufferY.clear();
            String str = M.f28050a;
            z(byteBufferY);
            if (this.f29898z) {
                this.f29892t = 0L;
                return -1;
            }
            byteBufferY.flip();
            H1.i(byteBufferY.hasRemaining());
        }
        long[] jArr = new long[3];
        long j8 = this.f29892t;
        if (j8 == -1) {
            j8 = Long.MAX_VALUE;
        }
        jArr[0] = j8;
        jArr[1] = byteBufferY.remaining();
        jArr[2] = i9;
        int iB = (int) q0.B(jArr);
        byteBufferY.get(bArr, i8, iB);
        long j9 = this.f29892t;
        if (j9 != -1) {
            this.f29892t = j9 - ((long) iB);
        }
        s(iB);
        return iB;
    }

    public final G w(C3188m c3188m) throws D {
        E e8 = new E(this);
        String string = c3188m.f29963a.toString();
        HttpEngine httpEngine = this.f29877e;
        Executor executor = this.f29878f;
        UrlRequest.Builder directExecutorAllowed = httpEngine.newUrlRequestBuilder(string, executor, e8).setPriority(this.f29879g).setDirectExecutorAllowed(true);
        HashMap map = new HashMap();
        l lVar = this.f29885m;
        if (lVar != null) {
            map.putAll(lVar.k());
        }
        map.putAll(this.f29886n.k());
        map.putAll(c3188m.f29967e);
        for (Map.Entry entry : map.entrySet()) {
            directExecutorAllowed.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        byte[] bArr = c3188m.f29966d;
        if (bArr != null && !map.containsKey("Content-Type")) {
            throw new D("HTTP request with non-empty body must set Content-Type", 1004);
        }
        String strA = I.a(c3188m.f29968f, c3188m.f29969g);
        if (strA != null) {
            directExecutorAllowed.addHeader("Range", strA);
        }
        String str = this.f29884l;
        if (str != null) {
            directExecutorAllowed.addHeader("User-Agent", str);
        }
        directExecutorAllowed.setHttpMethod(C3188m.b(c3188m.f29965c));
        if (bArr != null) {
            directExecutorAllowed.setUploadDataProvider(new C3179d(bArr), executor);
        }
        return new G(directExecutorAllowed.build(), e8);
    }

    public final ByteBuffer y() {
        if (this.f29895w == null) {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(32768);
            this.f29895w = byteBufferAllocateDirect;
            byteBufferAllocateDirect.limit(0);
        }
        return this.f29895w;
    }

    public final void z(ByteBuffer byteBuffer) throws y {
        G g8 = this.f29894v;
        String str = M.f28050a;
        g8.f29874a.read(byteBuffer);
        try {
            if (!this.f29887o.b(this.f29881i)) {
                throw new SocketTimeoutException();
            }
        } catch (InterruptedException unused) {
            if (byteBuffer == this.f29895w) {
                this.f29895w = null;
            }
            Thread.currentThread().interrupt();
            this.f29897y = new InterruptedIOException();
        } catch (SocketTimeoutException e8) {
            if (byteBuffer == this.f29895w) {
                this.f29895w = null;
            }
            this.f29897y = new y(e8, 2002, 2);
        }
        IOException iOException = this.f29897y;
        if (iOException != null) {
            if (!(iOException instanceof y)) {
                throw y.b(iOException, 2);
            }
            throw ((y) iOException);
        }
    }
}
