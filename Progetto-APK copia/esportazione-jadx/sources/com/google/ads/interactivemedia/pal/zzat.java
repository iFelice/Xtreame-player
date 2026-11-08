package com.google.ads.interactivemedia.pal;

import android.util.Log;
import com.google.android.gms.common.internal.C0640p;
import com.google.android.gms.internal.pal.A0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import p039f.AbstractC2987b;
import p096m2.c;

/* JADX INFO: loaded from: classes.dex */
public final class zzat {
    static final String zza;
    public static final int zzb;
    public static final int zzc;
    public static final A0 zzd;

    static {
        InputStream resourceAsStream;
        String str;
        String strConcat = "Failed to get app version for libraryName: play-services-pal";
        C0640p c0640p = C0640p.f11879c;
        c0640p.getClass();
        c cVar = C0640p.f11878b;
        com.bumptech.glide.c.f("Please provide a valid libraryName", "play-services-pal");
        ConcurrentHashMap concurrentHashMap = c0640p.f11880a;
        if (concurrentHashMap.containsKey("play-services-pal")) {
            str = (String) concurrentHashMap.get("play-services-pal");
        } else {
            Properties properties = new Properties();
            InputStream inputStream = null;
            property = null;
            String property = null;
            inputStream = null;
            try {
                try {
                    resourceAsStream = C0640p.class.getResourceAsStream("/play-services-pal.properties");
                    try {
                        if (resourceAsStream != null) {
                            properties.load(resourceAsStream);
                            property = properties.getProperty("version", null);
                            String strConcat2 = "play-services-pal version is " + property;
                            if (Log.isLoggable((String) cVar.f27210H, 2)) {
                                String str2 = (String) cVar.f27211I;
                                if (str2 != null) {
                                    strConcat2 = str2.concat(strConcat2);
                                }
                                Log.v("LibraryVersion", strConcat2);
                            }
                        } else if (Log.isLoggable((String) cVar.f27210H, 5)) {
                            String str3 = (String) cVar.f27211I;
                            Log.w("LibraryVersion", str3 == null ? "Failed to get app version for libraryName: play-services-pal" : str3.concat("Failed to get app version for libraryName: play-services-pal"));
                        }
                    } catch (IOException e8) {
                        e = e8;
                        inputStream = resourceAsStream;
                        if (Log.isLoggable((String) cVar.f27210H, 6)) {
                            String str4 = (String) cVar.f27211I;
                            if (str4 != null) {
                                strConcat = str4.concat("Failed to get app version for libraryName: play-services-pal");
                            }
                            Log.e("LibraryVersion", strConcat, e);
                        }
                        resourceAsStream = inputStream;
                        property = null;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = resourceAsStream;
                        if (inputStream != null) {
                            AbstractC2987b.e(inputStream);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e9) {
                e = e9;
            }
            if (resourceAsStream != null) {
                AbstractC2987b.e(resourceAsStream);
            }
            if (property == null) {
                if (Log.isLoggable((String) cVar.f27210H, 3)) {
                    String str5 = (String) cVar.f27211I;
                    Log.d("LibraryVersion", str5 != null ? str5.concat(".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used") : ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
                }
                str = "UNKNOWN";
            } else {
                str = property;
            }
            concurrentHashMap.put("play-services-pal", str);
        }
        zza = str;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        zzb = (int) timeUnit.toMillis(20L);
        zzc = (int) timeUnit.toMillis(20L);
        zzd = A0.a(150L);
    }
}
