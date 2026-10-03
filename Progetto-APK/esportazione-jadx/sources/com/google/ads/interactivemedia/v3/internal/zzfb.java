package com.google.ads.interactivemedia.v3.internal;

import android.graphics.Bitmap;
import p052g4.i;

/* JADX INFO: loaded from: classes.dex */
final class zzfb implements zzug {
    final /* synthetic */ i zza;
    final /* synthetic */ String zzb;

    public zzfb(zzfc zzfcVar, i iVar, String str) {
        this.zza = iVar;
        this.zzb = str;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzug
    public final void zza(Throwable th) {
        this.zza.a(new Exception("Failed to load image from: ".concat(String.valueOf(this.zzb)), th));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzug
    public final /* synthetic */ void zzb(Object obj) {
        this.zza.d((Bitmap) obj);
    }
}
