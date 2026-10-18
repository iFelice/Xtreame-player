package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class F2 implements M2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final U1 f22463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Q2 f22464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2437d2 f22465c;

    public F2(Q2 q7, C2437d2 c2437d2, U1 u7) {
        this.f22464b = q7;
        this.f22465c = c2437d2;
        this.f22463a = u7;
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final void a(Object obj) {
        this.f22464b.getClass();
        Q2.c(obj);
        this.f22465c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final void b(Object obj, Object obj2) {
        N2.r(this.f22464b, obj, obj2);
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final boolean c(Object obj) {
        this.f22465c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final void d(Object obj, C2433c2 c2433c2) {
        this.f22465c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final int zza(Object obj) {
        this.f22464b.getClass();
        P2 p7 = ((AbstractC2457i2) obj).zzc;
        int i8 = p7.f22519c;
        if (i8 != -1) {
            return i8;
        }
        p7.f22519c = 0;
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final int zzb(Object obj) {
        this.f22464b.getClass();
        ((AbstractC2457i2) obj).zzc.getClass();
        return 506991;
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final AbstractC2457i2 zzc() {
        U1 u7 = this.f22463a;
        return u7 instanceof AbstractC2457i2 ? (AbstractC2457i2) ((AbstractC2457i2) u7).h(4, null) : ((AbstractC2453h2) ((AbstractC2457i2) u7).h(5, null)).c();
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final boolean zzg(Object obj, Object obj2) {
        this.f22464b.getClass();
        return ((AbstractC2457i2) obj).zzc.equals(((AbstractC2457i2) obj2).zzc);
    }
}
