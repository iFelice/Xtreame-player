package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2765m0 extends D {
    private static final C2765m0 zzb;
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzG;
    private long zzH;
    private long zzI;
    private long zzK;
    private E0 zzN;
    private I zzaA;
    private int zzaB;
    private I zzaC;
    private C2668a zzaD;
    private String zzaE;
    private long zzaF;
    private long zzaG;
    private long zzaH;
    private long zzaI;
    private long zzaJ;
    private long zzaK;
    private String zzaL;
    private long zzaM;
    private String zzaN;
    private int zzaO;
    private boolean zzaP;
    private String zzaQ;
    private long zzaR;
    private M0 zzaS;
    private long zzaT;
    private String zzaU;
    private C2811s zzaf;
    private I zzag;
    private X zzah;
    private long zzai;
    private long zzaj;
    private long zzak;
    private long zzal;
    private long zzam;
    private long zzan;
    private long zzao;
    private long zzap;
    private String zzaq;
    private long zzar;
    private int zzas;
    private int zzat;
    private int zzau;
    private O0 zzav;
    private long zzaw;
    private int zzax;
    private int zzay;
    private String zzaz;
    private int zze;
    private int zzf;
    private int zzg;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;
    private long zzr;
    private long zzs;
    private long zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzt = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzD = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzE = "D";
    private String zzF = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzJ = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzL = -1;
    private long zzM = -1;
    private long zzO = -1;
    private long zzP = -1;
    private long zzQ = -1;
    private long zzR = -1;
    private long zzS = -1;
    private long zzT = -1;
    private String zzU = "D";
    private String zzV = "D";
    private long zzW = -1;
    private int zzX = 1000;
    private int zzY = 1000;
    private long zzZ = -1;
    private long zzaa = -1;
    private long zzab = -1;
    private long zzac = -1;
    private long zzad = -1;
    private int zzae = 1000;

    static {
        C2765m0 c2765m0 = new C2765m0();
        zzb = c2765m0;
        D.f(C2765m0.class, c2765m0);
    }

    public C2765m0() {
        C2733i0 c2733i0 = C2733i0.f23843J;
        this.zzag = c2733i0;
        this.zzai = -1L;
        this.zzaj = -1L;
        this.zzak = -1L;
        this.zzal = -1L;
        this.zzam = -1L;
        this.zzan = -1L;
        this.zzao = -1L;
        this.zzap = -1L;
        this.zzaq = "D";
        this.zzar = -1L;
        this.zzaw = -1L;
        this.zzax = 1000;
        this.zzay = 1000;
        this.zzaz = "D";
        this.zzaA = c2733i0;
        this.zzaB = 1000;
        this.zzaC = c2733i0;
        this.zzaE = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzaF = -1L;
        this.zzaG = -1L;
        this.zzaH = -1L;
        this.zzaI = -1L;
        this.zzaK = -1L;
        this.zzaL = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzaN = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzaO = 2;
        this.zzaQ = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzaU = HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public static /* synthetic */ void A(C2765m0 c2765m0, C2811s c2811s) {
        c2765m0.zzaf = c2811s;
        c2765m0.zzf |= 262144;
    }

    public static void B(C2765m0 c2765m0, C2811s c2811s) {
        I i8 = c2765m0.zzag;
        if (!((AbstractC2748k) i8).f23887G) {
            c2765m0.zzag = D.d(i8);
        }
        c2765m0.zzag.add(c2811s);
    }

    public static void C(C2765m0 c2765m0) {
        c2765m0.zzag = C2733i0.f23843J;
    }

    public static /* synthetic */ void D(C2765m0 c2765m0, X x7) {
        c2765m0.zzah = x7;
        c2765m0.zzf |= 524288;
    }

    public static /* synthetic */ void E(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 2097152;
        c2765m0.zzaj = j8;
    }

    public static /* synthetic */ void F(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 4194304;
        c2765m0.zzak = j8;
    }

    public static /* synthetic */ void G(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 8388608;
        c2765m0.zzal = j8;
    }

    public static /* synthetic */ void H(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 67108864;
        c2765m0.zzao = j8;
    }

    public static /* synthetic */ void I(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 134217728;
        c2765m0.zzap = j8;
    }

    public static /* synthetic */ void J(C2765m0 c2765m0, String str) {
        str.getClass();
        c2765m0.zzf |= 268435456;
        c2765m0.zzaq = str;
    }

    public static /* synthetic */ void K(C2765m0 c2765m0, O0 o4) {
        c2765m0.zzav = o4;
        c2765m0.zzg |= 2;
    }

    public static /* synthetic */ void L(C2765m0 c2765m0, long j8) {
        c2765m0.zzg |= IMediaList.Event.ItemAdded;
        c2765m0.zzaF = j8;
    }

    public static L4 M() {
        return (L4) zzb.h();
    }

    public static /* synthetic */ void N(C2765m0 c2765m0, long j8) {
        c2765m0.zzg |= 1024;
        c2765m0.zzaG = j8;
    }

    public static /* synthetic */ void O(C2765m0 c2765m0, long j8) {
        c2765m0.zzg |= 2048;
        c2765m0.zzaH = j8;
    }

    public static /* synthetic */ void P(C2765m0 c2765m0, long j8) {
        c2765m0.zzg |= 4096;
        c2765m0.zzaI = j8;
    }

    public static /* synthetic */ void Q(C2765m0 c2765m0, String str) {
        str.getClass();
        c2765m0.zzg |= 32768;
        c2765m0.zzaL = str;
    }

    public static /* synthetic */ void R(C2765m0 c2765m0, String str) {
        str.getClass();
        c2765m0.zzg |= 131072;
        c2765m0.zzaN = str;
    }

    public static /* synthetic */ void S(C2765m0 c2765m0, boolean z7) {
        c2765m0.zzg |= 524288;
        c2765m0.zzaP = z7;
    }

    public static /* synthetic */ void T(C2765m0 c2765m0, long j8) {
        c2765m0.zzg |= 2097152;
        c2765m0.zzaR = j8;
    }

    public static /* synthetic */ void W(C2765m0 c2765m0, int i8) {
        c2765m0.zzX = i8 - 1;
        c2765m0.zzf |= 1024;
    }

    public static /* synthetic */ void X(C2765m0 c2765m0, int i8) {
        c2765m0.zzY = i8 - 1;
        c2765m0.zzf |= 2048;
    }

    public static /* synthetic */ void Y(C2765m0 c2765m0, int i8) {
        c2765m0.zzae = i8 - 1;
        c2765m0.zzf |= 131072;
    }

    public static /* synthetic */ void Z(C2765m0 c2765m0, int i8) {
        c2765m0.zzax = i8 - 1;
        c2765m0.zzg |= 8;
    }

    public static /* synthetic */ void a0(C2765m0 c2765m0, int i8) {
        c2765m0.zzay = i8 - 1;
        c2765m0.zzg |= 16;
    }

    public static /* synthetic */ void b0(C2765m0 c2765m0) {
        c2765m0.zzaO = 5;
        c2765m0.zzg |= 262144;
    }

    public static C2765m0 c0(byte[] bArr, C2851x c2851x) {
        return (C2765m0) D.k(zzb, bArr, c2851x);
    }

    public static /* synthetic */ void f0(C2765m0 c2765m0, String str) {
        str.getClass();
        c2765m0.zze |= 1;
        c2765m0.zzh = str;
    }

    public static /* synthetic */ void g0(C2765m0 c2765m0, String str) {
        c2765m0.zze |= 2;
        c2765m0.zzi = str;
    }

    public static /* synthetic */ void h0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 4;
        c2765m0.zzj = j8;
    }

    public static /* synthetic */ void i0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 16;
        c2765m0.zzl = j8;
    }

    public static /* synthetic */ void j0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 32;
        c2765m0.zzm = j8;
    }

    public static /* synthetic */ void k0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 1024;
        c2765m0.zzr = j8;
    }

    public static /* synthetic */ void l0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 2048;
        c2765m0.zzs = j8;
    }

    public static /* synthetic */ void m(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 536870912;
        c2765m0.zzK = j8;
    }

    public static /* synthetic */ void m0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 8192;
        c2765m0.zzu = j8;
    }

    public static /* synthetic */ void n(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 1073741824;
        c2765m0.zzL = j8;
    }

    public static /* synthetic */ void n0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= Http2.INITIAL_MAX_FRAME_SIZE;
        c2765m0.zzv = j8;
    }

    public static /* synthetic */ void o(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= Integer.MIN_VALUE;
        c2765m0.zzM = j8;
    }

    public static /* synthetic */ void o0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 32768;
        c2765m0.zzw = j8;
    }

    public static /* synthetic */ void p(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 2;
        c2765m0.zzO = j8;
    }

    public static /* synthetic */ void p0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 65536;
        c2765m0.zzx = j8;
    }

    public static /* synthetic */ void q(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 4;
        c2765m0.zzP = j8;
    }

    public static /* synthetic */ void q0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 524288;
        c2765m0.zzA = j8;
    }

    public static /* synthetic */ void r(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 8;
        c2765m0.zzQ = j8;
    }

    public static /* synthetic */ void r0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 1048576;
        c2765m0.zzB = j8;
    }

    public static /* synthetic */ void s(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 16;
        c2765m0.zzR = j8;
    }

    public static /* synthetic */ void s0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 2097152;
        c2765m0.zzC = j8;
    }

    public static /* synthetic */ void t(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 32;
        c2765m0.zzS = j8;
    }

    public static /* synthetic */ void t0(C2765m0 c2765m0, String str) {
        str.getClass();
        c2765m0.zze |= 4194304;
        c2765m0.zzD = str;
    }

    public static /* synthetic */ void u(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 64;
        c2765m0.zzT = j8;
    }

    public static /* synthetic */ void u0(C2765m0 c2765m0, String str) {
        str.getClass();
        c2765m0.zze |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        c2765m0.zzF = str;
    }

    public static /* synthetic */ void v(C2765m0 c2765m0, String str) {
        str.getClass();
        c2765m0.zzf |= 128;
        c2765m0.zzU = str;
    }

    public static /* synthetic */ void v0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 33554432;
        c2765m0.zzG = j8;
    }

    public static /* synthetic */ void w(C2765m0 c2765m0, String str) {
        str.getClass();
        c2765m0.zzf |= 256;
        c2765m0.zzV = str;
    }

    public static /* synthetic */ void w0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 67108864;
        c2765m0.zzH = j8;
    }

    public static /* synthetic */ void x(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 4096;
        c2765m0.zzZ = j8;
    }

    public static /* synthetic */ void x0(C2765m0 c2765m0, long j8) {
        c2765m0.zze |= 134217728;
        c2765m0.zzI = j8;
    }

    public static /* synthetic */ void y(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= 8192;
        c2765m0.zzaa = j8;
    }

    public static /* synthetic */ void y0(C2765m0 c2765m0, String str) {
        str.getClass();
        c2765m0.zze |= 268435456;
        c2765m0.zzJ = str;
    }

    public static /* synthetic */ void z(C2765m0 c2765m0, long j8) {
        c2765m0.zzf |= Http2.INITIAL_MAX_FRAME_SIZE;
        c2765m0.zzab = j8;
    }

    public final boolean U() {
        return (this.zze & 4194304) != 0;
    }

    public final boolean V() {
        return (this.zzg & 4194304) != 0;
    }

    public final M0 d0() {
        M0 m7 = this.zzaS;
        return m7 == null ? M0.o() : m7;
    }

    public final String e0() {
        return this.zzD;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            K0 k8 = K0.f23575a;
            return new C2741j0(zzb, "\u0001\\\u0000\u0003\u0001Į\\\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂP\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈQ\u0019ဂU\u001aဌR\u001bဈ\u0016\u001cဇS\u001dဈ\u0018\u001eဈT\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0ဌ*1ဌ+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08ဌ19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=Aဌ>Bဌ?Cဈ<Dဌ@EဉAFဂBGဂ8Hဂ9IဌCJဂ)Kဈ\u0017LဌDMဈEN\u001bOဌFP\u001bQဉGRဈHSဂITဂJUဂKVဂLWဂMXဂNYဈOÉဉVĭဂWĮဈX", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzaM", "zzB", "zzC", "zzaN", "zzaR", "zzaO", V5.f23677a, "zzD", "zzaP", "zzF", "zzaQ", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzag", C2811s.class, "zzS", "zzT", "zzU", "zzV", "zzX", k8, "zzY", k8, "zzaf", "zzZ", "zzaa", "zzab", "zzac", "zzad", "zzae", k8, "zzah", "zzai", "zzaj", "zzak", "zzal", "zzao", "zzap", "zzar", "zzas", J0.f23562a, "zzat", L0.f23581a, "zzaq", "zzau", Z4.f23719a, "zzav", "zzaw", "zzam", "zzan", "zzax", k8, "zzW", "zzE", "zzay", k8, "zzaz", "zzaA", K6.class, "zzaB", k8, "zzaC", H5.class, "zzaD", "zzaE", "zzaF", "zzaG", "zzaH", "zzaI", "zzaJ", "zzaK", "zzaL", "zzaS", "zzaT", "zzaU"});
        }
        if (i9 == 3) {
            return new C2765m0();
        }
        if (i9 == 4) {
            return new L4(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
