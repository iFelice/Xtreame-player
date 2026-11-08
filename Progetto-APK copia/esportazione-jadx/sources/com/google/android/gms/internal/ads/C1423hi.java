package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1423hi implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f19122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f19123b;

    public C1423hi(MJ mj, MJ mj2) {
        this.f19122a = mj;
        this.f19123b = mj2;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        return new C1371gi((InterfaceC0715Ef) ((C1061ai) this.f19122a).f17908a.f21885K, (Executor) this.f19123b.zzb());
    }
}
