package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.j4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1496j4 extends AbstractC1873qH {
    private static final C1496j4 zza;
    private static volatile SH zzb;
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private long zzE;
    private long zzI;
    private long zzJ;
    private long zzK;
    private long zzM;
    private C1548k4 zzP;
    private int zzaA;
    private String zzaB;
    private InterfaceC2236xH zzaC;
    private int zzaD;
    private InterfaceC2236xH zzaE;
    private C1238e4 zzaF;
    private String zzaG;
    private long zzaH;
    private long zzaI;
    private long zzaJ;
    private long zzaK;
    private long zzaL;
    private long zzaM;
    private String zzaN;
    private C1032a4 zzaO;
    private C1084b4 zzaP;
    private long zzaQ;
    private long zzaR;
    private int zzaS;
    private long zzaT;
    private String zzaU;
    private int zzaV;
    private boolean zzaW;
    private String zzaX;
    private long zzaY;
    private C1860q4 zzaZ;
    private C1342g4 zzah;
    private InterfaceC2236xH zzai;
    private C1446i4 zzaj;
    private long zzak;
    private long zzal;
    private long zzam;
    private long zzan;
    private long zzao;
    private long zzap;
    private long zzaq;
    private long zzar;
    private String zzas;
    private long zzat;
    private int zzau;
    private int zzav;
    private int zzaw;
    private C1911r4 zzax;
    private long zzay;
    private int zzaz;
    private long zzba;
    private String zzbb;
    private int zzc;
    private int zzd;
    private int zze;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzu;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzv = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzF = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzG = "D";
    private String zzH = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzL = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzN = -1;
    private long zzO = -1;
    private long zzQ = -1;
    private long zzR = -1;
    private long zzS = -1;
    private long zzT = -1;
    private long zzU = -1;
    private long zzV = -1;
    private String zzW = "D";
    private String zzX = "D";
    private long zzY = -1;
    private int zzZ = 1000;
    private int zzaa = 1000;
    private long zzab = -1;
    private long zzac = -1;
    private long zzad = -1;
    private long zzae = -1;
    private long zzaf = -1;
    private int zzag = 1000;

    static {
        C1496j4 c1496j4 = new C1496j4();
        zza = c1496j4;
        AbstractC1873qH.t(C1496j4.class, c1496j4);
    }

    public C1496j4() {
        WH wh = WH.f17195J;
        this.zzai = wh;
        this.zzak = -1L;
        this.zzal = -1L;
        this.zzam = -1L;
        this.zzan = -1L;
        this.zzao = -1L;
        this.zzap = -1L;
        this.zzaq = -1L;
        this.zzar = -1L;
        this.zzas = "D";
        this.zzat = -1L;
        this.zzay = -1L;
        this.zzaz = 1000;
        this.zzaA = 1000;
        this.zzaB = "D";
        this.zzaC = wh;
        this.zzaD = 1000;
        this.zzaE = wh;
        this.zzaG = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzaH = -1L;
        this.zzaI = -1L;
        this.zzaJ = -1L;
        this.zzaK = -1L;
        this.zzaM = -1L;
        this.zzaN = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzaQ = -1L;
        this.zzaR = -1L;
        this.zzaU = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzaV = 2;
        this.zzaX = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzba = -1L;
        this.zzbb = HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public static /* synthetic */ void A(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 134217728;
        c1496j4.zzK = j8;
    }

    public static /* synthetic */ void A0(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zzc |= 2;
        c1496j4.zzg = str;
    }

    public static /* synthetic */ void B(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zzc |= 268435456;
        c1496j4.zzL = str;
    }

    public static /* synthetic */ void B0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 4;
        c1496j4.zzh = j8;
    }

    public static /* synthetic */ void C(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 536870912;
        c1496j4.zzM = j8;
    }

    public static /* synthetic */ void C0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 16;
        c1496j4.zzj = j8;
    }

    public static /* synthetic */ void D(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 1073741824;
        c1496j4.zzN = j8;
    }

    public static /* synthetic */ void D0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 32;
        c1496j4.zzk = j8;
    }

    public static /* synthetic */ void E(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= Integer.MIN_VALUE;
        c1496j4.zzO = j8;
    }

    public static /* synthetic */ void E0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 1024;
        c1496j4.zzp = j8;
    }

    public static /* synthetic */ void F(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 2;
        c1496j4.zzQ = j8;
    }

    public static /* synthetic */ void F0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 2048;
        c1496j4.zzu = j8;
    }

    public static /* synthetic */ void G(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 4;
        c1496j4.zzR = j8;
    }

    public static /* synthetic */ void G0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 8192;
        c1496j4.zzw = j8;
    }

    public static /* synthetic */ void H(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 8;
        c1496j4.zzS = j8;
    }

    public static /* synthetic */ void H0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= Http2.INITIAL_MAX_FRAME_SIZE;
        c1496j4.zzx = j8;
    }

    public static /* synthetic */ void I(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 16;
        c1496j4.zzT = j8;
    }

    public static /* synthetic */ void I0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 32768;
        c1496j4.zzy = j8;
    }

    public static /* synthetic */ void J(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 32;
        c1496j4.zzU = j8;
    }

    public static /* synthetic */ void J0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 65536;
        c1496j4.zzz = j8;
    }

    public static /* synthetic */ void K(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 64;
        c1496j4.zzV = j8;
    }

    public static /* synthetic */ void K0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 524288;
        c1496j4.zzC = j8;
    }

    public static /* synthetic */ void L(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zzd |= 128;
        c1496j4.zzW = str;
    }

    public static /* synthetic */ void L0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 1048576;
        c1496j4.zzD = j8;
    }

    public static /* synthetic */ void M(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zzd |= 256;
        c1496j4.zzX = str;
    }

    public static /* synthetic */ void M0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 2097152;
        c1496j4.zzE = j8;
    }

    public static /* synthetic */ void N(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 4096;
        c1496j4.zzab = j8;
    }

    public static /* synthetic */ void N0(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zzc |= 4194304;
        c1496j4.zzF = str;
    }

    public static /* synthetic */ void O(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 8192;
        c1496j4.zzac = j8;
    }

    public static /* synthetic */ void O0(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zzc |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        c1496j4.zzH = str;
    }

    public static /* synthetic */ void P(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= Http2.INITIAL_MAX_FRAME_SIZE;
        c1496j4.zzad = j8;
    }

    public static /* synthetic */ void P0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 33554432;
        c1496j4.zzI = j8;
    }

    public static /* synthetic */ void Q(C1496j4 c1496j4, C1342g4 c1342g4) {
        c1496j4.zzah = c1342g4;
        c1496j4.zzd |= 262144;
    }

    public static /* synthetic */ void Q0(C1496j4 c1496j4, long j8) {
        c1496j4.zzc |= 67108864;
        c1496j4.zzJ = j8;
    }

    public static void R(C1496j4 c1496j4, C1342g4 c1342g4) {
        InterfaceC2236xH interfaceC2236xH = c1496j4.zzai;
        if (!((QG) interfaceC2236xH).f16004G) {
            c1496j4.zzai = AbstractC1873qH.h(interfaceC2236xH);
        }
        c1496j4.zzai.add(c1342g4);
    }

    public static void S(C1496j4 c1496j4) {
        c1496j4.zzai = WH.f17195J;
    }

    public static /* synthetic */ void T(C1496j4 c1496j4, C1446i4 c1446i4) {
        c1496j4.zzaj = c1446i4;
        c1496j4.zzd |= 524288;
    }

    public static /* synthetic */ void U(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 2097152;
        c1496j4.zzal = j8;
    }

    public static /* synthetic */ void V(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 4194304;
        c1496j4.zzam = j8;
    }

    public static /* synthetic */ void W(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 8388608;
        c1496j4.zzan = j8;
    }

    public static /* synthetic */ void X(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 67108864;
        c1496j4.zzaq = j8;
    }

    public static /* synthetic */ void Y(C1496j4 c1496j4, long j8) {
        c1496j4.zzd |= 134217728;
        c1496j4.zzar = j8;
    }

    public static /* synthetic */ void Z(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zzd |= 268435456;
        c1496j4.zzas = str;
    }

    public static V3 a0() {
        return (V3) zza.g();
    }

    public static /* synthetic */ void b0(C1496j4 c1496j4, long j8) {
        c1496j4.zze |= IMediaList.Event.ItemAdded;
        c1496j4.zzaH = j8;
    }

    public static /* synthetic */ void c0(C1496j4 c1496j4, long j8) {
        c1496j4.zze |= 1024;
        c1496j4.zzaI = j8;
    }

    public static /* synthetic */ void d0(C1496j4 c1496j4, long j8) {
        c1496j4.zze |= 2048;
        c1496j4.zzaJ = j8;
    }

    public static /* synthetic */ void e0(C1496j4 c1496j4, long j8) {
        c1496j4.zze |= 4096;
        c1496j4.zzaK = j8;
    }

    public static /* synthetic */ void f0(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zze |= 32768;
        c1496j4.zzaN = str;
    }

    public static /* synthetic */ void g0(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zze |= 4194304;
        c1496j4.zzaU = str;
    }

    public static /* synthetic */ void h0(C1496j4 c1496j4, boolean z7) {
        c1496j4.zze |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        c1496j4.zzaW = z7;
    }

    public static /* synthetic */ void i0(C1496j4 c1496j4, long j8) {
        c1496j4.zze |= 67108864;
        c1496j4.zzaY = j8;
    }

    public static /* synthetic */ void n0(C1496j4 c1496j4, int i8) {
        c1496j4.zzZ = i8 - 1;
        c1496j4.zzd |= 1024;
    }

    public static /* synthetic */ void o0(C1496j4 c1496j4, int i8) {
        c1496j4.zzaa = i8 - 1;
        c1496j4.zzd |= 2048;
    }

    public static /* synthetic */ void p0(C1496j4 c1496j4, int i8) {
        c1496j4.zzag = i8 - 1;
        c1496j4.zzd |= 131072;
    }

    public static /* synthetic */ void q0(C1496j4 c1496j4, int i8) {
        c1496j4.zzaz = i8 - 1;
        c1496j4.zze |= 8;
    }

    public static /* synthetic */ void r0(C1496j4 c1496j4, int i8) {
        c1496j4.zzaA = i8 - 1;
        c1496j4.zze |= 16;
    }

    public static /* synthetic */ void s0(C1496j4 c1496j4, int i8) {
        c1496j4.zzaS = i8 - 1;
        c1496j4.zze |= 1048576;
    }

    public static /* synthetic */ void t0(C1496j4 c1496j4) {
        c1496j4.zzaV = 5;
        c1496j4.zze |= 8388608;
    }

    public static C1496j4 u0() {
        return zza;
    }

    public static C1496j4 v0(byte[] bArr, C1509jH c1509jH) throws AH {
        AbstractC1873qH abstractC1873qHZ = AbstractC1873qH.z(zza, bArr, bArr.length, c1509jH);
        AbstractC1873qH.y(abstractC1873qHZ);
        return (C1496j4) abstractC1873qHZ;
    }

    public static /* synthetic */ void z0(C1496j4 c1496j4, String str) {
        str.getClass();
        c1496j4.zzc |= 1;
        c1496j4.zzf = str;
    }

    public final boolean j0() {
        return this.zzaW;
    }

    public final boolean k0() {
        return (this.zzc & 4194304) != 0;
    }

    public final boolean l0() {
        return (this.zze & 134217728) != 0;
    }

    public final int m0() {
        int i8;
        switch (this.zzaV) {
            case 0:
                i8 = 1;
                break;
            case 1:
                i8 = 2;
                break;
            case 2:
                i8 = 3;
                break;
            case 3:
                i8 = 4;
                break;
            case 4:
                i8 = 5;
                break;
            case 5:
                i8 = 6;
                break;
            case 6:
                i8 = 7;
                break;
            case 7:
                i8 = 8;
                break;
            case 8:
                i8 = 9;
                break;
            case 9:
                i8 = 10;
                break;
            default:
                i8 = 0;
                break;
        }
        if (i8 == 0) {
            return 3;
        }
        return i8;
    }

    public final C1860q4 w0() {
        C1860q4 c1860q4 = this.zzaZ;
        return c1860q4 == null ? C1860q4.C() : c1860q4;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                C1756o4 c1756o4 = C1756o4.f20231a;
                return new XH(zza, "\u0001a\u0000\u0003\u0001Įa\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂU\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈV\u0019ဂZ\u001a᠌W\u001bဈ\u0016\u001cဇX\u001dဈ\u0018\u001eဈY\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0᠌*1᠌+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08᠌19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=A᠌>B᠌?Cဈ<D᠌@EဉAFဂBGဂ8Hဂ9I᠌CJဂ)Kဈ\u0017L᠌DMဈEN\u001bO᠌FP\u001bQဉGRဈHSဂITဂJUဂKVဂLWဂMXဂNYဈOZဉP[ဉQ\\ဂR]ဂS^᠌TÉဉ[ĭဂ\\Įဈ]", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzaT", "zzD", "zzE", "zzaU", "zzaY", "zzaV", Y3.f17568a, "zzF", "zzaW", "zzH", "zzaX", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzai", C1342g4.class, "zzU", "zzV", "zzW", "zzX", "zzZ", c1756o4, "zzaa", c1756o4, "zzah", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", c1756o4, "zzaj", "zzak", "zzal", "zzam", "zzan", "zzaq", "zzar", "zzat", "zzau", C1704n4.f20066a, "zzav", C1808p4.f20418a, "zzas", "zzaw", W3.f17155a, "zzax", "zzay", "zzao", "zzap", "zzaz", c1756o4, "zzY", "zzG", "zzaA", c1756o4, "zzaB", "zzaC", C1187d4.class, "zzaD", c1756o4, "zzaE", X3.class, "zzaF", "zzaG", "zzaH", "zzaI", "zzaJ", "zzaK", "zzaL", "zzaM", "zzaN", "zzaO", "zzaP", "zzaQ", "zzaR", "zzaS", C1135c4.f18173a, "zzaZ", "zzba", "zzbb"});
            case 3:
                return new C1496j4();
            case 4:
                return new V3(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1496j4.class) {
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

    public final String x0() {
        return this.zzaU;
    }

    public final String y0() {
        return this.zzF;
    }
}
