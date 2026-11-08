package com.google.ads.interactivemedia.pal;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.internal.pal.C2679b2;
import p052g4.b;
import p052g4.h;

/* JADX INFO: loaded from: classes.dex */
final class zzas implements b {
    final /* synthetic */ NonceManager zza;

    public zzas(NonceManager nonceManager) {
        this.zza = nonceManager;
    }

    @Override // p052g4.b
    public final Object then(h hVar) {
        Activity activityZza = NonceManager.zza(this.zza);
        C2679b2 c2679b2 = (C2679b2) hVar.f();
        Context context = this.zza.zzd;
        c2679b2.getClass();
        return c2679b2.f23731a.zzk(new R3.b(context), new R3.b(null), new R3.b(activityZza));
    }
}
