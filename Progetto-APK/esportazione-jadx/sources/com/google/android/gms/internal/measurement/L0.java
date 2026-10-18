package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class L0 extends AbstractC2631s2 {
    private static final L0 zzb;
    private InterfaceC2661y2 zzd = W2.f23030K;

    static {
        L0 l4 = new L0();
        zzb = l4;
        AbstractC2631s2.l(L0.class, l4);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new X2(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzd"});
        }
        if (i10 == 3) {
            return new L0();
        }
        if (i10 == 4) {
            return new C2634t0(7, i9);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
