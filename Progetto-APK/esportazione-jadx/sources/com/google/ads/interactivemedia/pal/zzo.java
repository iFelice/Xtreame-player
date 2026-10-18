package com.google.ads.interactivemedia.pal;

import com.google.android.gms.internal.pal.C2805r1;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
final class zzo extends Thread {
    final /* synthetic */ String zza;

    public zzo(zzs zzsVar, String str) {
        this.zza = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws Throwable {
        Throwable th;
        HttpURLConnection httpURLConnection;
        try {
            try {
                httpURLConnection = (HttpURLConnection) ((URL) new C2805r1(new URL(this.zza), 4).f23994H).openConnection();
                try {
                    httpURLConnection.setConnectTimeout(zzat.zzb);
                    httpURLConnection.setReadTimeout(zzat.zzc);
                    httpURLConnection.setDoInput(false);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.getResponseCode();
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (httpURLConnection != null) {
                        try {
                            httpURLConnection.disconnect();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th3);
                            } catch (Exception unused) {
                            }
                        }
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = null;
            }
        } catch (IOException unused2) {
        }
    }
}
