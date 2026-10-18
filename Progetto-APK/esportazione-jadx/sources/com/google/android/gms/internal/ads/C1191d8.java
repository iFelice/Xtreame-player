package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import p167v3.C3194b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.d8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1191d8 implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f18297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f18298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f18299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f18300d;

    public C1191d8(MJ mj, MJ mj2, MJ mj3, MJ mj4) {
        this.f18297a = mj;
        this.f18298b = mj2;
        this.f18299c = mj3;
        this.f18300d = mj4;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1139c8 zzb() {
        return new C1139c8((ScheduledExecutorService) this.f18297a.zzb(), (p167v3.x) this.f18298b.zzb(), (C3194b) this.f18299c.zzb(), (C0783In) this.f18300d.zzb());
    }
}
