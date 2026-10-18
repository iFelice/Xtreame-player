package com.google.android.gms.internal.measurement;

import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2533b1 extends AbstractC2631s2 {
    private static final C2533b1 zzb;
    private int zzd;
    private InterfaceC2661y2 zze = W2.f23030K;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzg;
    private long zzh;
    private int zzi;

    static {
        C2533b1 c2533b1 = new C2533b1();
        zzb = c2533b1;
        AbstractC2631s2.l(C2533b1.class, c2533b1);
    }

    public static void A(C2533b1 c2533b1) {
        c2533b1.zze = W2.f23030K;
    }

    public static /* synthetic */ void B(int i8, C2533b1 c2533b1) {
        c2533b1.J();
        c2533b1.zze.remove(i8);
    }

    public static /* synthetic */ void C(C2533b1 c2533b1, String str) {
        str.getClass();
        c2533b1.zzd |= 1;
        c2533b1.zzf = str;
    }

    public static /* synthetic */ void D(C2533b1 c2533b1, int i8, C2557f1 c2557f1) {
        c2533b1.J();
        c2533b1.zze.set(i8, c2557f1);
    }

    public static /* synthetic */ void E(long j8, C2533b1 c2533b1) {
        c2533b1.zzd |= 4;
        c2533b1.zzh = j8;
    }

    public static /* synthetic */ void F(long j8, C2533b1 c2533b1) {
        c2533b1.zzd |= 2;
        c2533b1.zzg = j8;
    }

    public static C2527a1 u() {
        return (C2527a1) zzb.f();
    }

    public static /* synthetic */ void y(C2533b1 c2533b1, Iterable iterable) {
        c2533b1.J();
        AbstractC2540c2.b(iterable, c2533b1.zze);
    }

    public static /* synthetic */ void z(C2533b1 c2533b1, C2557f1 c2557f1) {
        c2557f1.getClass();
        c2533b1.J();
        c2533b1.zze.add(c2557f1);
    }

    public final boolean G() {
        return (this.zzd & 8) != 0;
    }

    public final boolean H() {
        return (this.zzd & 4) != 0;
    }

    public final boolean I() {
        return (this.zzd & 2) != 0;
    }

    public final void J() {
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
            return new X2(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zzd", "zze", C2557f1.class, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i9 == 3) {
            return new C2533b1();
        }
        if (i9 == 4) {
            return new C2527a1(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zzi;
    }

    public final int r() {
        return this.zze.size();
    }

    public final long s() {
        return this.zzh;
    }

    public final long t() {
        return this.zzg;
    }

    public final C2557f1 v(int i8) {
        return (C2557f1) this.zze.get(i8);
    }

    public final String w() {
        return this.zzf;
    }

    public final List x() {
        return this.zze;
    }
}
