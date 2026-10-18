package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class Dz implements Fz, AE, InterfaceC2233xE, InterfaceC2129vE, InterfaceC1094bE, ZD, ME {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12916G;

    public Dz() {
        this.f12916G = 0;
    }

    @Override // com.google.android.gms.internal.ads.AE, com.google.android.gms.internal.ads.InterfaceC1094bE
    public final FE a(Cw cw) {
        switch (this.f12916G) {
            case 11:
                C1869qD c1869qD = (C1869qD) cw;
                C2181wE c2181wE = AbstractC2024tD.f21050a;
                C1768oG c1768oGB = C1820pG.B();
                C1872qG c1872qGA = C1923rG.A();
                String str = c1869qD.f20559l.f20876a;
                c1872qGA.d();
                C1923rG.E((C1923rG) c1872qGA.f20255H, str);
                C1923rG c1923rG = (C1923rG) c1872qGA.b();
                c1768oGB.d();
                C1820pG.F((C1820pG) c1768oGB.f20255H, c1923rG);
                return FE.a("type.googleapis.com/google.crypto.tink.KmsAeadKey", ((C1820pG) c1768oGB.b()).b(), 5, AbstractC2024tD.b(c1869qD.f20559l.f20877b), c1869qD.f20560m);
            case 15:
                C2076uD c2076uD = (C2076uD) cw;
                C2181wE c2181wE2 = AbstractC2284yD.f22005a;
                C2027tG c2027tGB = C2079uG.B();
                C2183wG c2183wGB = AbstractC2284yD.b(c2076uD.f21211l);
                c2027tGB.d();
                C2079uG.F((C2079uG) c2027tGB.f20255H, c2183wGB);
                return FE.a("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", ((C2079uG) c2027tGB.b()).b(), 5, AbstractC2284yD.c(c2076uD.f21211l.f21856a), c2076uD.f21212m);
            default:
                RC rc = (RC) cw;
                C2181wE c2181wE3 = FD.f13331a;
                C1871qF c1871qFB = C1974sF.B();
                C2130vF c2130vFB = C2182wF.B();
                C2338zF c2338zFB = AF.B();
                int i8 = rc.f16221l.f17179c;
                c2338zFB.d();
                ((AF) c2338zFB.f20255H).zzc = i8;
                AF af = (AF) c2338zFB.b();
                c2130vFB.d();
                C2182wF.F((C2182wF) c2130vFB.f20255H, af);
                byte[] bArrR = rc.f16222m.r();
                VG vgY = XG.y(0, bArrR, bArrR.length);
                c2130vFB.d();
                ((C2182wF) c2130vFB.f20255H).zzf = vgY;
                C2182wF c2182wF = (C2182wF) c2130vFB.b();
                c1871qFB.d();
                C1974sF.G((C1974sF) c1871qFB.f20255H, c2182wF);
                UF ufB = VF.B();
                WC wc = rc.f16221l;
                ZF zfC = FD.c(wc);
                ufB.d();
                VF.H((VF) ufB.f20255H, zfC);
                byte[] bArrR2 = rc.f16223n.r();
                VG vgY2 = XG.y(0, bArrR2, bArrR2.length);
                ufB.d();
                ((VF) ufB.f20255H).zzf = vgY2;
                VF vf = (VF) ufB.b();
                c1871qFB.d();
                C1974sF.H((C1974sF) c1871qFB.f20255H, vf);
                return FE.a("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((C1974sF) c1871qFB.b()).b(), 2, FD.d(wc.f17181e), rc.f16225p);
        }
    }

    @Override // com.google.android.gms.internal.ads.Fz
    public final Iterator c(Xu xu, CharSequence charSequence) {
        return new Cz(charSequence);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2233xE
    public final GE d(OC oc) {
        switch (this.f12916G) {
            case 9:
                C1972sD c1972sD = (C1972sD) oc;
                C2181wE c2181wE = AbstractC2024tD.f21050a;
                C1199dG c1199dGA = C1250eG.A();
                c1199dGA.f("type.googleapis.com/google.crypto.tink.KmsAeadKey");
                C1872qG c1872qGA = C1923rG.A();
                String str = c1972sD.f20876a;
                c1872qGA.d();
                C1923rG.E((C1923rG) c1872qGA.f20255H, str);
                c1199dGA.g(((C1923rG) c1872qGA.b()).b());
                c1199dGA.e(AbstractC2024tD.b(c1972sD.f20877b));
                return GE.a((C1250eG) c1199dGA.b());
            case 13:
                C2232xD c2232xD = (C2232xD) oc;
                C2181wE c2181wE2 = AbstractC2284yD.f22005a;
                C1199dG c1199dGA2 = C1250eG.A();
                c1199dGA2.f("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
                c1199dGA2.g(AbstractC2284yD.b(c2232xD).b());
                c1199dGA2.e(AbstractC2284yD.c(c2232xD.f21856a));
                return GE.a((C1250eG) c1199dGA2.b());
            case 24:
                WC wc = (WC) oc;
                C2181wE c2181wE3 = FD.f13331a;
                C1199dG c1199dGA3 = C1250eG.A();
                c1199dGA3.f("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
                C2026tF c2026tFA = C2078uF.A();
                C2234xF c2234xFB = C2286yF.B();
                C2338zF c2338zFB = AF.B();
                int i8 = wc.f17179c;
                c2338zFB.d();
                ((AF) c2338zFB.f20255H).zzc = i8;
                AF af = (AF) c2338zFB.b();
                c2234xFB.d();
                C2286yF.E((C2286yF) c2234xFB.f20255H, af);
                c2234xFB.d();
                ((C2286yF) c2234xFB.f20255H).zze = wc.f17177a;
                C2286yF c2286yF = (C2286yF) c2234xFB.b();
                c2026tFA.d();
                C2078uF.E((C2078uF) c2026tFA.f20255H, c2286yF);
                WF wfC = XF.C();
                ZF zfC = FD.c(wc);
                wfC.d();
                XF.G((XF) wfC.f20255H, zfC);
                wfC.d();
                ((XF) wfC.f20255H).zze = wc.f17178b;
                XF xf = (XF) wfC.b();
                c2026tFA.d();
                C2078uF.F((C2078uF) c2026tFA.f20255H, xf);
                c1199dGA3.g(((C2078uF) c2026tFA.b()).b());
                c1199dGA3.e(FD.d(wc.f17181e));
                return GE.a((C1250eG) c1199dGA3.b());
            default:
                C1041aD c1041aD = (C1041aD) oc;
                C2181wE c2181wE4 = HD.f13729a;
                C1199dG c1199dGA4 = C1250eG.A();
                c1199dGA4.f("type.googleapis.com/google.crypto.tink.AesEaxKey");
                DF dfB = EF.B();
                FF ffB = GF.B();
                int i9 = c1041aD.f17843b;
                ffB.d();
                ((GF) ffB.f20255H).zzc = i9;
                GF gf = (GF) ffB.b();
                dfB.d();
                EF.E((EF) dfB.f20255H, gf);
                dfB.d();
                ((EF) dfB.f20255H).zze = c1041aD.f17842a;
                c1199dGA4.g(((EF) dfB.b()).b());
                c1199dGA4.e(HD.b(c1041aD.f17844c));
                return GE.a((C1250eG) c1199dGA4.b());
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2129vE
    public final GC e(GE ge) throws GeneralSecurityException {
        int i8 = this.f12916G;
        C1250eG c1250eG = ge.f13494b;
        switch (i8) {
            case 10:
                C2181wE c2181wE = AbstractC2024tD.f21050a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE = c1250eG.E();
                    C1509jH c1509jH = C1509jH.f19448b;
                    UH uh = UH.f16822c;
                    return new C1972sD(C1923rG.C(xgE, C1509jH.f19449c).D(), AbstractC2024tD.a(c1250eG.D()));
                } catch (AH e8) {
                    throw new GeneralSecurityException("Parsing KmsAeadKeyFormat failed: ", e8);
                }
            case 14:
                C2181wE c2181wE2 = AbstractC2284yD.f22005a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE2 = c1250eG.E();
                    C1509jH c1509jH2 = C1509jH.f19448b;
                    UH uh2 = UH.f16822c;
                    return AbstractC2284yD.a(C2183wG.D(xgE2, C1509jH.f19449c), c1250eG.D());
                } catch (AH e9) {
                    throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e9);
                }
            case 25:
                C2181wE c2181wE3 = FD.f13331a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE3 = c1250eG.E();
                    C1509jH c1509jH3 = C1509jH.f19448b;
                    UH uh3 = UH.f16822c;
                    C2078uF c2078uFB = C2078uF.B(xgE3, C1509jH.f19449c);
                    if (c2078uFB.D().B() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    C1950rs c1950rs = new C1950rs();
                    c1950rs.e(c2078uFB.C().A());
                    c1950rs.h(c2078uFB.D().A());
                    c1950rs.j(c2078uFB.C().D().A());
                    c1950rs.l(c2078uFB.D().F().A());
                    c1950rs.f20799K = FD.a(c2078uFB.D().F().B());
                    c1950rs.f20800L = FD.b(c1250eG.D());
                    return c1950rs.o();
                } catch (AH e10) {
                    throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e10);
                }
            default:
                C2181wE c2181wE4 = HD.f13729a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE4 = c1250eG.E();
                    C1509jH c1509jH4 = C1509jH.f19448b;
                    UH uh4 = UH.f16822c;
                    EF efC = EF.C(xgE4, C1509jH.f19449c);
                    C2246xc c2246xc = new C2246xc();
                    c2246xc.s(efC.A());
                    c2246xc.l(efC.D().A());
                    c2246xc.y();
                    c2246xc.f21885K = HD.a(c1250eG.D());
                    return c2246xc.G();
                } catch (AH e11) {
                    throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e11);
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.ZD
    public final NC f(FE fe) throws GeneralSecurityException {
        int i8 = this.f12916G;
        Integer num = fe.f13340f;
        EnumC2235xG enumC2235xG = fe.f13339e;
        XG xg = fe.f13337c;
        String str = fe.f13335a;
        switch (i8) {
            case 12:
                C2181wE c2181wE = AbstractC2024tD.f21050a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH = C1509jH.f19448b;
                    UH uh = UH.f16822c;
                    C1820pG c1820pGC = C1820pG.C(xg, C1509jH.f19449c);
                    if (c1820pGC.A() == 0) {
                        return C1869qD.i2(new C1972sD(c1820pGC.D().D(), AbstractC2024tD.a(enumC2235xG)), num);
                    }
                    throw new GeneralSecurityException("KmsAeadKey are only accepted with version 0, got ".concat(String.valueOf(c1820pGC)));
                } catch (AH e8) {
                    throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e8);
                }
            case 16:
                C2181wE c2181wE2 = AbstractC2284yD.f22005a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH2 = C1509jH.f19448b;
                    UH uh2 = UH.f16822c;
                    C2079uG c2079uGC = C2079uG.C(xg, C1509jH.f19449c);
                    if (c2079uGC.A() == 0) {
                        return C2076uD.i2(AbstractC2284yD.a(c2079uGC.D(), enumC2235xG), num);
                    }
                    throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with version 0, got ".concat(String.valueOf(c2079uGC)));
                } catch (AH e9) {
                    throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e9);
                }
            default:
                C2181wE c2181wE3 = FD.f13331a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH3 = C1509jH.f19448b;
                    UH uh3 = UH.f16822c;
                    C1974sF c1974sFC = C1974sF.C(xg, C1509jH.f19449c);
                    if (c1974sFC.A() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    if (c1974sFC.D().A() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
                    }
                    if (c1974sFC.E().A() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
                    }
                    C1950rs c1950rs = new C1950rs();
                    c1950rs.e(c1974sFC.D().E().n());
                    c1950rs.h(c1974sFC.E().F().n());
                    c1950rs.j(c1974sFC.D().D().A());
                    c1950rs.l(c1974sFC.E().E().A());
                    c1950rs.f20799K = FD.a(c1974sFC.E().E().B());
                    c1950rs.f20800L = FD.b(enumC2235xG);
                    WC wcO = c1950rs.o();
                    C2246xc c2246xc = new C2246xc((AbstractC2194wc) null);
                    c2246xc.f21882H = wcO;
                    c2246xc.f21883I = Xu.k(c1974sFC.D().E().b());
                    c2246xc.f21884J = Xu.k(c1974sFC.E().F().b());
                    c2246xc.f21885K = num;
                    return c2246xc.F();
                } catch (AH unused) {
                    throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.ME
    public final Object zza() {
        C1247eD c1247eD = C1247eD.f18490b;
        ZC zc = ZC.f17733b;
        VC vc = VC.f16971b;
        UC uc = UC.f16813d;
        Object obj = null;
        switch (this.f12916G) {
            case 17:
                C2246xc c2246xc = new C2246xc(obj);
                c2246xc.m();
                c2246xc.t(16);
                c2246xc.x();
                c2246xc.f21885K = c1247eD;
                return c2246xc.H();
            case 18:
                C2246xc c2246xc2 = new C2246xc(obj);
                c2246xc2.m();
                c2246xc2.t(32);
                c2246xc2.x();
                c2246xc2.f21885K = c1247eD;
                return c2246xc2.H();
            case 19:
                C2246xc c2246xc3 = new C2246xc();
                c2246xc3.l(16);
                c2246xc3.s(16);
                c2246xc3.y();
                c2246xc3.f21885K = zc;
                return c2246xc3.G();
            case 20:
                C2246xc c2246xc4 = new C2246xc();
                c2246xc4.l(16);
                c2246xc4.s(32);
                c2246xc4.y();
                c2246xc4.f21885K = zc;
                return c2246xc4.G();
            case 21:
                C1950rs c1950rs = new C1950rs();
                c1950rs.e(16);
                c1950rs.h(32);
                c1950rs.l(16);
                c1950rs.j(16);
                c1950rs.f20799K = uc;
                c1950rs.f20800L = vc;
                return c1950rs.o();
            default:
                C1950rs c1950rs2 = new C1950rs();
                c1950rs2.e(32);
                c1950rs2.h(32);
                c1950rs2.l(32);
                c1950rs2.j(16);
                c1950rs2.f20799K = uc;
                c1950rs2.f20800L = vc;
                return c1950rs2.o();
        }
    }

    @Override // com.google.android.gms.internal.ads.AE, com.google.android.gms.internal.ads.InterfaceC1094bE
    public final Object a(Cw cw) throws GeneralSecurityException {
        byte[] bArrB;
        switch (this.f12916G) {
            case 1:
                C1248eE c1248eE = (C1248eE) cw;
                FE fe = c1248eE.f18494l;
                int i8 = AbstractC1197dE.f18311b[p156u.h.b(fe.f13338d)];
                C1044aG c1044aGA = C1147cG.A();
                c1044aGA.d();
                C1147cG.F((C1147cG) c1044aGA.f20255H, fe.f13335a);
                c1044aGA.d();
                C1147cG.G((C1147cG) c1044aGA.f20255H, fe.f13337c);
                c1044aGA.d();
                ((C1147cG) c1044aGA.f20255H).zze = AbstractC2090uc.b(fe.f13338d);
                InterfaceC2127vC interfaceC2127vC = (InterfaceC2127vC) JC.a((C1147cG) c1044aGA.b(), InterfaceC2127vC.class);
                EnumC2235xG enumC2235xG = fe.f13339e;
                int iOrdinal = enumC2235xG.ordinal();
                FE fe2 = c1248eE.f18494l;
                if (iOrdinal == 1) {
                    bArrB = AbstractC2025tE.b(fe2.f13340f.intValue()).b();
                } else if (iOrdinal == 2) {
                    bArrB = AbstractC2025tE.a(fe2.f13340f.intValue()).b();
                } else if (iOrdinal == 3) {
                    bArrB = AbstractC2025tE.f21054a.b();
                } else {
                    if (iOrdinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type ".concat(String.valueOf(enumC2235xG)));
                    }
                    bArrB = AbstractC2025tE.a(fe2.f13340f.intValue()).b();
                }
                return new RD(interfaceC2127vC, bArrB);
            case 2:
                RC rc = (RC) cw;
                byte[] bArrB2 = ((NG) rc.f16222m.f17529H).b();
                WC wc = rc.f16221l;
                CG cg = new CG(bArrB2, wc.f17179c);
                String strValueOf = String.valueOf(wc.f17182f);
                Kq kq = new Kq("HMAC".concat(strValueOf), new SecretKeySpec(((NG) rc.f16223n.f17529H).b(), "HMAC"));
                int i9 = wc.f17180d;
                return new EG(cg, new MG(kq, i9), i9, rc.f16224o.b());
            case 3:
                XC xc = (XC) cw;
                K3.X x7 = DG.f12793f;
                if (Cw.f0(1)) {
                    return new DG(xc.f17387l.f17843b, ((NG) xc.f17388m.f17529H).b(), xc.f17389n.b());
                }
                throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
            case 4:
                C1144cD c1144cD = (C1144cD) cw;
                return new RD(((NG) c1144cD.f18200m.f17529H).b(), c1144cD.f18201n);
            case 5:
                C1351gD c1351gD = (C1351gD) cw;
                return new TD(((NG) c1351gD.f18913m.f17529H).b(), c1351gD.f18914n.b());
            case 6:
                C1557kD c1557kD = (C1557kD) cw;
                C2337zE c2337zE = AbstractC1609lD.f19725a;
                if (LD.f14487f.get() != null) {
                    return new LD(((NG) c1557kD.f19595m.f17529H).b(), c1557kD.f19596n.b());
                }
                return new RD(3, ((NG) c1557kD.f19595m.f17529H).b(), c1557kD.f19596n.b());
            case 7:
                C2337zE c2337zE2 = AbstractC1765oD.f20251a;
                EC.a(((C1869qD) cw).f20559l.f20876a);
                throw null;
            case 8:
                C1145cE c1145cE = AbstractC1817pD.f20434a;
                EC.a(((C2076uD) cw).f21211l.f21857b);
                throw null;
            default:
                AD ad = (AD) cw;
                C2337zE c2337zE3 = BD.f12299a;
                if (((Cipher) LD.f14487f.get()) != null) {
                    return new RD(1, ((NG) ad.f11994m.f17529H).b(), ad.f11995n.b());
                }
                return new RD(4, ((NG) ad.f11994m.f17529H).b(), ad.f11995n.b());
        }
    }
}
