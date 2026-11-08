package com.google.android.gms.internal.pal;

import android.net.Uri;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.o1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2782o1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f23975a = "googleads.g.doubleclick.net";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f23976b = "/pagead/ads";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String[] f23977c = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC2742j1 f23978d;

    public C2782o1(C2774n1 c2774n1) {
        this.f23978d = c2774n1;
    }

    public static Uri a(Uri uri, String str) throws C2790p1 {
        uri.getClass();
        try {
            try {
                if (uri.getHost().equals("ad.doubleclick.net")) {
                    if (uri.toString().contains("dc_ms=")) {
                        throw new C2790p1("Parameter already exists: dc_ms");
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
            } catch (NullPointerException unused) {
            }
            if (uri.getQueryParameter("ms") != null) {
                throw new C2790p1("Query parameter already exists: ms");
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
        } catch (UnsupportedOperationException unused2) {
            throw new C2790p1("Provided Uri is not in a valid state");
        }
    }
}
