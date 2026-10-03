package com.google.ads.interactivemedia.v3.impl;

import android.net.Uri;
import android.webkit.WebView;
import p011b2.a;
import p011b2.c;
import p011b2.d;

/* JADX INFO: loaded from: classes.dex */
final class zzbg implements d {
    final /* synthetic */ zzbk zza;

    public zzbg(zzbk zzbkVar) {
        this.zza = zzbkVar;
    }

    @Override // p011b2.d
    public final void onPostMessage(WebView webView, c cVar, Uri uri, boolean z7, a aVar) {
        this.zza.zzh(cVar.a(), "4");
    }
}
