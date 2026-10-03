package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class V extends AbstractC2457i2 {
    private static final V zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;

    static {
        V v5 = new V();
        zzb = v5;
        AbstractC2457i2.e(V.class, v5);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007\tင\b\nင\t\u000bင\n\fဇ\u000b", new Object[]{"zzd", "zze", "zzf", "zzg", C2517y.f22826K, "zzh", C2517y.f22827L, "zzi", C2517y.f22825J, "zzj", C2517y.f22828M, "zzk", C2517y.f22829N, "zzl", C2517y.f22824I, "zzm", "zzn", "zzo", "zzp"});
        }
        if (i10 == 3) {
            return new V();
        }
        if (i10 == 4) {
            return new U(i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
