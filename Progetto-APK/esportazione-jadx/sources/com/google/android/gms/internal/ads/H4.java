package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class H4 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f13698c = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f13699a = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final E4 f13700b;

    public H4(E4 e8) {
        this.f13700b = e8;
    }

    public static Uri d(Uri uri, String str) throws I4 {
        uri.getClass();
        try {
            try {
                if (uri.getHost().equals("ad.doubleclick.net") && uri.getPath().contains(";")) {
                    if (uri.toString().contains("dc_ms=")) {
                        throw new I4("Parameter already exists: dc_ms");
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
                throw new I4("Provided Uri is not in a valid state");
            }
        } catch (NullPointerException unused2) {
        }
        if (uri.getQueryParameter("ms") != null) {
            throw new I4("Query parameter already exists: ms");
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

    public final Uri a(Uri uri, Context context, View view, Activity activity) throws I4 {
        try {
            return d(uri, this.f13700b.d(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new I4("Provided Uri is not in a valid state");
        }
    }

    public final boolean b(Uri uri) {
        if (c(uri)) {
            String[] strArr = f13698c;
            for (int i8 = 0; i8 < 3; i8++) {
                if (uri.getPath().endsWith(strArr[i8])) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean c(Uri uri) {
        uri.getClass();
        try {
            String host = uri.getHost();
            String[] strArr = this.f13699a;
            for (int i8 = 0; i8 < 3; i8++) {
                if (host.endsWith(strArr[i8])) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }
}
