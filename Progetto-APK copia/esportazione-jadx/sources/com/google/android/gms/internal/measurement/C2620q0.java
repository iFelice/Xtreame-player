package com.google.android.gms.internal.measurement;

import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2620q0 extends AbstractC2631s2 {
    private static final C2620q0 zzb;
    private int zzd;
    private int zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2661y2 zzg = W2.f23030K;
    private boolean zzh;
    private C2644v0 zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;

    static {
        C2620q0 c2620q0 = new C2620q0();
        zzb = c2620q0;
        AbstractC2631s2.l(C2620q0.class, c2620q0);
    }

    public static C2615p0 s() {
        return (C2615p0) zzb.f();
    }

    public static /* synthetic */ void x(C2620q0 c2620q0, String str) {
        c2620q0.zzd |= 2;
        c2620q0.zzf = str;
    }

    public static void y(C2620q0 c2620q0, int i8, C2629s0 c2629s0) {
        InterfaceC2661y2 interfaceC2661y2 = c2620q0.zzg;
        if (!((AbstractC2546d2) interfaceC2661y2).f23114G) {
            int size = interfaceC2661y2.size();
            c2620q0.zzg = interfaceC2661y2.zzd(size + size);
        }
        c2620q0.zzg.set(i8, c2629s0);
    }

    public final boolean A() {
        return this.zzk;
    }

    public final boolean B() {
        return this.zzl;
    }

    public final boolean C() {
        return (this.zzd & 8) != 0;
    }

    public final boolean D() {
        return (this.zzd & 1) != 0;
    }

    public final boolean E() {
        return (this.zzd & 64) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzd", "zze", "zzf", "zzg", C2629s0.class, "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i9 == 3) {
            return new C2620q0();
        }
        if (i9 == 4) {
            return new C2615p0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zzg.size();
    }

    public final int r() {
        return this.zze;
    }

    public final C2629s0 t(int i8) {
        return (C2629s0) this.zzg.get(i8);
    }

    public final C2644v0 u() {
        C2644v0 c2644v0 = this.zzi;
        return c2644v0 == null ? C2644v0.r() : c2644v0;
    }

    public final String v() {
        return this.zzf;
    }

    public final List w() {
        return this.zzg;
    }

    public final boolean z() {
        return this.zzj;
    }
}
