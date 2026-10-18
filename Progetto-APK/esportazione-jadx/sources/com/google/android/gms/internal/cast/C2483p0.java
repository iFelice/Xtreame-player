package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2483p0 extends AbstractC2457i2 {
    private static final C2483p0 zzb;
    private int zzd;
    private int zze;

    static {
        C2483p0 c2483p0 = new C2483p0();
        zzb = c2483p0;
        AbstractC2457i2.e(C2483p0.class, c2483p0);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", C2517y.f22837V});
        }
        if (i10 == 3) {
            return new C2483p0();
        }
        if (i10 == 4) {
            return new U(6, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
