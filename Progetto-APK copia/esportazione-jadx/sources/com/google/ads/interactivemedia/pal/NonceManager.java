package com.google.ads.interactivemedia.pal;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.MotionEvent;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.pal.A0;
import com.google.android.gms.internal.pal.AbstractC2864y4;
import com.google.android.gms.internal.pal.C2679b2;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import p052g4.b;
import p052g4.h;
import p052g4.j;
import p052g4.r;

/* JADX INFO: loaded from: classes.dex */
public final class NonceManager {
    static final A0 zza = new A0(AbstractC2864y4.d(1000, 3));
    static final A0 zzb = new A0(AbstractC2864y4.d(1000, 5));
    public static final /* synthetic */ int zzc = 0;
    private final Context zzd;
    private final ExecutorService zze;
    private final h zzf;
    private final zzax zzg;
    private final zzav zzh;
    private final String zzi;
    private boolean zzj = false;
    private String zzk;

    public NonceManager(Context context, Handler handler, ExecutorService executorService, h hVar, zzax zzaxVar, String str) {
        this.zzd = context;
        this.zze = executorService;
        this.zzf = hVar;
        this.zzg = zzaxVar;
        this.zzh = new zzav(handler, zzb);
        this.zzi = str;
    }

    public static /* bridge */ /* synthetic */ Activity zza(NonceManager nonceManager) {
        Context context = nonceManager.zzd;
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return null;
    }

    public String getNonce() {
        return this.zzi;
    }

    public void sendAdClick() {
        Cw.q(this.zzf.d(this.zze, new b() { // from class: com.google.ads.interactivemedia.pal.zzan
            @Override // p052g4.b
            public final Object then(h hVar) {
                return this.zza.zzc(hVar);
            }
        }), zza.f23477G, TimeUnit.MILLISECONDS).d(this.zze, new b() { // from class: com.google.ads.interactivemedia.pal.zzao
            @Override // p052g4.b
            public final Object then(h hVar) {
                this.zza.zzd(hVar);
                return null;
            }
        });
    }

    @Deprecated
    public void sendAdImpression() {
    }

    public void sendAdTouch(final MotionEvent motionEvent) {
        Cw.q(this.zzf.d(this.zze, new b() { // from class: com.google.ads.interactivemedia.pal.zzal
            @Override // p052g4.b
            public final Object then(h hVar) {
                MotionEvent motionEvent2 = motionEvent;
                int i8 = NonceManager.zzc;
                C2679b2 c2679b2 = (C2679b2) hVar.f();
                c2679b2.getClass();
                c2679b2.f23731a.zzl(new R3.b(motionEvent2));
                return null;
            }
        }), zza.f23477G, TimeUnit.MILLISECONDS).d(this.zze, new b() { // from class: com.google.ads.interactivemedia.pal.zzam
            @Override // p052g4.b
            public final Object then(h hVar) {
                this.zza.zze(hVar);
                return null;
            }
        });
    }

    public void sendPlaybackEnd() {
        this.zzh.zzd();
        if (this.zzj) {
            this.zzj = false;
            this.zzg.zza(8, this.zzk);
        }
    }

    public void sendPlaybackStart() {
        if (this.zzj) {
            return;
        }
        this.zzj = true;
        r rVarQ = Cw.q(this.zzf.d(this.zze, new zzas(this)), zza.f23477G, TimeUnit.MILLISECONDS);
        rVarQ.d(this.zze, new b() { // from class: com.google.ads.interactivemedia.pal.zzap
            @Override // p052g4.b
            public final Object then(h hVar) {
                this.zza.zzf(hVar);
                return null;
            }
        });
        rVarQ.d(j.f25346a, new b() { // from class: com.google.ads.interactivemedia.pal.zzaq
            @Override // p052g4.b
            public final Object then(h hVar) {
                this.zza.zzg(hVar);
                return null;
            }
        });
    }

    public final String zzc(h hVar) {
        C2679b2 c2679b2 = (C2679b2) hVar.f();
        Context context = this.zzd;
        c2679b2.getClass();
        return c2679b2.f23731a.zze(new R3.b(context), HttpUrl.FRAGMENT_ENCODE_SET);
    }

    public final /* synthetic */ Void zzd(h hVar) {
        this.zzg.zza(4, hVar.h() ? (String) hVar.f() : null);
        return null;
    }

    public final /* synthetic */ Void zze(h hVar) {
        this.zzg.zza(5, null);
        return null;
    }

    public final /* synthetic */ Void zzf(h hVar) {
        String str = hVar.h() ? (String) hVar.f() : null;
        this.zzk = str;
        this.zzg.zza(6, str);
        return null;
    }

    public final /* synthetic */ Void zzg(h hVar) {
        if (!this.zzj) {
            return null;
        }
        this.zzh.zzc(new zzar(this));
        return null;
    }
}
