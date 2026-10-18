package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2249xf extends Nz implements DH {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final Pattern f21887v = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f21888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f21889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f21890g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final WD f21891h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CD f21892i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public HttpURLConnection f21893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayDeque f21894k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public InputStream f21895l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f21896m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f21897n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f21898o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f21899p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f21900q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f21901r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f21902s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final long f21903t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final long f21904u;

    public C2249xf(String str, C2145vf c2145vf, int i8, int i9, long j8, long j9) {
        super(true);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.f21890g = str;
        this.f21891h = new WD();
        this.f21888e = i8;
        this.f21889f = i9;
        this.f21894k = new ArrayDeque();
        this.f21903t = j8;
        this.f21904u = j9;
        if (c2145vf != null) {
            f(c2145vf);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws GG {
        this.f21892i = cd;
        this.f21899p = 0L;
        long j8 = cd.f12594c;
        long jMin = this.f21903t;
        long j9 = cd.f12595d;
        if (j9 != -1) {
            jMin = Math.min(jMin, j9);
        }
        this.f21900q = j8;
        HttpURLConnection httpURLConnectionL = l(1, j8, (jMin + j8) - 1);
        this.f21893j = httpURLConnectionL;
        String headerField = httpURLConnectionL.getHeaderField("Content-Range");
        if (!TextUtils.isEmpty(headerField)) {
            Matcher matcher = f21887v.matcher(headerField);
            if (matcher.find()) {
                try {
                    Long.parseLong(matcher.group(1));
                    long j10 = Long.parseLong(matcher.group(2));
                    long j11 = Long.parseLong(matcher.group(3));
                    if (j9 != -1) {
                        this.f21898o = j9;
                        this.f21901r = Math.max(j10, (this.f21900q + j9) - 1);
                    } else {
                        this.f21898o = j11 - this.f21900q;
                        this.f21901r = j11 - 1;
                    }
                    this.f21902s = j10;
                    this.f21896m = true;
                    k(cd);
                    return this.f21898o;
                } catch (NumberFormatException unused) {
                    p120p3.h.d("Unexpected Content-Range [" + headerField + "]");
                }
            }
        }
        throw new C2197wf("Invalid content range: ".concat(String.valueOf(headerField)), 2000, 1);
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws GG {
        if (i9 == 0) {
            return 0;
        }
        try {
            long j8 = this.f21898o;
            long j9 = this.f21899p;
            if (j8 - j9 == 0) {
                return -1;
            }
            long j10 = this.f21900q + j9;
            long j11 = i9;
            long j12 = this.f21904u;
            long j13 = j10 + j11 + j12;
            long j14 = this.f21902s;
            long j15 = j14 + 1;
            if (j13 > j15) {
                long j16 = this.f21901r;
                if (j14 < j16) {
                    long jMin = Math.min(j16, Math.max(((this.f21903t + j15) - j12) - 1, (-1) + j15 + j11));
                    l(2, j15, jMin);
                    this.f21902s = jMin;
                    j14 = jMin;
                }
            }
            int i10 = this.f21895l.read(bArr, i8, (int) Math.min(j11, ((j14 + 1) - this.f21900q) - this.f21899p));
            if (i10 == -1) {
                throw new EOFException();
            }
            this.f21899p += (long) i10;
            zzg(i10);
            return i10;
        } catch (IOException e8) {
            throw new GG(e8, 2000, 2);
        }
    }

    public final HttpURLConnection l(int i8, long j8, long j9) throws GG {
        String string = this.f21892i.f12592a.toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
            httpURLConnection.setConnectTimeout(this.f21888e);
            httpURLConnection.setReadTimeout(this.f21889f);
            for (Map.Entry entry : this.f21891h.a().entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.setRequestProperty("Range", "bytes=" + j8 + "-" + j9);
            httpURLConnection.setRequestProperty("User-Agent", this.f21890g);
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.connect();
            this.f21894k.add(httpURLConnection);
            String string2 = this.f21892i.f12592a.toString();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                this.f21897n = responseCode;
                if (responseCode < 200 || responseCode > 299) {
                    httpURLConnection.getHeaderFields();
                    m();
                    throw new C2197wf(p000a.r.f("Response code: ", this.f21897n), 2000, i8);
                }
                try {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    if (this.f21895l != null) {
                        inputStream = new SequenceInputStream(this.f21895l, inputStream);
                    }
                    this.f21895l = inputStream;
                    return httpURLConnection;
                } catch (IOException e8) {
                    m();
                    throw new GG(e8, 2000, i8);
                }
            } catch (IOException e9) {
                m();
                throw new GG("Unable to connect to ".concat(String.valueOf(string2)), e9, 2000, i8);
            }
        } catch (IOException e10) {
            throw new GG("Unable to connect to ".concat(String.valueOf(string)), e10, 2000, i8);
        }
    }

    public final void m() {
        while (true) {
            ArrayDeque arrayDeque = this.f21894k;
            if (arrayDeque.isEmpty()) {
                this.f21893j = null;
                return;
            } else {
                try {
                    ((HttpURLConnection) arrayDeque.remove()).disconnect();
                } catch (Exception e8) {
                    p120p3.h.e("Unexpected error while disconnecting", e8);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.f21893j;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        try {
            InputStream inputStream = this.f21895l;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e8) {
                    throw new GG(e8, 2000, 3);
                }
            }
            this.f21895l = null;
            m();
            if (this.f21896m) {
                this.f21896m = false;
                i();
            }
        } catch (Throwable th) {
            this.f21895l = null;
            m();
            if (this.f21896m) {
                this.f21896m = false;
                i();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.Nz, com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.f21893j;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }
}
