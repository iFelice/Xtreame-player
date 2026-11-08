package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1980sL {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1521je f20881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AbstractC2073uA f20882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public UA f20883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C2190wN f20884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C2190wN f20885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C2190wN f20886f;

    public C1980sL(C1521je c1521je) {
        this.f20881a = c1521je;
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        this.f20882b = PA.f15340K;
        this.f20883c = UA.f16803M;
    }

    public static C2190wN a(InterfaceC0959Vc interfaceC0959Vc, AbstractC2073uA abstractC2073uA, C2190wN c2190wN, C1521je c1521je) {
        AbstractC0774Ie abstractC0774IeZzn = interfaceC0959Vc.zzn();
        int iZze = interfaceC0959Vc.zze();
        Object objF = abstractC0774IeZzn.o() ? null : abstractC0774IeZzn.f(iZze);
        if (!interfaceC0959Vc.p() && !abstractC0774IeZzn.o()) {
            C1521je c1521jeD = abstractC0774IeZzn.d(iZze, c1521je, false);
            interfaceC0959Vc.zzk();
            int i8 = Et.f13234a;
            c1521jeD.getClass();
        }
        for (int i9 = 0; i9 < abstractC2073uA.size(); i9++) {
            C2190wN c2190wN2 = (C2190wN) abstractC2073uA.get(i9);
            if (d(c2190wN2, objF, interfaceC0959Vc.p(), interfaceC0959Vc.zzb(), interfaceC0959Vc.zzc())) {
                return c2190wN2;
            }
        }
        if (abstractC2073uA.isEmpty() && c2190wN != null && d(c2190wN, objF, interfaceC0959Vc.p(), interfaceC0959Vc.zzb(), interfaceC0959Vc.zzc())) {
            return c2190wN;
        }
        return null;
    }

    public static boolean d(C2190wN c2190wN, Object obj, boolean z7, int i8, int i9) {
        if (!c2190wN.f21690a.equals(obj)) {
            return false;
        }
        int i10 = c2190wN.f21691b;
        if (z7) {
            if (i10 != i8 || c2190wN.f21692c != i9) {
                return false;
            }
        } else if (i10 != -1 || c2190wN.f21694e != -1) {
            return false;
        }
        return true;
    }

    public final void b(C1294f8 c1294f8, C2190wN c2190wN, AbstractC0774Ie abstractC0774Ie) {
        if (c2190wN == null) {
            return;
        }
        if (abstractC0774Ie.a(c2190wN.f21690a) != -1) {
            c1294f8.a(c2190wN, abstractC0774Ie);
            return;
        }
        AbstractC0774Ie abstractC0774Ie2 = (AbstractC0774Ie) this.f20883c.get(c2190wN);
        if (abstractC0774Ie2 != null) {
            c1294f8.a(c2190wN, abstractC0774Ie2);
        }
    }

    public final void c(AbstractC0774Ie abstractC0774Ie) {
        C1294f8 c1294f8 = new C1294f8(5, 0);
        if (this.f20882b.isEmpty()) {
            b(c1294f8, this.f20885e, abstractC0774Ie);
            if (!com.google.android.gms.internal.measurement.H1.E(this.f20886f, this.f20885e)) {
                b(c1294f8, this.f20886f, abstractC0774Ie);
            }
            if (!com.google.android.gms.internal.measurement.H1.E(this.f20884d, this.f20885e) && !com.google.android.gms.internal.measurement.H1.E(this.f20884d, this.f20886f)) {
                b(c1294f8, this.f20884d, abstractC0774Ie);
            }
        } else {
            for (int i8 = 0; i8 < this.f20882b.size(); i8++) {
                b(c1294f8, (C2190wN) this.f20882b.get(i8), abstractC0774Ie);
            }
            if (!this.f20882b.contains(this.f20884d)) {
                b(c1294f8, this.f20884d, abstractC0774Ie);
            }
        }
        this.f20883c = c1294f8.f();
    }
}
