package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.p1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2616p1 extends AbstractC2631s2 {
    private static final C2616p1 zzb;
    private InterfaceC2656x2 zzd;
    private InterfaceC2656x2 zze;
    private InterfaceC2661y2 zzf;
    private InterfaceC2661y2 zzg;

    static {
        C2616p1 c2616p1 = new C2616p1();
        zzb = c2616p1;
        AbstractC2631s2.l(C2616p1.class, c2616p1);
    }

    public C2616p1() {
        G2 g8 = G2.f22920K;
        this.zzd = g8;
        this.zze = g8;
        W2 w7 = W2.f23030K;
        this.zzf = w7;
        this.zzg = w7;
    }

    public static void A(C2616p1 c2616p1, ArrayList arrayList) {
        InterfaceC2661y2 interfaceC2661y2 = c2616p1.zzf;
        if (!((AbstractC2546d2) interfaceC2661y2).f23114G) {
            int size = interfaceC2661y2.size();
            c2616p1.zzf = interfaceC2661y2.zzd(size + size);
        }
        AbstractC2540c2.b(arrayList, c2616p1.zzf);
    }

    public static void B(C2616p1 c2616p1, List list) {
        RandomAccess randomAccess = c2616p1.zze;
        if (!((AbstractC2546d2) randomAccess).f23114G) {
            G2 g8 = (G2) randomAccess;
            int i8 = g8.f22922I;
            c2616p1.zze = g8.zzd(i8 + i8);
        }
        AbstractC2540c2.b(list, c2616p1.zze);
    }

    public static void C(C2616p1 c2616p1, List list) {
        InterfaceC2661y2 interfaceC2661y2 = c2616p1.zzg;
        if (!((AbstractC2546d2) interfaceC2661y2).f23114G) {
            int size = interfaceC2661y2.size();
            c2616p1.zzg = interfaceC2661y2.zzd(size + size);
        }
        AbstractC2540c2.b(list, c2616p1.zzg);
    }

    public static void D(C2616p1 c2616p1, List list) {
        RandomAccess randomAccess = c2616p1.zzd;
        if (!((AbstractC2546d2) randomAccess).f23114G) {
            G2 g8 = (G2) randomAccess;
            int i8 = g8.f22922I;
            c2616p1.zzd = g8.zzd(i8 + i8);
        }
        AbstractC2540c2.b(list, c2616p1.zzd);
    }

    public static void E(C2616p1 c2616p1) {
        c2616p1.zzf = W2.f23030K;
    }

    public static void F(C2616p1 c2616p1) {
        c2616p1.zze = G2.f22920K;
    }

    public static void G(C2616p1 c2616p1) {
        c2616p1.zzg = W2.f23030K;
    }

    public static void H(C2616p1 c2616p1) {
        c2616p1.zzd = G2.f22920K;
    }

    public static C2611o1 u() {
        return (C2611o1) zzb.f();
    }

    public static C2616p1 v() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzd", "zze", "zzf", Z0.class, "zzg", C2625r1.class});
        }
        if (i9 == 3) {
            return new C2616p1();
        }
        if (i9 == 4) {
            return new C2611o1(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zzf.size();
    }

    public final int r() {
        return ((G2) this.zze).size();
    }

    public final int s() {
        return this.zzg.size();
    }

    public final int t() {
        return ((G2) this.zzd).size();
    }

    public final List w() {
        return this.zzf;
    }

    public final List x() {
        return this.zze;
    }

    public final List y() {
        return this.zzg;
    }

    public final InterfaceC2656x2 z() {
        return this.zzd;
    }
}
