package com.google.android.gms.internal.cast;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2451h0 extends AbstractC2457i2 {
    private static final InterfaceC2469l2 zzb = new C2439e0();
    private static final C2451h0 zzd;
    private int zze;
    private C2467l0 zzf;
    private X0 zzg;
    private InterfaceC2477n2 zzh = K2.f22483J;
    private InterfaceC2465k2 zzi = C2461j2.f22748J;

    static {
        C2451h0 c2451h0 = new C2451h0();
        zzd = c2451h0;
        AbstractC2457i2.e(C2451h0.class, c2451h0);
    }

    public static C2447g0 l() {
        return (C2447g0) zzd.j();
    }

    public static /* synthetic */ void m(C2451h0 c2451h0, C2467l0 c2467l0) {
        c2451h0.zzf = c2467l0;
        c2451h0.zze |= 1;
    }

    public static void n(C2451h0 c2451h0, ArrayList arrayList) {
        RandomAccess randomAccess = c2451h0.zzi;
        if (!((V1) randomAccess).f22546G) {
            C2461j2 c2461j2 = (C2461j2) randomAccess;
            int i8 = c2461j2.f22750I;
            int i9 = i8 == 0 ? 10 : i8 + i8;
            if (i9 < i8) {
                throw new IllegalArgumentException();
            }
            c2451h0.zzi = new C2461j2(Arrays.copyOf(c2461j2.f22749H, i9), c2461j2.f22750I, true);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((C2461j2) c2451h0.zzi).b(((EnumC2435d0) it.next()).f22723G);
        }
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzd, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b\u0004ࠞ", new Object[]{"zze", "zzf", "zzg", "zzh", V0.class, "zzi", Z.f22567C});
        }
        if (i9 == 3) {
            return new C2451h0();
        }
        if (i9 == 4) {
            return new C2447g0(zzd);
        }
        if (i9 != 5) {
            return null;
        }
        return zzd;
    }
}
