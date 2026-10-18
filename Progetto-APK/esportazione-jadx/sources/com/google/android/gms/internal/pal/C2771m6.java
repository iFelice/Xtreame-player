package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.m6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2771m6 extends D {
    private static final C2771m6 zzb;
    private int zze;
    private I zzf = C2733i0.f23843J;

    static {
        C2771m6 c2771m6 = new C2771m6();
        zzb = c2771m6;
        D.f(C2771m6.class, c2771m6);
    }

    public static C2739i6 o() {
        return (C2739i6) zzb.h();
    }

    public static C2771m6 p(byte[] bArr, C2851x c2851x) {
        return (C2771m6) D.k(zzb, bArr, c2851x);
    }

    public static void s(C2771m6 c2771m6, C2763l6 c2763l6) {
        I i8 = c2771m6.zzf;
        if (!((AbstractC2748k) i8).f23887G) {
            c2771m6.zzf = D.d(i8);
        }
        c2771m6.zzf.add(c2763l6);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", C2763l6.class});
        }
        if (i9 == 3) {
            return new C2771m6();
        }
        if (i9 == 4) {
            return new C2739i6(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzf.size();
    }

    public final int n() {
        return this.zze;
    }

    public final I q() {
        return this.zzf;
    }
}
