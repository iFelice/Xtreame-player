package p157u0;

import android.net.Uri;
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
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;
import p094m0.J;
import p096m2.l;
import p117p0.C3171i;
import p117p0.G;
import p117p0.InterfaceC3168f;
import p117p0.M;
import p141s0.A;
import p141s0.AbstractC3178c;
import p141s0.C3185j;
import p141s0.C3188m;
import p141s0.D;
import p141s0.I;
import p141s0.w;
import p141s0.y;
import p141s0.z;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class e extends AbstractC3178c {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public IOException f30387A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f30388B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public volatile long f30389C;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CronetEngine f30390e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f30391f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f30392g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f30393h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f30394i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f30395j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f30396k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f30397l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final l f30398m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final l f30399n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C3171i f30400o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final G f30401p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f30402q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final p190y4.l f30403r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f30404s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f30405t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f30406u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public UrlRequest f30407v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public d f30408w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public C3188m f30409x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ByteBuffer f30410y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public UrlResponseInfo f30411z;

    static {
        J.a("media3.datasource.cronet");
    }

    public e(CronetEngine cronetEngine, Executor executor, int i8, int i9, int i10, l lVar, int i11) {
        super(true);
        cronetEngine.getClass();
        this.f30390e = cronetEngine;
        executor.getClass();
        this.f30391f = executor;
        this.f30392g = i8;
        this.f30393h = i9;
        this.f30394i = i10;
        this.f30395j = false;
        this.f30396k = false;
        this.f30397l = null;
        this.f30398m = lVar;
        this.f30403r = null;
        this.f30404s = false;
        this.f30401p = InterfaceC3168f.f28080a;
        this.f30402q = i11;
        this.f30399n = new l(3);
        this.f30400o = new C3171i();
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
        while (!this.f30388B) {
            this.f30400o.e();
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

    /* JADX WARN: Code duplicated, block: B:117:0x013c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x017c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:61:0x0134  */
    /* JADX WARN: Code duplicated, block: B:66:0x0151 A[Catch: IOException -> 0x0174, TryCatch #2 {IOException -> 0x0174, blocks: (B:64:0x013c, B:66:0x0151, B:68:0x0155, B:71:0x0176, B:72:0x017b, B:73:0x017c, B:74:0x0181), top: B:117:0x013c }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0155 A[Catch: IOException -> 0x0174, LOOP:2: B:62:0x0138->B:68:0x0155, LOOP_END, TryCatch #2 {IOException -> 0x0174, blocks: (B:64:0x013c, B:66:0x0151, B:68:0x0155, B:71:0x0176, B:72:0x017b, B:73:0x017c, B:74:0x0181), top: B:117:0x013c }] */
    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws y {
        long j8;
        ByteBuffer byteBufferY;
        String strX;
        c3188m.getClass();
        H1.i(!this.f30405t);
        this.f30400o.e();
        this.f30401p.getClass();
        this.f30389C = SystemClock.elapsedRealtime() + ((long) this.f30393h);
        this.f30409x = c3188m;
        try {
            w(c3188m);
            UrlRequest urlRequest = this.f30407v;
            urlRequest.start();
            u();
            try {
                this.f30401p.getClass();
                boolean zB = false;
                for (long jElapsedRealtime = SystemClock.elapsedRealtime(); !zB && jElapsedRealtime < this.f30389C; jElapsedRealtime = SystemClock.elapsedRealtime()) {
                    zB = this.f30400o.b((this.f30389C - jElapsedRealtime) + 5);
                    this.f30401p.getClass();
                }
                IOException iOException = this.f30387A;
                if (iOException != null) {
                    String message = iOException.getMessage();
                    if (message != null && k.h0(message).contains("err_cleartext_not_permitted")) {
                        throw new w(iOException);
                    }
                    C3171i c3171i = new C3171i();
                    urlRequest.getStatus(new b(new int[1], c3171i));
                    c3171i.a();
                    throw new D(iOException, 2001, 1);
                }
                if (!zB) {
                    SocketTimeoutException socketTimeoutException = new SocketTimeoutException();
                    C3171i c3171i2 = new C3171i();
                    urlRequest.getStatus(new b(new int[1], c3171i2));
                    c3171i2.a();
                    throw new D(socketTimeoutException, 2002, 1);
                }
                UrlResponseInfo urlResponseInfo = this.f30411z;
                urlResponseInfo.getClass();
                int httpStatusCode = urlResponseInfo.getHttpStatusCode();
                Map<String, List<String>> allHeaders = urlResponseInfo.getAllHeaders();
                if (httpStatusCode < 200 || httpStatusCode > 299) {
                    if (httpStatusCode == 416) {
                        if (c3188m.f29968f == I.d(x("Content-Range", allHeaders))) {
                            this.f30405t = true;
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
                    urlResponseInfo.getHttpStatusText();
                    throw new A(httpStatusCode, c3185j, allHeaders);
                }
                p190y4.l lVar = this.f30403r;
                if (lVar != null && (strX = x("Content-Type", allHeaders)) != null && !lVar.apply(strX)) {
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
                Iterator<Map.Entry<String, String>> it = urlResponseInfo.getAllHeadersAsList().iterator();
                while (true) {
                    if (it.hasNext()) {
                        Map.Entry<String, String> next = it.next();
                        if (next.getKey().equalsIgnoreCase("Content-Encoding")) {
                            if (!next.getValue().equalsIgnoreCase("identity")) {
                                this.f30406u = c3188m.f29969g;
                            }
                            this.f30405t = true;
                            v(c3188m);
                            if (j8 != 0) {
                                byteBufferY = y();
                                while (j8 > 0) {
                                    try {
                                        this.f30400o.e();
                                        byteBufferY.clear();
                                        z(byteBufferY);
                                        if (!Thread.currentThread().isInterrupted()) {
                                            throw new InterruptedIOException();
                                        }
                                        if (!this.f30388B) {
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
                            return this.f30406u;
                        }
                    }
                    long j10 = c3188m.f29969g;
                    if (j10 != -1) {
                        this.f30406u = j10;
                    } else {
                        long jB = I.b(x("Content-Length", allHeaders), x("Content-Range", allHeaders));
                        this.f30406u = jB != -1 ? jB - j8 : -1L;
                    }
                    this.f30405t = true;
                    v(c3188m);
                    if (j8 != 0) {
                        byteBufferY = y();
                        while (j8 > 0) {
                            this.f30400o.e();
                            byteBufferY.clear();
                            z(byteBufferY);
                            if (!Thread.currentThread().isInterrupted()) {
                                throw new InterruptedIOException();
                            }
                            if (!this.f30388B) {
                                throw new D();
                            }
                            byteBufferY.flip();
                            H1.i(byteBufferY.hasRemaining());
                            int iMin2 = (int) Math.min(byteBufferY.remaining(), j8);
                            byteBufferY.position(byteBufferY.position() + iMin2);
                            j8 -= (long) iMin2;
                        }
                    }
                    return this.f30406u;
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
            UrlRequest urlRequest = this.f30407v;
            if (urlRequest != null) {
                urlRequest.cancel();
                this.f30407v = null;
            }
            d dVar = this.f30408w;
            if (dVar != null) {
                dVar.f30385a = true;
                this.f30408w = null;
            }
            ByteBuffer byteBuffer = this.f30410y;
            if (byteBuffer != null) {
                byteBuffer.limit(0);
            }
            this.f30409x = null;
            this.f30411z = null;
            this.f30387A = null;
            this.f30388B = false;
            if (this.f30405t) {
                this.f30405t = false;
                t();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        UrlResponseInfo urlResponseInfo = this.f30411z;
        if (urlResponseInfo != null) {
            return Uri.parse(urlResponseInfo.getUrl());
        }
        C3188m c3188m = this.f30409x;
        if (c3188m != null) {
            return c3188m.f29963a;
        }
        return null;
    }

    @Override // p141s0.AbstractC3178c, p141s0.InterfaceC3184i
    public final Map k() {
        UrlResponseInfo urlResponseInfo = this.f30411z;
        return urlResponseInfo == null ? Collections.emptyMap() : urlResponseInfo.getAllHeaders();
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws y {
        H1.i(this.f30405t);
        if (i9 == 0) {
            return 0;
        }
        if (this.f30406u == 0) {
            return -1;
        }
        ByteBuffer byteBufferY = y();
        if (!byteBufferY.hasRemaining()) {
            this.f30400o.e();
            byteBufferY.clear();
            String str = M.f28050a;
            z(byteBufferY);
            if (this.f30388B) {
                this.f30406u = 0L;
                return -1;
            }
            byteBufferY.flip();
            H1.i(byteBufferY.hasRemaining());
        }
        long[] jArr = new long[3];
        long j8 = this.f30406u;
        if (j8 == -1) {
            j8 = Long.MAX_VALUE;
        }
        jArr[0] = j8;
        jArr[1] = byteBufferY.remaining();
        jArr[2] = i9;
        int iB = (int) q0.B(jArr);
        byteBufferY.get(bArr, i8, iB);
        long j9 = this.f30406u;
        if (j9 != -1) {
            this.f30406u = j9 - ((long) iB);
        }
        s(iB);
        return iB;
    }

    public final void w(C3188m c3188m) throws D {
        this.f30408w = new d(this);
        String string = c3188m.f29963a.toString();
        d dVar = this.f30408w;
        CronetEngine cronetEngine = this.f30390e;
        Executor executor = this.f30391f;
        UrlRequest.Builder builderAllowDirectExecutor = cronetEngine.newUrlRequestBuilder(string, dVar, executor).setPriority(this.f30392g).allowDirectExecutor();
        HashMap map = new HashMap();
        l lVar = this.f30398m;
        if (lVar != null) {
            map.putAll(lVar.k());
        }
        map.putAll(this.f30399n.k());
        map.putAll(c3188m.f29967e);
        for (Map.Entry entry : map.entrySet()) {
            builderAllowDirectExecutor.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        byte[] bArr = c3188m.f29966d;
        if (bArr != null && !map.containsKey("Content-Type")) {
            throw new D("HTTP request with non-empty body must set Content-Type", 1004);
        }
        String strA = I.a(c3188m.f29968f, c3188m.f29969g);
        if (strA != null) {
            builderAllowDirectExecutor.addHeader("Range", strA);
        }
        String str = this.f30397l;
        if (str != null) {
            builderAllowDirectExecutor.addHeader("User-Agent", str);
        }
        builderAllowDirectExecutor.setHttpMethod(C3188m.b(c3188m.f29965c));
        if (bArr != null) {
            builderAllowDirectExecutor.setUploadDataProvider(new a(bArr), executor);
        }
        this.f30407v = builderAllowDirectExecutor.build();
    }

    public final ByteBuffer y() {
        if (this.f30410y == null) {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.f30402q);
            this.f30410y = byteBufferAllocateDirect;
            byteBufferAllocateDirect.limit(0);
        }
        return this.f30410y;
    }

    public final void z(ByteBuffer byteBuffer) throws y {
        UrlRequest urlRequest = this.f30407v;
        String str = M.f28050a;
        urlRequest.read(byteBuffer);
        try {
            if (!this.f30400o.b(this.f30394i)) {
                throw new SocketTimeoutException();
            }
        } catch (InterruptedException unused) {
            if (byteBuffer == this.f30410y) {
                this.f30410y = null;
            }
            Thread.currentThread().interrupt();
            this.f30387A = new InterruptedIOException();
        } catch (SocketTimeoutException e8) {
            if (byteBuffer == this.f30410y) {
                this.f30410y = null;
            }
            this.f30387A = new y(e8, 2002, 2);
        }
        IOException iOException = this.f30387A;
        if (iOException != null) {
            if (!(iOException instanceof y)) {
                throw y.b(iOException, 2);
            }
            throw ((y) iOException);
        }
    }
}
