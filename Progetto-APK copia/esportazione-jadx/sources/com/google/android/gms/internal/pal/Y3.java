package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class Y3 extends P1.e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f23708d = new byte[0];

    public Y3() {
        super(J5.class, new K3(10, InterfaceC2784o3.class));
    }

    public static C2769m4 v(int i8, C2855x3 c2855x3, byte[] bArr, int i9) {
        int i10;
        D5 d5M = E5.m();
        M5 m5M = N5.m();
        if (m5M.f23476I) {
            m5M.f();
            m5M.f23476I = false;
        }
        N5.s((N5) m5M.f23475H);
        if (m5M.f23476I) {
            m5M.f();
            m5M.f23476I = false;
        }
        N5.t((N5) m5M.f23475H);
        C2796q c2796qO = r.o(0, bArr, bArr.length);
        if (m5M.f23476I) {
            m5M.f();
            m5M.f23476I = false;
        }
        ((N5) m5M.f23475H).zzg = c2796qO;
        N5 n7 = (N5) m5M.d();
        C2715f6 c2715f6M = C2723g6.m();
        C2723g6 c2723g6 = c2855x3.f24063a;
        String strP = c2723g6.p();
        if (c2715f6M.f23476I) {
            c2715f6M.f();
            c2715f6M.f23476I = false;
        }
        C2723g6.q((C2723g6) c2715f6M.f23475H, strP);
        byte[] bArrP = c2723g6.o().p();
        C2796q c2796qO2 = r.o(0, bArrP, bArrP.length);
        if (c2715f6M.f23476I) {
            c2715f6M.f();
            c2715f6M.f23476I = false;
        }
        ((C2723g6) c2715f6M.f23475H).zzf = c2796qO2;
        int iS = c2723g6.s() - 2;
        int i11 = 4;
        if (iS == 1) {
            i10 = 1;
        } else if (iS == 2) {
            i10 = 2;
        } else if (iS == 3) {
            i10 = 3;
        } else {
            if (iS != 4) {
                throw new IllegalArgumentException("Unknown output prefix type");
            }
            i10 = 4;
        }
        int i12 = i10 - 1;
        if (i12 == 0) {
            i11 = 3;
        } else if (i12 != 1) {
            i11 = i12 != 2 ? 6 : 5;
        }
        if (c2715f6M.f23476I) {
            c2715f6M.f();
            c2715f6M.f23476I = false;
        }
        ((C2723g6) c2715f6M.f23475H).zzg = AbstractC2864y4.A(i11);
        C2723g6 c2723g7 = (C2723g6) c2715f6M.d();
        B5 b5M = C5.m();
        if (b5M.f23476I) {
            b5M.f();
            b5M.f23476I = false;
        }
        ((C5) b5M.f23475H).zze = c2723g7;
        C5 c8 = (C5) b5M.d();
        F5 f5N = G5.n();
        if (f5N.f23476I) {
            f5N.f();
            f5N.f23476I = false;
        }
        ((G5) f5N.f23475H).zze = n7;
        if (f5N.f23476I) {
            f5N.f();
            f5N.f23476I = false;
        }
        ((G5) f5N.f23475H).zzf = c8;
        if (f5N.f23476I) {
            f5N.f();
            f5N.f23476I = false;
        }
        G5.t((G5) f5N.f23475H, i8);
        G5 g8 = (G5) f5N.d();
        if (d5M.f23476I) {
            d5M.f();
            d5M.f23476I = false;
        }
        ((E5) d5M.f23475H).zze = g8;
        return new C2769m4((E5) d5M.d(), i9);
    }

    @Override // p079k.AbstractC3012d
    public final AbstractC2777n4 n() {
        return new L3(E5.class, 9);
    }

    @Override // p079k.AbstractC3012d
    public final int o() {
        return 3;
    }

    @Override // p079k.AbstractC3012d
    public final /* synthetic */ AbstractC2740j p(r rVar) {
        return J5.o(rVar, C2851x.a());
    }

    @Override // p079k.AbstractC3012d
    public final String q() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // p079k.AbstractC3012d
    public final void r(AbstractC2740j abstractC2740j) throws GeneralSecurityException {
        J5 j8 = (J5) abstractC2740j;
        if (j8.q().i() == 0) {
            throw new GeneralSecurityException("invalid ECIES private key");
        }
        P6.b(j8.m());
        AbstractC2864y4.s(j8.p().n());
    }
}
