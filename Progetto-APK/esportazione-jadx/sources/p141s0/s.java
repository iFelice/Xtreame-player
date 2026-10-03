package p141s0;

import A4.e;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import p000a.r;
import p096m2.l;
import p117p0.M;
import p117p0.x;
import p148t.a;
import z4.i0;

/* JADX INFO: loaded from: classes.dex */
public final class s extends AbstractC3178c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f29994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f29995f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f29996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f29997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f29998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final l f29999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final l f30000k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final p190y4.l f30001l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f30002m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public C3188m f30003n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public HttpURLConnection f30004o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public InputStream f30005p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f30006q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f30007r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f30008s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f30009t;

    public s(String str, int i8, int i9, boolean z7, l lVar) {
        super(true);
        this.f29998i = str;
        this.f29996g = i8;
        this.f29997h = i9;
        this.f29994e = z7;
        this.f29995f = false;
        this.f29999j = lVar;
        this.f30001l = null;
        this.f30000k = new l(3);
        this.f30002m = false;
    }

    public final void A(long j8) throws IOException {
        if (j8 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j8 > 0) {
            int iMin = (int) Math.min(j8, 4096);
            InputStream inputStream = this.f30005p;
            String str = M.f28050a;
            int i8 = inputStream.read(bArr, 0, iMin);
            if (Thread.currentThread().isInterrupted()) {
                throw new y(new InterruptedIOException(), 2000, 1);
            }
            if (i8 == -1) {
                throw new y();
            }
            j8 -= (long) i8;
            s(i8);
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws y {
        this.f30003n = c3188m;
        long j8 = 0;
        this.f30009t = 0L;
        this.f30008s = 0L;
        u();
        try {
            HttpURLConnection httpURLConnectionZ = z(c3188m);
            this.f30004o = httpURLConnectionZ;
            this.f30007r = httpURLConnectionZ.getResponseCode();
            httpURLConnectionZ.getResponseMessage();
            int i8 = this.f30007r;
            long j9 = c3188m.f29968f;
            long j10 = c3188m.f29969g;
            if (i8 < 200 || i8 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionZ.getHeaderFields();
                if (this.f30007r == 416 && j9 == I.d(httpURLConnectionZ.getHeaderField("Content-Range"))) {
                    this.f30006q = true;
                    v(c3188m);
                    if (j10 != -1) {
                        return j10;
                    }
                    return 0L;
                }
                InputStream errorStream = httpURLConnectionZ.getErrorStream();
                try {
                    if (errorStream != null) {
                        e.b(errorStream);
                    } else {
                        String str = M.f28050a;
                    }
                } catch (IOException unused) {
                    String str2 = M.f28050a;
                }
                w();
                throw new A(this.f30007r, this.f30007r == 416 ? new C3185j(2008) : null, headerFields);
            }
            String contentType = httpURLConnectionZ.getContentType();
            p190y4.l lVar = this.f30001l;
            if (lVar != null && !lVar.apply(contentType)) {
                w();
                throw new z(contentType);
            }
            if (this.f30007r == 200 && j9 != 0) {
                j8 = j9;
            }
            boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(httpURLConnectionZ.getHeaderField("Content-Encoding"));
            if (zEqualsIgnoreCase || j10 != -1) {
                this.f30008s = j10;
            } else {
                long jB = I.b(httpURLConnectionZ.getHeaderField("Content-Length"), httpURLConnectionZ.getHeaderField("Content-Range"));
                this.f30008s = jB != -1 ? jB - j8 : -1L;
            }
            try {
                this.f30005p = httpURLConnectionZ.getInputStream();
                if (zEqualsIgnoreCase) {
                    this.f30005p = new GZIPInputStream(this.f30005p);
                }
                this.f30006q = true;
                v(c3188m);
                try {
                    A(j8);
                    return this.f30008s;
                } catch (IOException e8) {
                    w();
                    if (e8 instanceof y) {
                        throw ((y) e8);
                    }
                    throw new y(e8, 2000, 1);
                }
            } catch (IOException e9) {
                w();
                throw new y(e9, 2000, 1);
            }
        } catch (IOException e10) {
            w();
            throw y.b(e10, 1);
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        try {
            InputStream inputStream = this.f30005p;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e8) {
                    String str = M.f28050a;
                    throw new y(e8, 2000, 3);
                }
            }
            this.f30005p = null;
            w();
            if (this.f30006q) {
                this.f30006q = false;
                t();
            }
            this.f30004o = null;
            this.f30003n = null;
        } catch (Throwable th) {
            this.f30005p = null;
            w();
            if (this.f30006q) {
                this.f30006q = false;
                t();
            }
            this.f30004o = null;
            this.f30003n = null;
            throw th;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.f30004o;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        C3188m c3188m = this.f30003n;
        if (c3188m != null) {
            return c3188m.f29963a;
        }
        return null;
    }

    @Override // p141s0.AbstractC3178c, p141s0.InterfaceC3184i
    public final Map k() {
        HttpURLConnection httpURLConnection = this.f30004o;
        return httpURLConnection == null ? i0.f31862M : new r(httpURLConnection.getHeaderFields());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0028  */
    /* JADX WARN: Code duplicated, block: B:13:0x0029 A[Catch: IOException -> 0x0033, TRY_LEAVE, TryCatch #0 {IOException -> 0x0033, blocks: (B:4:0x0004, B:6:0x000d, B:9:0x0018, B:10:0x001e, B:13:0x0029), top: B:18:0x0004 }] */
    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws y {
        int i10;
        if (i9 == 0) {
            return 0;
        }
        try {
            long j8 = this.f30008s;
            if (j8 != -1) {
                long j9 = j8 - this.f30009t;
                if (j9 != 0) {
                    i9 = (int) Math.min(i9, j9);
                    InputStream inputStream = this.f30005p;
                    String str = M.f28050a;
                    i10 = inputStream.read(bArr, i8, i9);
                    if (i10 == -1) {
                        this.f30009t += (long) i10;
                        s(i10);
                        return i10;
                    }
                }
            } else {
                InputStream inputStream2 = this.f30005p;
                String str2 = M.f28050a;
                i10 = inputStream2.read(bArr, i8, i9);
                if (i10 == -1) {
                    this.f30009t += (long) i10;
                    s(i10);
                    return i10;
                }
            }
            return -1;
        } catch (IOException e8) {
            String str3 = M.f28050a;
            throw y.b(e8, 2);
        }
    }

    public final void w() {
        HttpURLConnection httpURLConnection = this.f30004o;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e8) {
                x.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e8);
            }
        }
    }

    public final URL x(URL url, String str) throws y {
        if (str == null) {
            throw new y("Null location redirect", 2001);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new y(a.c("Unsupported protocol redirect: ", protocol), 2001);
            }
            if (this.f29994e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            if (this.f29995f) {
                try {
                    return new URL(url2.toString().replaceFirst(protocol, url.getProtocol()));
                } catch (MalformedURLException e8) {
                    throw new y(e8, 2001, 1);
                }
            }
            throw new y("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", 2001);
        } catch (MalformedURLException e9) {
            throw new y(e9, 2001, 1);
        }
    }

    public final HttpURLConnection y(URL url, int i8, byte[] bArr, long j8, long j9, boolean z7, boolean z8, Map map) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f29996g);
        httpURLConnection.setReadTimeout(this.f29997h);
        HashMap map2 = new HashMap();
        l lVar = this.f29999j;
        if (lVar != null) {
            map2.putAll(lVar.k());
        }
        map2.putAll(this.f30000k.k());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = I.a(j8, j9);
        if (strA != null) {
            httpURLConnection.setRequestProperty("Range", strA);
        }
        String str = this.f29998i;
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", z7 ? "gzip" : "identity");
        httpURLConnection.setInstanceFollowRedirects(z8);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(C3188m.b(i8));
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    public final HttpURLConnection z(C3188m c3188m) throws IOException {
        C3188m c3188m2 = c3188m;
        URL url = new URL(c3188m2.f29963a.toString());
        int i8 = 0;
        boolean z7 = (c3188m2.f29971i & 1) == 1;
        boolean z8 = this.f29994e;
        boolean z9 = this.f30002m;
        int i9 = c3188m2.f29965c;
        byte[] bArr = c3188m2.f29966d;
        long j8 = c3188m2.f29968f;
        long j9 = c3188m2.f29969g;
        if (!z8 && !this.f29995f && !z9) {
            return y(url, i9, bArr, j8, j9, z7, true, c3188m2.f29967e);
        }
        URL urlX = url;
        byte[] bArr2 = bArr;
        int i10 = i9;
        while (true) {
            int i11 = i8 + 1;
            if (i8 > 20) {
                throw new y(new NoRouteToHostException(r.f("Too many redirects: ", i11)), 2001, 1);
            }
            Map map = c3188m2.f29967e;
            int i12 = i10;
            long j10 = j9;
            URL url2 = urlX;
            long j11 = j8;
            HttpURLConnection httpURLConnectionY = y(urlX, i10, bArr2, j8, j9, z7, false, map);
            int responseCode = httpURLConnectionY.getResponseCode();
            String headerField = httpURLConnectionY.getHeaderField("Location");
            if ((i12 == 1 || i12 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionY.disconnect();
                urlX = x(url2, headerField);
                i10 = i12;
            } else {
                if (i12 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionY;
                }
                httpURLConnectionY.disconnect();
                if (z9 && responseCode == 302) {
                    i10 = i12;
                } else {
                    bArr2 = null;
                    i10 = 1;
                }
                urlX = x(url2, headerField);
            }
            c3188m2 = c3188m;
            i8 = i11;
            j9 = j10;
            j8 = j11;
        }
    }
}
