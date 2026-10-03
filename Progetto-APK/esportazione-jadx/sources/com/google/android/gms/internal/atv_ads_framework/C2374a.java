package com.google.android.gms.internal.atv_ads_framework;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2374a extends U {
    private static final X zzb = new C2383e0();
    private static final C2374a zzd;
    private W zze = V.f22293J;

    static {
        C2374a c2374a = new C2374a();
        zzd = c2374a;
        U.j(C2374a.class, c2374a);
    }

    public static W0 l() {
        return (W0) zzd.f();
    }

    public static void m(C2374a c2374a) {
        RandomAccess randomAccess = c2374a.zze;
        if (!((F) randomAccess).f22256G) {
            V v5 = (V) randomAccess;
            int i8 = v5.f22295I;
            int i9 = i8 == 0 ? 10 : i8 + i8;
            if (i9 < i8) {
                throw new IllegalArgumentException();
            }
            c2374a.zze = new V(Arrays.copyOf(v5.f22294H, i9), v5.f22295I, true);
        }
        ((V) c2374a.zze).b(1);
    }

    public static void n(C2374a c2374a, HashSet hashSet) {
        RandomAccess randomAccess = c2374a.zze;
        if (!((F) randomAccess).f22256G) {
            V v5 = (V) randomAccess;
            int i8 = v5.f22295I;
            int i9 = i8 == 0 ? 10 : i8 + i8;
            if (i9 < i8) {
                throw new IllegalArgumentException();
            }
            c2374a.zze = new V(Arrays.copyOf(v5.f22294H, i9), v5.f22295I, true);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((V) c2374a.zze).b(((V0) it.next()).f22300G);
        }
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.U
    public final Object d(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2416v0(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"zze", C2383e0.f22322L});
        }
        if (i9 == 3) {
            return new C2374a();
        }
        if (i9 == 4) {
            return new W0(zzd);
        }
        if (i9 != 5) {
            return null;
        }
        return zzd;
    }
}
