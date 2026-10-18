package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2494s0 extends AbstractC2457i2 {
    private static final C2494s0 zzb;
    private InterfaceC2477n2 zzA;
    private InterfaceC2477n2 zzB;
    private InterfaceC2477n2 zzC;
    private C2468l1 zzD;
    private int zzE;
    private int zzF;
    private K0 zzG;
    private int zzH;
    private C2487q0 zzI;
    private InterfaceC2477n2 zzJ;
    private K0 zzK;
    private int zzL;
    private int zzM;
    private int zzN;
    private int zzO;
    private int zzP;
    private int zzQ;
    private C2495s1 zzR;
    private C2475n0 zzS;
    private C2518y0 zzT;
    private C2443f0 zzU;
    private W0 zzV;
    private C2464k1 zzW;
    private Y0 zzX;
    private InterfaceC2477n2 zzY;
    private int zzZ;
    private C2432c1 zzaa;
    private InterfaceC2477n2 zzab;
    private boolean zzac;
    private boolean zzad;
    private int zzae;
    private C2451h0 zzaf;
    private C2456i1 zzag;
    private T0 zzah;
    private F0 zzai;
    private C2428b1 zzaj;
    private C2480o1 zzak;
    private G0 zzal;
    private int zzam;
    private int zzan;
    private int zzao;
    private InterfaceC2477n2 zzap;
    private C2507v1 zzaq;
    private int zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private Q0 zzi;
    private C2448g1 zzj;
    private P0 zzk;
    private N0 zzl;
    private C2483p0 zzm;
    private C2444f1 zzn;
    private C2459j0 zzo;
    private C2491r1 zzp;
    private M0 zzr;
    private W zzs;
    private int zzv;
    private C2424a1 zzw;
    private InterfaceC2477n2 zzz;
    private byte zzar = 2;
    private String zzq = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzt = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzu = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzx = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2465k2 zzy = C2461j2.f22748J;

    static {
        C2494s0 c2494s0 = new C2494s0();
        zzb = c2494s0;
        AbstractC2457i2.e(C2494s0.class, c2494s0);
    }

    public C2494s0() {
        K2 k8 = K2.f22483J;
        this.zzz = k8;
        this.zzA = k8;
        this.zzB = k8;
        this.zzC = k8;
        this.zzJ = k8;
        this.zzY = k8;
        this.zzab = k8;
        this.zzap = k8;
    }

    public static C2490r0 m() {
        return (C2490r0) zzb.j();
    }

    public static C2490r0 n(C2494s0 c2494s0) {
        AbstractC2453h2 abstractC2453h2J = zzb.j();
        AbstractC2457i2 abstractC2457i2 = abstractC2453h2J.f22744G;
        if (!abstractC2457i2.equals(c2494s0)) {
            if (!abstractC2453h2J.f22745H.g()) {
                AbstractC2457i2 abstractC2457i3 = (AbstractC2457i2) abstractC2457i2.h(4, null);
                J2.f22476c.a(abstractC2457i3.getClass()).b(abstractC2457i3, abstractC2453h2J.f22745H);
                abstractC2453h2J.f22745H = abstractC2457i3;
            }
            AbstractC2457i2 abstractC2457i4 = abstractC2453h2J.f22745H;
            J2.f22476c.a(abstractC2457i4.getClass()).b(abstractC2457i4, c2494s0);
        }
        return (C2490r0) abstractC2453h2J;
    }

    public static /* synthetic */ void o(C2494s0 c2494s0, int i8) {
        c2494s0.zzd |= Integer.MIN_VALUE;
        c2494s0.zzQ = i8;
    }

    public static /* synthetic */ void p(C2494s0 c2494s0, C2475n0 c2475n0) {
        c2494s0.zzS = c2475n0;
        c2494s0.zze |= 2;
    }

    public static /* synthetic */ void q(C2494s0 c2494s0, C2518y0 c2518y0) {
        c2494s0.zzT = c2518y0;
        c2494s0.zze |= 4;
    }

    public static void r(C2494s0 c2494s0, C2467l0 c2467l0) {
        InterfaceC2477n2 interfaceC2477n2 = c2494s0.zzY;
        if (!((V1) interfaceC2477n2).f22546G) {
            c2494s0.zzY = AbstractC2457i2.b(interfaceC2477n2);
        }
        c2494s0.zzY.add(c2467l0);
    }

    public static /* synthetic */ void s(C2494s0 c2494s0, C2451h0 c2451h0) {
        c2494s0.zzaf = c2451h0;
        c2494s0.zze |= 4096;
    }

    public static /* synthetic */ void t(C2494s0 c2494s0, long j8) {
        c2494s0.zzd |= 2;
        c2494s0.zzg = j8;
    }

    public static /* synthetic */ void u(C2494s0 c2494s0, String str) {
        c2494s0.zzd |= 2048;
        c2494s0.zzq = str;
    }

    public static /* synthetic */ void v(C2494s0 c2494s0, String str) {
        str.getClass();
        c2494s0.zzd |= Http2.INITIAL_MAX_FRAME_SIZE;
        c2494s0.zzt = str;
    }

    public static /* synthetic */ void w(C2494s0 c2494s0, String str) {
        str.getClass();
        c2494s0.zzd |= 32768;
        c2494s0.zzu = str;
    }

    public static /* synthetic */ void x(C2494s0 c2494s0, int i8) {
        c2494s0.zzd |= 65536;
        c2494s0.zzv = i8;
    }

    public static /* synthetic */ void y(C2494s0 c2494s0, String str) {
        c2494s0.zzd |= 262144;
        c2494s0.zzx = str;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return Byte.valueOf(this.zzar);
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001@\u0000\u0002\u0001@@\u0000\t\u0001\u0001ဂ\u0000\u0002ဂ\u0001\u0003᠌\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဉ\u0007\tဈ\u000e\nဉ\b\u000bဉ\t\fဉ\n\rဈ\u000b\u000eဉ\f\u000fဉ\r\u0010ဉ\u0011\u0011ဈ\u0012\u0012\u0016\u0013\u001b\u0014\u001b\u0015\u001b\u0016\u001b\u0017᠌\u0014\u0018ဉ\u0018\u0019\u001b\u001aဉ\u0019\u001b᠌\u001b\u001cင\u001c\u001dင\u001d\u001eင\u001e\u001fဆ\u001f ဉ !ဉ!\"ဉ##᠌\u0015$ဉ\u0016%ᐉ$&ဉ%'ဉ&(\u001b)᠌'*ဉ(+\u001b,᠌\u001a-ဇ).ဇ*/᠌+0ဉ,1င\u00172ဉ-3ဉ.4ဉ05ဉ16ဉ27᠌38᠌49᠌5:\u001b;ဈ\u000f<ဉ6=ဉ/>ဉ\u0013?ဉ\"@င\u0010", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", Z.f22589u, "zzi", "zzj", "zzk", "zzl", "zzm", "zzt", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzw", "zzx", "zzy", "zzz", R0.class, "zzA", U0.class, "zzB", H0.class, "zzC", C2472m1.class, "zzE", Z.f22584p, "zzI", "zzJ", K0.class, "zzK", "zzM", Z.f22569a, "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzU", "zzF", Z.f22582n, "zzG", "zzV", "zzW", "zzX", "zzY", C2467l0.class, "zzZ", Z.f22583o, "zzaa", "zzab", C2479o0.class, "zzL", C2517y.f22851j0, "zzac", "zzad", "zzae", C2517y.f22849h0, "zzaf", "zzH", "zzag", "zzah", "zzaj", "zzak", "zzal", "zzam", C2517y.f22839X, "zzan", Z.f22575g, "zzao", C2517y.f22838W, "zzap", C2484p1.class, "zzu", "zzaq", "zzai", "zzD", "zzT", "zzv"});
        }
        if (i9 == 3) {
            return new C2494s0();
        }
        if (i9 == 4) {
            return new C2490r0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        this.zzar = abstractC2457i2 == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final C2475n0 l() {
        C2475n0 c2475n0 = this.zzS;
        return c2475n0 == null ? C2475n0.n() : c2475n0;
    }
}
