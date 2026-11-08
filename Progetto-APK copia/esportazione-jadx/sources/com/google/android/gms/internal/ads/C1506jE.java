package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1506jE implements InterfaceC1558kE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19447a;

    public /* synthetic */ C1506jE(int i8) {
        this.f19447a = i8;
    }

    public final Cw a(GC gc, Integer num) throws GeneralSecurityException {
        AbstractC2194wc abstractC2194wc = null;
        switch (this.f19447a) {
            case 0:
                C1610lE c1610lE = C1610lE.f19728b;
                C1250eG c1250eG = ((C1300fE) gc).f18735a.f13494b;
                XD xd = XD.f17392d;
                C1145cE c1145cEC = xd.c(c1250eG.F());
                if (!((Boolean) xd.f17394b.get(c1250eG.F())).booleanValue()) {
                    throw new GeneralSecurityException("Creating new keys is not allowed.");
                }
                XG xgE = c1250eG.E();
                c1145cEC.getClass();
                C1199dG c1199dGA = C1250eG.A();
                c1199dGA.f(c1145cEC.f18203a);
                c1199dGA.g(xgE);
                c1199dGA.e(EnumC2235xG.RAW);
                C1250eG c1250eG2 = (C1250eG) c1199dGA.b();
                GE ge = new GE(c1250eG2, NE.a(c1250eG2.F()));
                C1973sE c1973sE = C1973sE.f20878b;
                FE fe = (FE) c1973sE.c(C1610lE.f19728b.a(c1973sE.b(ge), null));
                C1044aG c1044aGA = C1147cG.A();
                c1044aGA.d();
                C1147cG.F((C1147cG) c1044aGA.f20255H, fe.f13335a);
                c1044aGA.d();
                C1147cG.G((C1147cG) c1044aGA.f20255H, fe.f13337c);
                c1044aGA.d();
                ((C1147cG) c1044aGA.f20255H).zze = AbstractC2090uc.b(fe.f13338d);
                C1147cG c1147cG = (C1147cG) c1044aGA.b();
                return new C1248eE(FE.a(c1147cG.E(), c1147cG.D(), c1147cG.B(), c1250eG.D(), num));
            case 1:
                WC wc = (WC) gc;
                C2337zE c2337zE = TC.f16605a;
                int i8 = wc.f17177a;
                if (i8 != 16 && i8 != 32) {
                    throw new GeneralSecurityException("AES key size must be 16 or 32 bytes");
                }
                C2246xc c2246xc = new C2246xc(abstractC2194wc);
                c2246xc.f21882H = wc;
                c2246xc.f21885K = num;
                c2246xc.f21883I = Xu.q(i8);
                c2246xc.f21884J = Xu.q(wc.f17178b);
                return c2246xc.F();
            case 2:
                C1041aD c1041aD = (C1041aD) gc;
                C2337zE c2337zE2 = YC.f17577a;
                int i9 = c1041aD.f17842a;
                if (i9 == 24) {
                    throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
                }
                p004a3.b bVar = new p004a3.b();
                bVar.f8650H = c1041aD;
                bVar.f8652J = num;
                bVar.f8651I = Xu.q(i9);
                return bVar.s();
            case 3:
                C1299fD c1299fD = (C1299fD) gc;
                C2337zE c2337zE3 = AbstractC1196dD.f18305a;
                int i10 = c1299fD.f18733a;
                if (i10 == 24) {
                    throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
                }
                C1093bD c1093bD = new C1093bD(0, 0);
                c1093bD.f18028J = c1299fD;
                c1093bD.f18027I = num;
                c1093bD.f18026H = Xu.q(i10);
                return c1093bD.p();
            case 4:
                C1505jD c1505jD = (C1505jD) gc;
                C1093bD c1093bD2 = new C1093bD(1, 0);
                c1093bD2.f18028J = c1505jD;
                c1093bD2.f18027I = num;
                c1093bD2.f18026H = Xu.q(c1505jD.f19445a);
                return c1093bD2.q();
            case 5:
                C2337zE c2337zE4 = AbstractC1609lD.f19725a;
                return C1557kD.i2(((C1713nD) gc).f20079a, Xu.q(32), num);
            case 6:
                return C1869qD.i2((C1972sD) gc, num);
            case 7:
                return C2076uD.i2((C2232xD) gc, num);
            case 8:
                C2337zE c2337zE5 = BD.f12299a;
                return AD.i2(((ED) gc).f12955a, Xu.q(32), num);
            case 9:
                RE re = (RE) gc;
                C1506jE c1506jE = PE.f15351a;
                int i11 = re.f16229a;
                if (i11 != 32) {
                    throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
                }
                C1093bD c1093bD3 = new C1093bD(3, 0);
                c1093bD3.f18028J = re;
                c1093bD3.f18026H = Xu.q(i11);
                c1093bD3.f18027I = num;
                return c1093bD3.r();
            default:
                C1043aF c1043aF = (C1043aF) gc;
                C1093bD c1093bD4 = new C1093bD(5, 0);
                c1093bD4.f18028J = c1043aF;
                c1093bD4.f18026H = Xu.q(c1043aF.f17848a);
                c1093bD4.f18027I = num;
                return c1093bD4.t();
        }
    }
}
