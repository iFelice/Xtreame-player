package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2581j1 extends AbstractC2631s2 {
    private static final C2581j1 zzb;
    private int zzd;
    private InterfaceC2661y2 zze = W2.f23030K;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private int zzh;

    static {
        C2581j1 c2581j1 = new C2581j1();
        zzb = c2581j1;
        AbstractC2631s2.l(C2581j1.class, c2581j1);
    }

    public static /* synthetic */ void A(C2581j1 c2581j1, int i8, C2593l1 c2593l1) {
        c2581j1.F();
        c2581j1.zze.set(i8, c2593l1);
    }

    public static /* synthetic */ void B(C2581j1 c2581j1, String str) {
        str.getClass();
        c2581j1.zzd |= 1;
        c2581j1.zzf = str;
    }

    public static /* synthetic */ void C(C2581j1 c2581j1, String str) {
        str.getClass();
        c2581j1.zzd |= 2;
        c2581j1.zzg = str;
    }

    public static C2569h1 r() {
        return (C2569h1) zzb.f();
    }

    public static C2569h1 s(C2581j1 c2581j1) {
        AbstractC2626r2 abstractC2626r2F = zzb.f();
        abstractC2626r2F.c(c2581j1);
        return (C2569h1) abstractC2626r2F;
    }

    public static /* synthetic */ void x(C2581j1 c2581j1, ArrayList arrayList) {
        c2581j1.F();
        AbstractC2540c2.b(arrayList, c2581j1.zze);
    }

    public static /* synthetic */ void y(C2581j1 c2581j1, C2593l1 c2593l1) {
        c2581j1.F();
        c2581j1.zze.add(c2593l1);
    }

    public static void z(C2581j1 c2581j1) {
        c2581j1.zze = W2.f23030K;
    }

    public final boolean D() {
        return (this.zzd & 1) != 0;
    }

    public final boolean E() {
        return (this.zzd & 2) != 0;
    }

    public final void F() {
        InterfaceC2661y2 interfaceC2661y2 = this.zze;
        if (((AbstractC2546d2) interfaceC2661y2).f23114G) {
            return;
        }
        int size = interfaceC2661y2.size();
        this.zze = interfaceC2661y2.zzd(size + size);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000\bဈ\u0001\t᠌\u0002", new Object[]{"zzd", "zze", C2593l1.class, "zzf", "zzg", "zzh", C2575i1.f23164a});
        }
        if (i9 == 3) {
            return new C2581j1();
        }
        if (i9 == 4) {
            return new C2569h1(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zze.size();
    }

    public final C2593l1 t(int i8) {
        return (C2593l1) this.zze.get(i8);
    }

    public final String u() {
        return this.zzf;
    }

    public final String v() {
        return this.zzg;
    }

    public final List w() {
        return this.zze;
    }
}
