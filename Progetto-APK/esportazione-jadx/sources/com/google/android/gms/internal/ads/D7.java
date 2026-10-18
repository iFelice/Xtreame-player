package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.RandomAccess;
import okhttp3.HttpUrl;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class D7 extends AbstractC1873qH {
    public static final int zza = 9;
    public static final int zzb = 10;
    public static final int zzc = 11;
    public static final int zzd = 12;
    public static final int zze = 13;
    public static final int zzf = 14;
    public static final int zzg = 15;
    public static final int zzh = 16;
    public static final int zzi = 17;
    public static final int zzj = 18;
    public static final int zzk = 19;
    public static final int zzl = 20;
    public static final int zzm = 21;
    private static final D7 zzn;
    private static volatile SH zzo;
    private C2278y7 zzA;
    private A7 zzB;
    private F6 zzC;
    private B6 zzD;
    private M6 zzE;
    private C1759o7 zzF;
    private C1397h7 zzG;
    private int zzp;
    private int zzu;
    private int zzw;
    private T6 zzy;
    private String zzv = HttpUrl.FRAGMENT_ENCODE_SET;
    private int zzx = 1000;
    private InterfaceC2184wH zzz = FH.f13343J;

    static {
        D7 d8 = new D7();
        zzn = d8;
        AbstractC1873qH.t(D7.class, d8);
    }

    public static void A(D7 d8, String str) {
        d8.getClass();
        str.getClass();
        d8.zzp |= 2;
        d8.zzv = str;
    }

    public static void B(D7 d8, ArrayList arrayList) {
        RandomAccess randomAccess = d8.zzz;
        if (!((QG) randomAccess).f16004G) {
            FH fh = (FH) randomAccess;
            int i8 = fh.f13345I;
            int i9 = i8 == 0 ? 10 : i8 + i8;
            if (i9 < i8) {
                throw new IllegalArgumentException();
            }
            d8.zzz = new FH(Arrays.copyOf(fh.f13344H, i9), fh.f13345I, true);
        }
        PG.c(arrayList, d8.zzz);
    }

    public static void C(D7 d8) {
        d8.getClass();
        d8.zzz = FH.f13343J;
    }

    public static void D(D7 d8, C2278y7 c2278y7) {
        d8.getClass();
        d8.zzA = c2278y7;
        d8.zzp |= 32;
    }

    public static void E(D7 d8, B6 b8) {
        d8.getClass();
        d8.zzD = b8;
        d8.zzp |= 256;
    }

    public static void F(D7 d8, C1397h7 c1397h7) {
        d8.getClass();
        c1397h7.getClass();
        d8.zzG = c1397h7;
        d8.zzp |= 2048;
    }

    public static void H(D7 d8, M6 m7) {
        d8.getClass();
        m7.getClass();
        d8.zzE = m7;
        d8.zzp |= IMediaList.Event.ItemAdded;
    }

    public static void I(D7 d8, C1759o7 c1759o7) {
        d8.getClass();
        d8.zzF = c1759o7;
        d8.zzp |= 1024;
    }

    public static C7 L() {
        return (C7) zzn.g();
    }

    public final String G() {
        return this.zzv;
    }

    public final B6 J() {
        B6 b8 = this.zzD;
        return b8 == null ? B6.C() : b8;
    }

    public final C2278y7 K() {
        C2278y7 c2278y7 = this.zzA;
        return c2278y7 == null ? C2278y7.B() : c2278y7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzn, "\u0004\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\tင\u0000\nဈ\u0001\u000bဋ\u0002\f᠌\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzp", "zzu", "zzv", "zzw", "zzx", B7.f12286a, "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzG"});
            case 3:
                return new D7();
            case 4:
                return new C7(zzn);
            case 5:
                return zzn;
            case 6:
                SH c1821pH = zzo;
                if (c1821pH == null) {
                    synchronized (D7.class) {
                        try {
                            c1821pH = zzo;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzo = c1821pH;
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
