package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Mh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0837Mh implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f14778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f14779b;

    public C0837Mh(MJ mj, MJ mj2) {
        this.f14778a = mj;
        this.f14779b = mj2;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0966Vj zzb() {
        return new C0966Vj((ScheduledExecutorService) this.f14778a.zzb(), (P3.a) this.f14779b.zzb());
    }
}
