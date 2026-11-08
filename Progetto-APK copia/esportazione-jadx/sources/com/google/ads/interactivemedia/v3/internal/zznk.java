package com.google.ads.interactivemedia.v3.internal;

import android.os.Bundle;
import p052g4.i;

/* JADX INFO: loaded from: classes.dex */
final class zznk extends zzmw {
    final /* synthetic */ i zza;

    public zznk(zznm zznmVar, i iVar) {
        this.zza = iVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzmx
    public final void zzb(int i8) {
        this.zza.c(new zzng(i8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzmx
    public final void zzc(Bundle bundle) {
        this.zza.d(bundle.getString("newToken"));
    }
}
