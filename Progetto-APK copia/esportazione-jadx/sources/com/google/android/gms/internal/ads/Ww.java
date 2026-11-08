package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.RandomAccess;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class Ww extends AbstractC1873qH {
    private static final Ww zza;
    private static volatile SH zzb;
    private int zzA;
    private int zzE;
    private int zzF;
    private int zzG;
    private long zzH;
    private int zzI;
    private int zzP;
    private int zzQ;
    private int zzS;
    private long zzab;
    private int zzac;
    private int zzad;
    private int zzae;
    private C1334fx zzaf;
    private C1128bx zzag;
    private C1179cx zzah;
    private int zzc;
    private int zzd;
    private int zze;
    private long zzg;
    private long zzh;
    private long zzi;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzp;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2080uH zzj = C1924rH.f20709J;
    private String zzu = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzv = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzw = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzx = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzy = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzz = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzB = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzC = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2184wH zzD = FH.f13343J;
    private String zzJ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzK = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzL = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzM = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzN = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzO = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzR = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzT = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzU = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzV = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzW = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzX = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzY = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzZ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzaa = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        Ww ww = new Ww();
        zza = ww;
        AbstractC1873qH.t(Ww.class, ww);
    }

    public static Vw A() {
        return (Vw) zza.g();
    }

    public static /* synthetic */ void B(Ww ww, String str) {
        str.getClass();
        ww.zzV = str;
    }

    public static /* synthetic */ void D(Ww ww, String str) {
        str.getClass();
        ww.zzX = str;
    }

    public static /* synthetic */ void E(Ww ww, String str) {
        str.getClass();
        ww.zzY = str;
    }

    public static /* synthetic */ void F(Ww ww, String str) {
        str.getClass();
        ww.zzZ = str;
    }

    public static /* synthetic */ void G(Ww ww, String str) {
        str.getClass();
        ww.zzaa = str;
    }

    public static /* synthetic */ void L(Ww ww, String str) {
        str.getClass();
        ww.zzu = str;
    }

    public static /* synthetic */ void M(Ww ww, String str) {
        str.getClass();
        ww.zzx = str;
    }

    public static /* synthetic */ void N(Ww ww, String str) {
        str.getClass();
        ww.zzz = str;
    }

    public static void P(Ww ww, AbstractCollection abstractCollection) {
        RandomAccess randomAccess = ww.zzD;
        if (!((QG) randomAccess).f16004G) {
            FH fh = (FH) randomAccess;
            int i8 = fh.f13345I;
            int i9 = i8 == 0 ? 10 : i8 + i8;
            if (i9 < i8) {
                throw new IllegalArgumentException();
            }
            ww.zzD = new FH(Arrays.copyOf(fh.f13344H, i9), fh.f13345I, true);
        }
        PG.c(abstractCollection, ww.zzD);
    }

    public static /* synthetic */ void S(Ww ww, String str) {
        str.getClass();
        ww.zzJ = str;
    }

    public static /* synthetic */ void T(Ww ww, String str) {
        str.getClass();
        ww.zzK = str;
    }

    public static /* synthetic */ void W(Ww ww, int i8) {
        if (i8 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        ww.zzE = i8 - 2;
    }

    public static /* synthetic */ void X(Ww ww, int i8) {
        if (i8 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        ww.zzI = i8 - 2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u00045\u0000\u0001\u000155\u0000\u0002\u0000\u0001\f\u0002\u0007\u0003\u0002\u0004\f\u0005Ȉ\u0006Ȉ\u0007Ȉ\b\u0004\t\f\n\u0004\u000b\u0002\f\f\rȈ\u000eȈ\u000fȈ\u0010Ȉ\u0011Ȉ\u0012Ȉ\u0013Ȉ\u0014Ȉ\u0015Ȉ\u0016Ȉ\u0017Ȉ\u0018Ȉ\u0019%\u001aȈ\u001bȈ\u001cȈ\u001d\u0002\u001eȈ\u001f\u0002 \u0002!\u0002\"\u0002#\u0002$\u0002%,&\f'\f(\f)ဉ\u0000*ဉ\u0001+\u0004,Ȉ-Ȉ.Ȉ/\f0\u00041\u00042Ȉ3Ȉ4ဉ\u00025\f", new Object[]{"zzc", "zzd", "zzk", "zzl", "zzp", "zzu", "zzx", "zzz", "zzA", "zzE", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzV", "zzW", "zzX", "zzY", "zzZ", "zzaa", "zzv", "zzw", "zzB", "zzC", "zzD", "zzL", "zzM", "zzU", "zzab", "zzf", "zzg", "zzh", "zzi", "zzm", "zzn", "zzo", "zzj", "zzac", "zzad", "zze", "zzaf", "zzag", "zzP", "zzR", "zzO", "zzN", "zzae", "zzQ", "zzS", "zzT", "zzy", "zzah", "zzF"});
            case 3:
                return new Ww();
            case 4:
                return new Vw(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (Ww.class) {
                        try {
                            c1821pH = zzb;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzb = c1821pH;
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
