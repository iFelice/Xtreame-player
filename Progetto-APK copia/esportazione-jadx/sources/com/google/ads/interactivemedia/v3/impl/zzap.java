package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.util.Base64;
import android.webkit.WebView;
import com.google.ads.interactivemedia.v3.internal.zzgi;
import java.util.List;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzap extends WebView {
    private zzap(Context context) {
        super(context);
    }

    public static zzap zza(Context context, com.google.ads.interactivemedia.v3.impl.data.zzbe zzbeVar, List list, zzgi zzgiVar) {
        zzap zzapVar = new zzap(context);
        zzapVar.getSettings().setJavaScriptEnabled(true);
        zzapVar.getSettings().setSupportMultipleWindows(true);
        zzapVar.setBackgroundColor(0);
        zzapVar.setWebChromeClient(new zzao(context, zzgiVar, list));
        if (zzbeVar.type() == com.google.ads.interactivemedia.v3.impl.data.zzbd.Html) {
            zzapVar.loadData(Base64.encodeToString(zzbeVar.src().getBytes(), 1), "text/html", "base64");
        } else {
            if (zzbeVar.type() != com.google.ads.interactivemedia.v3.impl.data.zzbd.IFrame) {
                throw new IllegalArgumentException(r.g("Companion type ", String.valueOf(zzbeVar.type()), " is not valid for a CompanionWebView"));
            }
            zzapVar.loadUrl(zzbeVar.src());
        }
        return zzapVar;
    }
}
