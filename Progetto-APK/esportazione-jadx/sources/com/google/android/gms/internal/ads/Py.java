package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Set;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Py implements Closeable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Gz f15524G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public J f15525H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public HttpURLConnection f15526I;

    public static Py k() {
        C1079b c1079b = new C1079b(2);
        Py py = new Py();
        py.f15524G = c1079b;
        py.f15525H = null;
        return py;
    }

    public final HttpURLConnection E(J j8) throws IOException {
        final int i8 = -1;
        final int i9 = 1;
        this.f15524G = new Gz() { // from class: com.google.android.gms.internal.ads.Oy
            @Override // com.google.android.gms.internal.ads.Gz
            public final Object zza() {
                int i10 = i9;
                int i11 = i8;
                switch (i10) {
                    case 0:
                        break;
                }
                return Integer.valueOf(i11);
            }
        };
        this.f15525H = j8;
        ((Integer) this.f15524G.zza()).getClass();
        J j9 = this.f15525H;
        j9.getClass();
        Set set = C1574kf.f19621L;
        C0650Aa c0650Aa = p083k3.l.f25980A.f25995o;
        int iIntValue = ((Integer) C3099q.f26624d.f26627c.a(Q7.f15969x)).intValue();
        URL url = new URL(j9.f14099H);
        int i10 = 0;
        while (true) {
            i10++;
            if (i10 > 20) {
                throw new IOException("Too many redirects (20)");
            }
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            uRLConnectionOpenConnection.setConnectTimeout(iIntValue);
            uRLConnectionOpenConnection.setReadTimeout(iIntValue);
            if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                throw new IOException("Invalid protocol.");
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            p120p3.g gVar = new p120p3.g();
            gVar.a(httpURLConnection, null);
            httpURLConnection.setInstanceFollowRedirects(false);
            int responseCode = httpURLConnection.getResponseCode();
            gVar.b(httpURLConnection, responseCode);
            if (responseCode / 100 != 3) {
                this.f15526I = httpURLConnection;
                return httpURLConnection;
            }
            String headerField = httpURLConnection.getHeaderField("Location");
            if (headerField == null) {
                throw new IOException("Missing Location header in redirect");
            }
            URL url2 = new URL(url, headerField);
            String protocol = url2.getProtocol();
            if (protocol == null) {
                throw new IOException("Protocol is null");
            }
            if (!protocol.equals("http") && !protocol.equals("https")) {
                throw new IOException("Unsupported scheme: ".concat(protocol));
            }
            p120p3.h.b("Redirecting to ".concat(headerField));
            httpURLConnection.disconnect();
            url = url2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        HttpURLConnection httpURLConnection = this.f15526I;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }
}
