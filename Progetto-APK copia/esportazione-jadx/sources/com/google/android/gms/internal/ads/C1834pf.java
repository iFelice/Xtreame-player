package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1834pf extends Nz implements DH {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final Pattern f20451t = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final AtomicReference f20452u = new AtomicReference();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1782of f20453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f20454f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f20455g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f20456h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final WD f20457i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public HttpURLConnection f20458j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InputStream f20459k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f20460l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f20461m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f20462n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f20463o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f20464p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f20465q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f20466r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final HashSet f20467s;

    public C1834pf(String str, C2145vf c2145vf, int i8, int i9, int i10) {
        super(true);
        this.f20453e = new C1782of(this);
        this.f20467s = new HashSet();
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.f20456h = str;
        this.f20457i = new WD();
        this.f20454f = i8;
        this.f20455g = i9;
        this.f20466r = i10;
        if (c2145vf != null) {
            f(c2145vf);
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0235 A[Catch: IOException -> 0x003b, TryCatch #4 {IOException -> 0x003b, blocks: (B:3:0x000d, B:11:0x0028, B:13:0x0032, B:16:0x003e, B:17:0x0056, B:19:0x005c, B:32:0x00bb, B:34:0x00c4, B:35:0x00cb, B:48:0x00f5, B:101:0x022a, B:103:0x0235, B:105:0x0246, B:108:0x024f, B:109:0x025e, B:111:0x0265, B:112:0x026c, B:28:0x0087, B:30:0x00a3, B:31:0x00b4, B:113:0x026d, B:114:0x0283), top: B:125:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0265 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c4 A[Catch: IOException -> 0x003b, TryCatch #4 {IOException -> 0x003b, blocks: (B:3:0x000d, B:11:0x0028, B:13:0x0032, B:16:0x003e, B:17:0x0056, B:19:0x005c, B:32:0x00bb, B:34:0x00c4, B:35:0x00cb, B:48:0x00f5, B:101:0x022a, B:103:0x0235, B:105:0x0246, B:108:0x024f, B:109:0x025e, B:111:0x0265, B:112:0x026c, B:28:0x0087, B:30:0x00a3, B:31:0x00b4, B:113:0x026d, B:114:0x0283), top: B:125:0x000d }] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws GG {
        HttpURLConnection httpURLConnection;
        int responseCode;
        String headerField;
        String protocol;
        long jMax;
        long j8 = 0;
        this.f20465q = 0L;
        this.f20464p = 0L;
        try {
            URL url = new URL(cd.f12592a.toString());
            int i8 = cd.f12596e;
            boolean z7 = (i8 & 1) == 1;
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                if (i9 > 20) {
                    throw new NoRouteToHostException("Too many redirects: " + i10);
                }
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
                if (httpURLConnection2 instanceof HttpsURLConnection) {
                    ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(this.f20453e);
                }
                httpURLConnection2.setConnectTimeout(this.f20454f);
                httpURLConnection2.setReadTimeout(this.f20455g);
                for (Map.Entry entry : this.f20457i.a().entrySet()) {
                    httpURLConnection2.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                long j9 = cd.f12594c;
                long j10 = cd.f12595d;
                if (j9 == j8) {
                    if (j10 == -1) {
                        httpURLConnection = httpURLConnection2;
                    }
                    httpURLConnection.setRequestProperty("User-Agent", this.f20456h);
                    if (!z7) {
                        httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
                    }
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.connect();
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                        this.f20458j = httpURLConnection;
                        try {
                            int responseCode2 = httpURLConnection.getResponseCode();
                            this.f20461m = responseCode2;
                            if (responseCode2 < 200 || responseCode2 > 299) {
                                this.f20458j.getHeaderFields();
                                l();
                                int i11 = this.f20461m;
                                int i12 = Et.f13234a;
                                C1148cH c1148cH = new C1148cH(i11, null);
                                if (this.f20461m != 416) {
                                    throw c1148cH;
                                }
                                c1148cH.initCause(new C2231xC(2008));
                                throw c1148cH;
                            }
                            if (responseCode2 != 200 || j9 == j8) {
                                j9 = 0;
                            }
                            this.f20462n = j9;
                            if ((i8 & 1) != 1 && j10 == -1) {
                                HttpURLConnection httpURLConnection3 = this.f20458j;
                                String headerField2 = httpURLConnection3.getHeaderField("Content-Length");
                                if (TextUtils.isEmpty(headerField2)) {
                                    jMax = -1;
                                } else {
                                    try {
                                        jMax = Long.parseLong(headerField2);
                                    } catch (NumberFormatException unused) {
                                        p120p3.h.d("Unexpected Content-Length [" + headerField2 + "]");
                                        jMax = -1;
                                    }
                                }
                                String headerField3 = httpURLConnection3.getHeaderField("Content-Range");
                                if (!TextUtils.isEmpty(headerField3)) {
                                    Matcher matcher = f20451t.matcher(headerField3);
                                    if (matcher.find()) {
                                        try {
                                            long j11 = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                                            if (jMax < 0) {
                                                jMax = j11;
                                            } else if (jMax != j11) {
                                                p120p3.h.g("Inconsistent headers [" + headerField2 + "] [" + headerField3 + "]");
                                                jMax = Math.max(jMax, j11);
                                            }
                                        } catch (NumberFormatException unused2) {
                                            p120p3.h.d("Unexpected Content-Range [" + headerField3 + "]");
                                        }
                                    }
                                }
                                this.f20463o = jMax != -1 ? jMax - this.f20462n : -1L;
                            } else {
                                this.f20463o = j10;
                            }
                            try {
                                this.f20459k = this.f20458j.getInputStream();
                                this.f20460l = true;
                                k(cd);
                                return this.f20463o;
                            } catch (IOException e8) {
                                l();
                                throw new GG(e8, 2000, 1);
                            }
                        } catch (IOException e9) {
                            l();
                            throw new GG("Unable to connect to ".concat(String.valueOf(cd.f12592a.toString())), e9, 2000, 1);
                        }
                    }
                    headerField = httpURLConnection.getHeaderField("Location");
                    httpURLConnection.disconnect();
                    if (headerField != null) {
                        throw new ProtocolException("Null location redirect");
                    }
                    URL url2 = new URL(url, headerField);
                    protocol = url2.getProtocol();
                    if (!"https".equals(protocol) && !"http".equals(protocol)) {
                        throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
                    }
                    url = url2;
                    j8 = 0;
                    i9 = i10;
                } else {
                    j8 = j9;
                }
                String string = "bytes=" + j8 + "-";
                if (j10 != -1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(string);
                    sb.append((j8 + j10) - 1);
                    string = sb.toString();
                }
                httpURLConnection = httpURLConnection2;
                httpURLConnection.setRequestProperty("Range", string);
                httpURLConnection.setRequestProperty("User-Agent", this.f20456h);
                if (!z7) {
                    httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
                }
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setDoOutput(false);
                httpURLConnection.connect();
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 300) {
                }
                headerField = httpURLConnection.getHeaderField("Location");
                httpURLConnection.disconnect();
                if (headerField != null) {
                    throw new ProtocolException("Null location redirect");
                }
                URL url3 = new URL(url, headerField);
                protocol = url3.getProtocol();
                if (!"https".equals(protocol)) {
                    throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
                }
                url = url3;
                j8 = 0;
                i9 = i10;
            }
        } catch (IOException e10) {
            throw new GG("Unable to connect to ".concat(String.valueOf(cd.f12592a.toString())), e10, 2000, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0079 A[Catch: IOException -> 0x001b, TryCatch #0 {IOException -> 0x001b, blocks: (B:2:0x0000, B:7:0x000e, B:9:0x0016, B:12:0x001e, B:14:0x0026, B:17:0x003c, B:18:0x0046, B:19:0x004b, B:20:0x004c, B:21:0x0051, B:22:0x0052, B:25:0x0058, B:27:0x0060, B:30:0x006b, B:31:0x0071, B:33:0x0079, B:36:0x0080, B:37:0x0085, B:38:0x0086), top: B:42:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0080 A[Catch: IOException -> 0x001b, TryCatch #0 {IOException -> 0x001b, blocks: (B:2:0x0000, B:7:0x000e, B:9:0x0016, B:12:0x001e, B:14:0x0026, B:17:0x003c, B:18:0x0046, B:19:0x004b, B:20:0x004c, B:21:0x0051, B:22:0x0052, B:25:0x0058, B:27:0x0060, B:30:0x006b, B:31:0x0071, B:33:0x0079, B:36:0x0080, B:37:0x0085, B:38:0x0086), top: B:42:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0086 A[Catch: IOException -> 0x001b, TRY_LEAVE, TryCatch #0 {IOException -> 0x001b, blocks: (B:2:0x0000, B:7:0x000e, B:9:0x0016, B:12:0x001e, B:14:0x0026, B:17:0x003c, B:18:0x0046, B:19:0x004b, B:20:0x004c, B:21:0x0051, B:22:0x0052, B:25:0x0058, B:27:0x0060, B:30:0x006b, B:31:0x0071, B:33:0x0079, B:36:0x0080, B:37:0x0085, B:38:0x0086), top: B:42:0x0000 }] */
    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws GG {
        int i10;
        try {
            if (this.f20464p != this.f20462n) {
                AtomicReference atomicReference = f20452u;
                byte[] bArr2 = (byte[]) atomicReference.getAndSet(null);
                if (bArr2 == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j8 = this.f20464p;
                    long j9 = this.f20462n;
                    if (j8 == j9) {
                        atomicReference.set(bArr2);
                        break;
                    }
                    int i11 = this.f20459k.read(bArr2, 0, (int) Math.min(j9 - j8, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (i11 == -1) {
                        throw new EOFException();
                    }
                    this.f20464p += (long) i11;
                    zzg(i11);
                }
            }
            if (i9 == 0) {
                return 0;
            }
            long j10 = this.f20463o;
            if (j10 != -1) {
                long j11 = j10 - this.f20465q;
                if (j11 != 0) {
                    i9 = (int) Math.min(i9, j11);
                    i10 = this.f20459k.read(bArr, i8, i9);
                    if (i10 == -1) {
                        this.f20465q += (long) i10;
                        zzg(i10);
                        return i10;
                    }
                    if (this.f20463o == -1) {
                        throw new EOFException();
                    }
                }
            } else {
                i10 = this.f20459k.read(bArr, i8, i9);
                if (i10 == -1) {
                    this.f20465q += (long) i10;
                    zzg(i10);
                    return i10;
                }
                if (this.f20463o == -1) {
                    throw new EOFException();
                }
            }
            return -1;
        } catch (IOException e8) {
            throw new GG(e8, 2000, 2);
        }
    }

    public final void l() {
        HttpURLConnection httpURLConnection = this.f20458j;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e8) {
                p120p3.h.e("Unexpected error while disconnecting", e8);
            }
            this.f20458j = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.f20458j;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        HashSet hashSet = this.f20467s;
        try {
            InputStream inputStream = this.f20459k;
            if (inputStream != null) {
                int i8 = Et.f13234a;
                try {
                    inputStream.close();
                } catch (IOException e8) {
                    throw new GG(e8, 2000, 3);
                }
            }
            this.f20459k = null;
            l();
            if (this.f20460l) {
                this.f20460l = false;
                i();
            }
            hashSet.clear();
        } catch (Throwable th) {
            this.f20459k = null;
            l();
            if (this.f20460l) {
                this.f20460l = false;
                i();
            }
            hashSet.clear();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.Nz, com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.f20458j;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }
}
