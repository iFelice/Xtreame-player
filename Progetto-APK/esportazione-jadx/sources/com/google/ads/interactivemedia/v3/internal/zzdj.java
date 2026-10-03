package com.google.ads.interactivemedia.v3.internal;

import android.os.Handler;
import android.webkit.WebView;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzdj extends zzdf {
    private WebView zza;
    private Long zzb;
    private final Map zzc;

    public zzdj(String str, Map map, String str2) {
        super(str);
        this.zzb = null;
        this.zzc = map;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzdf
    public final void zzc() {
        super.zzc();
        new Handler().postDelayed(new zzdi(this), Math.max(4000 - (this.zzb == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.zzb.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.zza = null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzdf
    public final void zzi(com.google.ads.interactivemedia.omid.library.adsession.zze zzeVar, com.google.ads.interactivemedia.omid.library.adsession.zzc zzcVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapZzh = zzcVar.zzh();
        Iterator it = mapZzh.keySet().iterator();
        if (it.hasNext()) {
            throw null;
        }
        zzj(zzeVar, zzcVar, jSONObject);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzdf
    public final void zzn() {
        WebView webView = new WebView(zzcw.zzb().zza());
        this.zza = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.zza.getSettings().setAllowContentAccess(false);
        this.zza.getSettings().setAllowFileAccess(false);
        this.zza.setWebViewClient(new zzdh(this));
        zzm(this.zza);
        zzcy.zzj(this.zza, null);
        Iterator it = this.zzc.keySet().iterator();
        if (!it.hasNext()) {
            this.zzb = Long.valueOf(System.nanoTime());
        } else {
            throw null;
        }
    }
}
