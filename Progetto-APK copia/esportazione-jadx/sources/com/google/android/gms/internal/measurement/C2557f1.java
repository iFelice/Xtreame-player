package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2557f1 extends AbstractC2631s2 {
    private static final C2557f1 zzb;
    private int zzd;
    private long zzg;
    private float zzh;
    private double zzi;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2661y2 zzj = W2.f23030K;

    static {
        C2557f1 c2557f1 = new C2557f1();
        zzb = c2557f1;
        AbstractC2631s2.l(C2557f1.class, c2557f1);
    }

    public static /* synthetic */ void A(C2557f1 c2557f1) {
        c2557f1.zzd &= -17;
        c2557f1.zzi = 0.0d;
    }

    public static /* synthetic */ void B(C2557f1 c2557f1) {
        c2557f1.zzd &= -5;
        c2557f1.zzg = 0L;
    }

    public static void C(C2557f1 c2557f1) {
        c2557f1.zzj = W2.f23030K;
    }

    public static /* synthetic */ void D(C2557f1 c2557f1) {
        c2557f1.zzd &= -3;
        c2557f1.zzf = zzb.zzf;
    }

    public static /* synthetic */ void E(C2557f1 c2557f1, double d6) {
        c2557f1.zzd |= 16;
        c2557f1.zzi = d6;
    }

    public static /* synthetic */ void F(C2557f1 c2557f1, long j8) {
        c2557f1.zzd |= 4;
        c2557f1.zzg = j8;
    }

    public static /* synthetic */ void G(C2557f1 c2557f1, String str) {
        str.getClass();
        c2557f1.zzd |= 1;
        c2557f1.zze = str;
    }

    public static /* synthetic */ void H(C2557f1 c2557f1, String str) {
        str.getClass();
        c2557f1.zzd |= 2;
        c2557f1.zzf = str;
    }

    public static C2551e1 u() {
        return (C2551e1) zzb.f();
    }

    public static void y(C2557f1 c2557f1, ArrayList arrayList) {
        InterfaceC2661y2 interfaceC2661y2 = c2557f1.zzj;
        if (!((AbstractC2546d2) interfaceC2661y2).f23114G) {
            int size = interfaceC2661y2.size();
            c2557f1.zzj = interfaceC2661y2.zzd(size + size);
        }
        AbstractC2540c2.b(arrayList, c2557f1.zzj);
    }

    public static void z(C2557f1 c2557f1, C2557f1 c2557f2) {
        InterfaceC2661y2 interfaceC2661y2 = c2557f1.zzj;
        if (!((AbstractC2546d2) interfaceC2661y2).f23114G) {
            int size = interfaceC2661y2.size();
            c2557f1.zzj = interfaceC2661y2.zzd(size + size);
        }
        c2557f1.zzj.add(c2557f2);
    }

    public final boolean I() {
        return (this.zzd & 16) != 0;
    }

    public final boolean J() {
        return (this.zzd & 8) != 0;
    }

    public final boolean K() {
        return (this.zzd & 4) != 0;
    }

    public final boolean L() {
        return (this.zzd & 1) != 0;
    }

    public final boolean M() {
        return (this.zzd & 2) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", C2557f1.class});
        }
        if (i9 == 3) {
            return new C2557f1();
        }
        if (i9 == 4) {
            return new C2551e1(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final double q() {
        return this.zzi;
    }

    public final float r() {
        return this.zzh;
    }

    public final int s() {
        return this.zzj.size();
    }

    public final long t() {
        return this.zzg;
    }

    public final String v() {
        return this.zze;
    }

    public final String w() {
        return this.zzf;
    }

    public final List x() {
        return this.zzj;
    }
}
