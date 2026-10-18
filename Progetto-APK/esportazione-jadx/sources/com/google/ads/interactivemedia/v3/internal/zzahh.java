package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzahh extends zzady implements zzafc {
    private static final zzahh zzb;
    private long zzd;
    private long zze;

    static {
        zzahh zzahhVar = new zzahh();
        zzb = zzahhVar;
        zzady.zzaM(zzahh.class, zzahhVar);
    }

    private zzahh() {
    }

    public static zzahg zzc() {
        return (zzahg) zzb.zzay();
    }

    public static zzahh zze() {
        return zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002", new Object[]{"zzd", "zze"});
        }
        if (i9 == 3) {
            return new zzahh();
        }
        zzahf zzahfVar = null;
        if (i9 == 4) {
            return new zzahg(zzahfVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
