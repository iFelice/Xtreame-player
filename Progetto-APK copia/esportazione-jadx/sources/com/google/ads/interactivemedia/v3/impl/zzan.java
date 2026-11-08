package com.google.ads.interactivemedia.v3.impl;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class zzan extends WebViewClient {
    final /* synthetic */ zzao zza;

    public zzan(zzao zzaoVar) {
        this.zza = zzaoVar;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!this.zza.zzb.zzb(str)) {
            return true;
        }
        Iterator it = this.zza.zzc.iterator();
        while (it.hasNext()) {
            ((CompanionAdSlot.ClickListener) it.next()).onCompanionAdClick();
        }
        return true;
    }
}
