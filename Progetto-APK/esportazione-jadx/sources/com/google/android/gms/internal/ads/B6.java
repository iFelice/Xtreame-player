package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class B6 extends AbstractC1873qH {
    public static final int zza = 7;
    public static final int zzb = 8;
    public static final int zzc = 9;
    public static final int zzd = 10;
    public static final int zze = 11;
    public static final int zzf = 12;
    public static final int zzg = 13;
    public static final int zzh = 14;
    public static final int zzi = 15;
    public static final int zzj = 16;
    public static final int zzk = 17;
    private static final B6 zzl;
    private static volatile SH zzm;
    private F7 zzA;
    private G7 zzB;
    private InterfaceC2236xH zzC;
    private int zzn;
    private int zzo;
    private int zzp = 1000;
    private C2018t7 zzu;
    private C2122v7 zzv;
    private InterfaceC2236xH zzw;
    private C2174w7 zzx;
    private N6 zzy;
    private G6 zzz;

    static {
        B6 b8 = new B6();
        zzl = b8;
        AbstractC1873qH.t(B6.class, b8);
    }

    public B6() {
        WH wh = WH.f17195J;
        this.zzw = wh;
        this.zzC = wh;
    }

    public static void A(B6 b8, C2122v7 c2122v7) {
        b8.getClass();
        b8.zzv = c2122v7;
        b8.zzn |= 8;
    }

    public static B6 C() {
        return zzl;
    }

    public static void D(B6 b8, EnumC2329z6 enumC2329z6) {
        b8.getClass();
        b8.zzo = enumC2329z6.f22131G;
        b8.zzn |= 1;
    }

    public final C2122v7 B() {
        C2122v7 c2122v7 = this.zzv;
        return c2122v7 == null ? C2122v7.B() : c2122v7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzl, "\u0004\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007᠌\u0000\b᠌\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzn", "zzo", C2277y6.f21994a, "zzp", B7.f12286a, "zzu", "zzv", "zzw", C1914r7.class, "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", U6.class});
            case 3:
                return new B6();
            case 4:
                return new A6(zzl);
            case 5:
                return zzl;
            case 6:
                SH c1821pH = zzm;
                if (c1821pH == null) {
                    synchronized (B6.class) {
                        try {
                            c1821pH = zzm;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzm = c1821pH;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return c1821pH;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
