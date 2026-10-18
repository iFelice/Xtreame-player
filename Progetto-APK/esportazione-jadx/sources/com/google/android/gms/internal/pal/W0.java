package com.google.android.gms.internal.pal;

import android.util.Log;
import com.google.ads.interactivemedia.pal.NonceLoaderException;
import com.google.ads.interactivemedia.pal.zzat;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class W0 extends AbstractC2670a1 {
    public static C2767m2 d() throws Throwable {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL("https://imasdk.googleapis.com/pal/key/public.json").openConnection();
                try {
                    try {
                        httpURLConnection2.setConnectTimeout(zzat.zzb);
                        httpURLConnection2.setReadTimeout(zzat.zzc);
                        httpURLConnection2.setDoInput(true);
                        httpURLConnection2.setUseCaches(false);
                        httpURLConnection2.connect();
                        if (httpURLConnection2.getResponseCode() != 200) {
                            Log.w("NonceGenerator", "Failed keystore response: " + httpURLConnection2.getResponseCode());
                            throw NonceLoaderException.zzb(202);
                        }
                        InputStream inputStream = httpURLConnection2.getInputStream();
                        try {
                            C2767m2 c2767m2B = C2767m2.b(new C2800q3(inputStream));
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            httpURLConnection2.disconnect();
                            return c2767m2B;
                        } catch (Throwable th) {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th2) {
                                    try {
                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                            throw th;
                        }
                    } catch (IOException | GeneralSecurityException e8) {
                        e = e8;
                        Log.e("NonceGenerator", "Failed to read keyset handle: " + e.toString());
                        throw new NonceLoaderException(203, e);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (IOException e9) {
                e = e9;
            } catch (GeneralSecurityException e10) {
                e = e10;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2670a1
    public final I2 a() throws NonceLoaderException {
        try {
            Z3.a();
            return new K2(new V0((InterfaceC2792p3) d().d()));
        } catch (GeneralSecurityException e8) {
            Log.e("NonceGenerator", "Can't access the cryptography library.", e8);
            throw new NonceLoaderException(201, e8);
        }
    }
}
