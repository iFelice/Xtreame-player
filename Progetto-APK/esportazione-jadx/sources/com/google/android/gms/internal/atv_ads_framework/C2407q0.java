package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2407q0 implements InterfaceC2418w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f22362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final A0 f22363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final N f22364c;

    public C2407q0(A0 a8, N n7, E e8) {
        this.f22363b = a8;
        this.f22364c = n7;
        this.f22362a = e8;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final void a(Object obj) {
        this.f22363b.getClass();
        A0.c(obj);
        this.f22364c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final void b(Object obj, Object obj2) {
        y0.a(this.f22363b, obj, obj2);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final boolean c(Object obj) {
        this.f22364c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final void d(Object obj, M m7) {
        this.f22364c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final int zza(Object obj) {
        this.f22363b.getClass();
        z0 z0Var = ((U) obj).zzc;
        int i8 = z0Var.f22409c;
        if (i8 != -1) {
            return i8;
        }
        z0Var.f22409c = 0;
        return 0;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final int zzb(Object obj) {
        this.f22363b.getClass();
        ((U) obj).zzc.getClass();
        return 506991;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final U zzc() {
        E e8 = this.f22362a;
        return e8 instanceof U ? (U) ((U) e8).d(4) : ((T) ((U) e8).d(5)).c();
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final boolean zzg(Object obj, Object obj2) {
        A0 a8 = this.f22363b;
        a8.getClass();
        z0 z0Var = ((U) obj).zzc;
        a8.getClass();
        return z0Var.equals(((U) obj2).zzc);
    }
}
