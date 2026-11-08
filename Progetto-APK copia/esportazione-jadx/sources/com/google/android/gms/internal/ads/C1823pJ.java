package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1823pJ extends AbstractC1873qH {
    private static final C1823pJ zza;
    private static volatile SH zzb;
    private InterfaceC2236xH zzA;
    private InterfaceC2236xH zzB;
    private C1667mJ zzC;
    private InterfaceC2236xH zzD;
    private GI zzE;
    private String zzF;
    private AI zzG;
    private InterfaceC2236xH zzH;
    private UI zzI;
    private int zzJ;
    private InterfaceC2236xH zzK;
    private InterfaceC2236xH zzL;
    private long zzM;
    private C1771oJ zzN;
    private XI zzO;
    private String zzP;
    private int zzc;
    private int zzd;
    private int zze;
    private EI zzi;
    private InterfaceC2236xH zzj;
    private InterfaceC2236xH zzk;
    private String zzl;
    private C1150cJ zzm;
    private boolean zzn;
    private InterfaceC2236xH zzo;
    private String zzp;
    private boolean zzu;
    private boolean zzv;
    private XG zzw;
    private C1461iJ zzx;
    private boolean zzy;
    private String zzz;
    private byte zzQ = 2;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C1823pJ c1823pJ = new C1823pJ();
        zza = c1823pJ;
        AbstractC1873qH.t(C1823pJ.class, c1823pJ);
    }

    public C1823pJ() {
        WH wh = WH.f17195J;
        this.zzj = wh;
        this.zzk = wh;
        this.zzl = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzo = wh;
        this.zzp = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzw = XG.f17401H;
        this.zzz = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzA = wh;
        this.zzB = wh;
        this.zzD = wh;
        this.zzF = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzH = wh;
        this.zzK = wh;
        this.zzL = wh;
        this.zzP = HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public static CI A() {
        return (CI) zza.g();
    }

    public static /* synthetic */ void E(C1823pJ c1823pJ, String str) {
        str.getClass();
        c1823pJ.zzc |= 4;
        c1823pJ.zzf = str;
    }

    public static /* synthetic */ void F(C1823pJ c1823pJ, String str) {
        str.getClass();
        c1823pJ.zzc |= 8;
        c1823pJ.zzg = str;
    }

    public static /* synthetic */ void G(C1823pJ c1823pJ, EI ei) {
        c1823pJ.zzi = ei;
        c1823pJ.zzc |= 32;
    }

    public static void H(C1823pJ c1823pJ, C1357gJ c1357gJ) {
        InterfaceC2236xH interfaceC2236xH = c1823pJ.zzj;
        if (!((QG) interfaceC2236xH).f16004G) {
            c1823pJ.zzj = AbstractC1873qH.h(interfaceC2236xH);
        }
        c1823pJ.zzj.add(c1357gJ);
    }

    public static /* synthetic */ void I(C1823pJ c1823pJ, String str) {
        c1823pJ.zzc |= 64;
        c1823pJ.zzl = str;
    }

    public static /* synthetic */ void J(C1823pJ c1823pJ) {
        c1823pJ.zzc &= -65;
        c1823pJ.zzl = zza.zzl;
    }

    public static /* synthetic */ void K(C1823pJ c1823pJ, C1150cJ c1150cJ) {
        c1823pJ.zzm = c1150cJ;
        c1823pJ.zzc |= 128;
    }

    public static /* synthetic */ void L(C1823pJ c1823pJ, C1461iJ c1461iJ) {
        c1823pJ.zzx = c1461iJ;
        c1823pJ.zzc |= 8192;
    }

    public static void M(C1823pJ c1823pJ, ArrayList arrayList) {
        InterfaceC2236xH interfaceC2236xH = c1823pJ.zzA;
        if (!((QG) interfaceC2236xH).f16004G) {
            c1823pJ.zzA = AbstractC1873qH.h(interfaceC2236xH);
        }
        PG.c(arrayList, c1823pJ.zzA);
    }

    public static void N(C1823pJ c1823pJ, ArrayList arrayList) {
        InterfaceC2236xH interfaceC2236xH = c1823pJ.zzB;
        if (!((QG) interfaceC2236xH).f16004G) {
            c1823pJ.zzB = AbstractC1873qH.h(interfaceC2236xH);
        }
        PG.c(arrayList, c1823pJ.zzB);
    }

    public static /* synthetic */ void O(C1823pJ c1823pJ, int i8) {
        c1823pJ.zzd = i8 - 1;
        c1823pJ.zzc |= 1;
    }

    public final String B() {
        return this.zzl;
    }

    public final String C() {
        return this.zzf;
    }

    public final InterfaceC2236xH D() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return Byte.valueOf(this.zzQ);
            case 1:
                this.zzQ = abstractC1873qH == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new XH(zza, "\u0001#\u0000\u0001\u0001##\u0000\t\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\n᠌\u0000\u000b᠌\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0010\u001b\u0011ဉ\r\u0012ဇ\u000e\u0013ဈ\u000f\u0014\u001a\u0015\u001a\u0016ဉ\u0010\u0017\u001b\u0018ဉ\u0011\u0019ဈ\u0012\u001aဉ\u0013\u001b\u001b\u001cဉ\u0014\u001d᠌\u0015\u001e\u001b\u001f\u001b ဂ\u0016!ဉ\u0017\"ဉ\u0018#ဈ\u0019", new Object[]{"zzc", "zzf", "zzg", "zzh", "zzj", C1357gJ.class, "zzn", "zzo", "zzp", "zzu", "zzv", "zzd", C1202dJ.f18316a, "zze", BI.f12314a, "zzi", "zzl", "zzm", "zzw", "zzk", C1978sJ.class, "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", C2186wJ.class, "zzE", "zzF", "zzG", "zzH", JI.class, "zzI", "zzJ", C1563kJ.f19599a, "zzK", WI.class, "zzL", ZI.class, "zzM", "zzN", "zzO", "zzP"});
            case 3:
                return new C1823pJ();
            case 4:
                return new CI(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1823pJ.class) {
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
