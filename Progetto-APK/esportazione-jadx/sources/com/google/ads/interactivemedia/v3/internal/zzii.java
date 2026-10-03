package com.google.ads.interactivemedia.v3.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class zzii {
    private String zza = "googleads.g.doubleclick.net";
    private String zzb = "/pagead/ads";
    private final String zzc = "ad.doubleclick.net";
    private String[] zzd = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private final zzia zze;

    @Deprecated
    public zzii(zzia zziaVar) {
        this.zze = zziaVar;
    }

    private final Uri zzh(Uri uri, String str) throws zzij {
        uri.getClass();
        try {
            try {
                if (uri.getHost().equals(this.zzc) && uri.getPath().contains(";")) {
                    if (uri.toString().contains("dc_ms=")) {
                        throw new zzij("Parameter already exists: dc_ms");
                    }
                    String string = uri.toString();
                    int iIndexOf = string.indexOf(";adurl");
                    if (iIndexOf != -1) {
                        int i8 = iIndexOf + 1;
                        return Uri.parse(string.substring(0, i8) + "dc_ms=" + str + ";" + string.substring(i8));
                    }
                    String encodedPath = uri.getEncodedPath();
                    int iIndexOf2 = string.indexOf(encodedPath);
                    return Uri.parse(string.substring(0, encodedPath.length() + iIndexOf2) + ";dc_ms=" + str + ";" + string.substring(iIndexOf2 + encodedPath.length()));
                }
            } catch (UnsupportedOperationException unused) {
                throw new zzij("Provided Uri is not in a valid state");
            }
        } catch (NullPointerException unused2) {
        }
        if (uri.getQueryParameter("ms") != null) {
            throw new zzij("Query parameter already exists: ms");
        }
        String string2 = uri.toString();
        int iIndexOf3 = string2.indexOf("&adurl");
        if (iIndexOf3 == -1) {
            iIndexOf3 = string2.indexOf("?adurl");
        }
        if (iIndexOf3 == -1) {
            return uri.buildUpon().appendQueryParameter("ms", str).build();
        }
        int i9 = iIndexOf3 + 1;
        return Uri.parse(string2.substring(0, i9) + "ms=" + str + "&" + string2.substring(i9));
    }

    @Deprecated
    public final Uri zza(Uri uri, Context context, View view, Activity activity) throws zzij {
        try {
            return zzh(uri, this.zze.zze(context, uri.getQueryParameter("ai"), null, null));
        } catch (UnsupportedOperationException unused) {
            throw new zzij("Provided Uri is not in a valid state");
        }
    }

    @Deprecated
    public final Uri zzb(Uri uri, Context context) {
        return zzh(uri, ((zzie) this.zze).zzg(context, null));
    }

    @Deprecated
    public final void zzc(MotionEvent motionEvent) {
        this.zze.zzk(motionEvent);
    }

    public final void zzd(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public final void zze(String str) {
        this.zzd = str.split(",");
    }

    public final boolean zzf(Uri uri) {
        uri.getClass();
        try {
            String host = uri.getHost();
            for (String str : this.zzd) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    public final boolean zzg(Uri uri) {
        uri.getClass();
        try {
            return uri.getHost().equals(this.zza) && uri.getPath().equals(this.zzb);
        } catch (NullPointerException unused) {
        }
    }
}
