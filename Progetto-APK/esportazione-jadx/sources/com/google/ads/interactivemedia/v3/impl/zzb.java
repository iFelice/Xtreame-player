package com.google.ads.interactivemedia.v3.impl;

import android.app.Activity;
import android.app.Application;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.view.View;
import com.google.ads.interactivemedia.v3.internal.zzel;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzb implements zzaz {
    private final zzbi zza;
    private final String zzb;
    private final View zzc;
    private Activity zze = null;
    private zza zzd = null;
    private boolean zzf = false;

    public zzb(String str, zzbi zzbiVar, View view) {
        this.zzb = str;
        this.zza = zzbiVar;
        this.zzc = view;
    }

    private final DisplayMetrics zzj() {
        return this.zzc.getContext().getResources().getDisplayMetrics();
    }

    private static com.google.ads.interactivemedia.v3.impl.data.zzbb zzk(com.google.ads.interactivemedia.v3.impl.data.zzbb zzbbVar, float f8) {
        com.google.ads.interactivemedia.v3.impl.data.zzba zzbaVarBuilder = com.google.ads.interactivemedia.v3.impl.data.zzbb.builder();
        zzbaVarBuilder.left((int) Math.ceil(zzbbVar.left() / f8));
        zzbaVarBuilder.top((int) Math.ceil(zzbbVar.top() / f8));
        zzbaVarBuilder.height((int) Math.ceil(zzbbVar.height() / f8));
        zzbaVarBuilder.width((int) Math.ceil(zzbbVar.width() / f8));
        return zzbaVarBuilder.build();
    }

    public final com.google.ads.interactivemedia.v3.impl.data.zzb zzc(String str, String str2, String str3) {
        com.google.ads.interactivemedia.v3.impl.data.zzbb zzbbVarZzk = zzk(com.google.ads.interactivemedia.v3.impl.data.zzbb.builder().locationOnScreenOfView(this.zzc).build(), zzj().density);
        Rect rect = new Rect();
        boolean globalVisibleRect = this.zzc.getGlobalVisibleRect(rect);
        IBinder windowToken = this.zzc.getWindowToken();
        if (!globalVisibleRect || windowToken == null || !this.zzc.isShown()) {
            rect.set(0, 0, 0, 0);
        }
        com.google.ads.interactivemedia.v3.impl.data.zzba zzbaVarBuilder = com.google.ads.interactivemedia.v3.impl.data.zzbb.builder();
        zzbaVarBuilder.left(rect.left);
        zzbaVarBuilder.top(rect.top);
        zzbaVarBuilder.height(rect.height());
        zzbaVarBuilder.width(rect.width());
        com.google.ads.interactivemedia.v3.impl.data.zzbb zzbbVarZzk2 = zzk(zzbaVarBuilder.build(), zzj().density);
        boolean z7 = (this.zzc.getGlobalVisibleRect(new Rect()) && this.zzc.isShown()) ? false : true;
        AudioManager audioManager = (AudioManager) this.zzc.getContext().getSystemService("audio");
        double streamVolume = audioManager != null ? ((double) audioManager.getStreamVolume(3)) / ((double) audioManager.getStreamMaxVolume(3)) : 0.0d;
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.google.ads.interactivemedia.v3.impl.data.zza zzaVarBuilder = com.google.ads.interactivemedia.v3.impl.data.zzb.builder();
        zzaVarBuilder.queryId(str);
        zzaVarBuilder.eventId(str2);
        zzaVarBuilder.appState(str3);
        zzaVarBuilder.nativeTime(jCurrentTimeMillis);
        zzaVarBuilder.nativeVolume(streamVolume);
        zzaVarBuilder.nativeViewHidden(z7);
        zzaVarBuilder.nativeViewBounds(zzbbVarZzk);
        zzaVarBuilder.nativeViewVisibleBounds(zzbbVarZzk2);
        return zzaVarBuilder.build();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzaz
    public final void zzf(String str, String str2) {
        this.zza.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.activityMonitor, JavaScriptMessage.MsgType.viewability, this.zzb, zzc(str, str2, HttpUrl.FRAGMENT_ENCODE_SET)));
    }

    public final void zzg() {
        Application applicationZzb;
        if (!this.zzf || (applicationZzb = zzel.zzb(this.zzc.getContext())) == null) {
            return;
        }
        zza zzaVar = new zza(this);
        this.zzd = zzaVar;
        applicationZzb.registerActivityLifecycleCallbacks(zzaVar);
    }

    public final void zzh(boolean z7) {
        this.zzf = z7;
    }

    public final void zzi() {
        zza zzaVar;
        Application applicationZzb = zzel.zzb(this.zzc.getContext());
        if (applicationZzb == null || (zzaVar = this.zzd) == null) {
            return;
        }
        applicationZzb.unregisterActivityLifecycleCallbacks(zzaVar);
    }
}
