package com.bumptech.glide.load.data;

import C2.t;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class l implements e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final t f11583G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f11584H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public HttpURLConnection f11585I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public InputStream f11586J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public volatile boolean f11587K;

    public l(t tVar, int i8) {
        this.f11583G = tVar;
        this.f11584H = i8;
    }

    public static int b(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e8) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e8);
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
        InputStream inputStream = this.f11586J;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f11585I;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f11585I = null;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f11587K = true;
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return p173w2.a.f30982H;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.g gVar, d dVar) {
        StringBuilder sb;
        t tVar = this.f11583G;
        int i8 = P2.i.f5894b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            if (tVar.f1414f == null) {
                tVar.f1414f = new URL(tVar.d());
            }
            dVar.f(f(tVar.f1414f, 0, null, tVar.f1410b.a()));
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb = new StringBuilder("Finished http url fetcher fetch in ");
                sb.append(P2.i.a(jElapsedRealtimeNanos));
                String string = sb.toString();
            }
        } catch (IOException e8) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to load data for url", e8);
            }
            dVar.b(e8);
            if (!Log.isLoggable("HttpUrlFetcher", 2)) {
            } else {
                sb = new StringBuilder("Finished http url fetcher fetch in ");
            }
        } finally {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + P2.i.a(jElapsedRealtimeNanos));
            }
        }
    }

    public final InputStream f(URL url, int i8, URL url2, Map map) throws p173w2.d {
        if (i8 >= 5) {
            throw new p173w2.d("Too many (> 5) redirects!", -1, null);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new p173w2.d("In re-direct loop", -1, null);
                }
            } catch (URISyntaxException unused) {
            }
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            int i9 = this.f11584H;
            httpURLConnection.setConnectTimeout(i9);
            httpURLConnection.setReadTimeout(i9);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.f11585I = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.f11586J = this.f11585I.getInputStream();
                if (this.f11587K) {
                    return null;
                }
                int iB = b(this.f11585I);
                int i10 = iB / 100;
                if (i10 == 2) {
                    HttpURLConnection httpURLConnection2 = this.f11585I;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            this.f11586J = new P2.e(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                            }
                            this.f11586J = httpURLConnection2.getInputStream();
                        }
                        return this.f11586J;
                    } catch (IOException e8) {
                        throw new p173w2.d("Failed to obtain InputStream", b(httpURLConnection2), e8);
                    }
                }
                if (i10 != 3) {
                    if (iB == -1) {
                        throw new p173w2.d(iB, 0);
                    }
                    try {
                        throw new p173w2.d(this.f11585I.getResponseMessage(), iB, null);
                    } catch (IOException e9) {
                        throw new p173w2.d("Failed to get a response message", iB, e9);
                    }
                }
                String headerField = this.f11585I.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new p173w2.d("Received empty or null redirect url", iB, null);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    c();
                    return f(url3, i8 + 1, url, map);
                } catch (MalformedURLException e10) {
                    throw new p173w2.d(p148t.a.c("Bad redirect url: ", headerField), iB, e10);
                }
            } catch (IOException e11) {
                throw new p173w2.d("Failed to connect or obtain data", b(this.f11585I), e11);
            }
        } catch (IOException e12) {
            throw new p173w2.d("URL.openConnection threw", 0, e12);
        }
    }
}
