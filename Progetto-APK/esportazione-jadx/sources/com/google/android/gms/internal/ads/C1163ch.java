package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ch, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1163ch implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f18229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f18230b;

    public C1163ch(KJ kj, KJ kj2) {
        this.f18229a = kj;
        this.f18230b = kj2;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        return new C1112bh(((KJ) this.f18229a).zzb(), ((KJ) this.f18230b).zzb());
    }
}
