package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1922rF extends Nz implements DH {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f20697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f20698f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f20699g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f20700h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final WD f20701i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final WD f20702j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public HttpURLConnection f20703k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public InputStream f20704l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f20705m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f20706n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f20707o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f20708p;

    public /* synthetic */ C1922rF(String str, int i8, int i9, boolean z7, WD wd) {
        super(true);
        this.f20700h = str;
        this.f20698f = i8;
        this.f20699g = i9;
        this.f20697e = z7;
        this.f20701i = wd;
        this.f20702j = new WD();
    }

    /* JADX WARN: Code duplicated, block: B:116:0x021e  */
    /* JADX WARN: Code duplicated, block: B:69:0x0175  */
    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws GG {
        HttpURLConnection httpURLConnectionL;
        boolean z7;
        long j8;
        long j9;
        long j10;
        long jMax;
        long j11 = 0;
        this.f20708p = 0L;
        this.f20707o = 0L;
        j(cd);
        int i8 = 1;
        try {
            URL url = new URL(cd.f12592a.toString());
            long j12 = cd.f12594c;
            long j13 = cd.f12595d;
            boolean z8 = (cd.f12596e & 1) == 1;
            if (this.f20697e) {
                URL urlM = url;
                int i9 = 0;
                while (true) {
                    int i10 = i9 + 1;
                    if (i9 > 20) {
                        throw new GG(new NoRouteToHostException("Too many redirects: " + i10), 2001, 1);
                    }
                    URL url2 = urlM;
                    long j14 = j13;
                    httpURLConnectionL = l(urlM, j12, j13, z8, false, cd.f12593b);
                    int responseCode = httpURLConnectionL.getResponseCode();
                    String headerField = httpURLConnectionL.getHeaderField("Location");
                    if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                        break;
                    }
                    long j15 = j11;
                    httpURLConnectionL.disconnect();
                    urlM = m(url2, headerField);
                    j11 = j15;
                    i9 = i10;
                    j13 = j14;
                    i8 = 1;
                }
            } else {
                httpURLConnectionL = l(url, j12, j13, z8, true, cd.f12593b);
            }
            this.f20703k = httpURLConnectionL;
            this.f20706n = httpURLConnectionL.getResponseCode();
            httpURLConnectionL.getResponseMessage();
            int i11 = this.f20706n;
            long j16 = cd.f12594c;
            long j17 = cd.f12595d;
            if (i11 < 200 || i11 > 299) {
                httpURLConnectionL.getHeaderFields();
                if (this.f20706n == 416) {
                    String headerField2 = httpURLConnectionL.getHeaderField("Content-Range");
                    Pattern pattern = VH.f16988a;
                    if (TextUtils.isEmpty(headerField2)) {
                        z7 = true;
                        j8 = -1;
                    } else {
                        Matcher matcher = VH.f16989b.matcher(headerField2);
                        if (matcher.matches()) {
                            z7 = true;
                            String strGroup = matcher.group(1);
                            strGroup.getClass();
                            j8 = Long.parseLong(strGroup);
                        } else {
                            z7 = true;
                            j8 = -1;
                        }
                    }
                    if (j16 == j8) {
                        this.f20705m = z7;
                        k(cd);
                        if (j17 != -1) {
                            return j17;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionL.getErrorStream();
                try {
                    if (errorStream != null) {
                        AbstractC1503jB.a(errorStream);
                    } else {
                        int i12 = Et.f13234a;
                    }
                } catch (IOException unused) {
                    int i13 = Et.f13234a;
                }
                n();
                throw new C1148cH(this.f20706n, this.f20706n == 416 ? new C2231xC(2008) : null);
            }
            httpURLConnectionL.getContentType();
            if (this.f20706n != 200 || j16 == j11) {
                j16 = j11;
            }
            boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(httpURLConnectionL.getHeaderField("Content-Encoding"));
            if (zEqualsIgnoreCase || j17 != -1) {
                this.f20707o = j17;
            } else {
                String headerField3 = httpURLConnectionL.getHeaderField("Content-Length");
                String headerField4 = httpURLConnectionL.getHeaderField("Content-Range");
                Pattern pattern2 = VH.f16988a;
                if (TextUtils.isEmpty(headerField3)) {
                    j9 = -1;
                } else {
                    try {
                        j9 = Long.parseLong(headerField3);
                    } catch (NumberFormatException unused2) {
                        Zo.c("HttpUtil", "Unexpected Content-Length [" + headerField3 + "]");
                        j9 = -1;
                    }
                }
                if (TextUtils.isEmpty(headerField4)) {
                    j10 = j9;
                    jMax = j10;
                } else {
                    Matcher matcher2 = VH.f16988a.matcher(headerField4);
                    if (matcher2.matches()) {
                        try {
                            String strGroup2 = matcher2.group(2);
                            strGroup2.getClass();
                            long j18 = Long.parseLong(strGroup2);
                            String strGroup3 = matcher2.group(i8);
                            strGroup3.getClass();
                            j10 = j9;
                            long j19 = (j18 - Long.parseLong(strGroup3)) + 1;
                            if (j10 < j11) {
                                jMax = j19;
                            } else if (j10 != j19) {
                                try {
                                    Zo.f("HttpUtil", "Inconsistent headers [" + headerField3 + "] [" + headerField4 + "]");
                                    jMax = Math.max(j10, j19);
                                } catch (NumberFormatException unused3) {
                                    Zo.c("HttpUtil", "Unexpected Content-Range [" + headerField4 + "]");
                                    jMax = j10;
                                }
                            }
                        } catch (NumberFormatException unused4) {
                            j10 = j9;
                        }
                    } else {
                        j10 = j9;
                    }
                    jMax = j10;
                }
                this.f20707o = jMax != -1 ? jMax - j16 : -1L;
            }
            try {
                this.f20704l = httpURLConnectionL.getInputStream();
                if (zEqualsIgnoreCase) {
                    this.f20704l = new GZIPInputStream(this.f20704l);
                }
                this.f20705m = true;
                k(cd);
                if (j16 != 0) {
                    try {
                        byte[] bArr = new byte[4096];
                        for (long j20 = 0; j16 > j20; j20 = 0) {
                            int iMin = (int) Math.min(j16, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
                            InputStream inputStream = this.f20704l;
                            int i14 = Et.f13234a;
                            int i15 = inputStream.read(bArr, 0, iMin);
                            if (Thread.currentThread().isInterrupted()) {
                                throw new GG(new InterruptedIOException(), 2000, 1);
                            }
                            if (i15 == -1) {
                                throw new GG();
                            }
                            j16 -= (long) i15;
                            zzg(i15);
                        }
                    } catch (IOException e8) {
                        n();
                        if (e8 instanceof GG) {
                            throw ((GG) e8);
                        }
                        throw new GG(e8, 2000, 1);
                    }
                }
                return this.f20707o;
            } catch (IOException e9) {
                n();
                throw new GG(e9, 2000, 1);
            }
        } catch (IOException e10) {
            n();
            throw GG.a(e10, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002b  */
    /* JADX WARN: Code duplicated, block: B:15:0x002c A[Catch: IOException -> 0x001f, TRY_LEAVE, TryCatch #0 {IOException -> 0x001f, blocks: (B:4:0x0004, B:6:0x000d, B:9:0x0018, B:12:0x0021, B:15:0x002c), top: B:19:0x0004 }] */
    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws GG {
        int i10;
        if (i9 == 0) {
            return 0;
        }
        try {
            long j8 = this.f20707o;
            if (j8 != -1) {
                long j9 = j8 - this.f20708p;
                if (j9 != 0) {
                    i9 = (int) Math.min(i9, j9);
                    InputStream inputStream = this.f20704l;
                    int i11 = Et.f13234a;
                    i10 = inputStream.read(bArr, i8, i9);
                    if (i10 == -1) {
                        this.f20708p += (long) i10;
                        zzg(i10);
                        return i10;
                    }
                }
            } else {
                InputStream inputStream2 = this.f20704l;
                int i12 = Et.f13234a;
                i10 = inputStream2.read(bArr, i8, i9);
                if (i10 == -1) {
                    this.f20708p += (long) i10;
                    zzg(i10);
                    return i10;
                }
            }
            return -1;
        } catch (IOException e8) {
            int i13 = Et.f13234a;
            throw GG.a(e8, 2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0069  */
    public final HttpURLConnection l(URL url, long j8, long j9, boolean z7, boolean z8, Map map) throws IOException {
        StringBuilder sbD;
        String string;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f20698f);
        httpURLConnection.setReadTimeout(this.f20699g);
        HashMap map2 = new HashMap();
        map2.putAll(this.f20701i.a());
        map2.putAll(this.f20702j.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j8 != 0) {
            sbD = p148t.a.d("bytes=", j8, "-");
            if (j9 != -1) {
                sbD.append((j8 + j9) - 1);
            }
            string = sbD.toString();
        } else if (j9 == -1) {
            string = null;
        } else {
            j8 = 0;
            sbD = p148t.a.d("bytes=", j8, "-");
            if (j9 != -1) {
                sbD.append((j8 + j9) - 1);
            }
            string = sbD.toString();
        }
        if (string != null) {
            httpURLConnection.setRequestProperty("Range", string);
        }
        String str = this.f20700h;
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", true != z7 ? "identity" : "gzip");
        httpURLConnection.setInstanceFollowRedirects(z8);
        httpURLConnection.setDoOutput(false);
        int i8 = CD.f12591f;
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return httpURLConnection;
    }

    public final URL m(URL url, String str) throws GG {
        if (str == null) {
            throw new GG("Null location redirect", 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new GG("Unsupported protocol redirect: ".concat(String.valueOf(protocol)), 2001, 1);
            }
            if (this.f20697e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new GG(A0.O.C("Disallowed cross-protocol redirect (", url.getProtocol(), " to ", protocol, ")"), 2001, 1);
        } catch (MalformedURLException e8) {
            throw new GG(e8, 2001, 1);
        }
    }

    public final void n() {
        HttpURLConnection httpURLConnection = this.f20703k;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e8) {
                Zo.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e8);
            }
            this.f20703k = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.f20703k;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        try {
            InputStream inputStream = this.f20704l;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e8) {
                    int i8 = Et.f13234a;
                    throw new GG(e8, 2000, 3);
                }
            }
            this.f20704l = null;
            n();
            if (this.f20705m) {
                this.f20705m = false;
                i();
            }
        } catch (Throwable th) {
            this.f20704l = null;
            n();
            if (this.f20705m) {
                this.f20705m = false;
                i();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.Nz, com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.f20703k;
        return httpURLConnection == null ? UA.f16803M : new VE(httpURLConnection.getHeaderFields());
    }
}
