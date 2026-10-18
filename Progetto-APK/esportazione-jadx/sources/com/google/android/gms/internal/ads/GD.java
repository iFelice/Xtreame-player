package com.google.android.gms.internal.ads;

import com.google.api.Service;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class GD implements InterfaceC1094bE, ZD, InterfaceC2233xE, InterfaceC2129vE, ME, AE {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13492G;

    public /* synthetic */ GD(int i8) {
        this.f13492G = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1094bE
    public final FE a(Cw cw) {
        switch (this.f13492G) {
            case 0:
                XC xc = (XC) cw;
                BF bfB = CF.B();
                C1041aD c1041aD = xc.f17387l;
                FF ffB = GF.B();
                int i8 = c1041aD.f17843b;
                ffB.d();
                ((GF) ffB.f20255H).zzc = i8;
                GF gf = (GF) ffB.b();
                bfB.d();
                CF.G((CF) bfB.f20255H, gf);
                byte[] bArrR = xc.f17388m.r();
                VG vgY = XG.y(0, bArrR, bArrR.length);
                bfB.d();
                ((CF) bfB.f20255H).zzf = vgY;
                return FE.a("type.googleapis.com/google.crypto.tink.AesEaxKey", ((CF) bfB.b()).b(), 2, HD.b(xc.f17387l.f17844c), xc.f17390o);
            case 4:
                C1144cD c1144cD = (C1144cD) cw;
                C2181wE c2181wE = JD.f14130a;
                HF hfB = IF.B();
                byte[] bArrR2 = c1144cD.f18200m.r();
                VG vgY2 = XG.y(0, bArrR2, bArrR2.length);
                hfB.d();
                ((IF) hfB.f20255H).zzd = vgY2;
                return FE.a("type.googleapis.com/google.crypto.tink.AesGcmKey", ((IF) hfB.b()).b(), 2, JD.b(c1144cD.f18199l.f18734b), c1144cD.f18202o);
            case 8:
                C1351gD c1351gD = (C1351gD) cw;
                C2181wE c2181wE2 = KD.f14313a;
                MF mfB = NF.B();
                byte[] bArrR3 = c1351gD.f18913m.r();
                VG vgY3 = XG.y(0, bArrR3, bArrR3.length);
                mfB.d();
                ((NF) mfB.f20255H).zzd = vgY3;
                return FE.a("type.googleapis.com/google.crypto.tink.AesGcmSivKey", ((NF) mfB.b()).b(), 2, KD.b(c1351gD.f18912l.f19446b), c1351gD.f18915o);
            case 12:
                C1557kD c1557kD = (C1557kD) cw;
                C2181wE c2181wE3 = MD.f14687a;
                QF qfB = RF.B();
                byte[] bArrR4 = c1557kD.f19595m.r();
                VG vgY4 = XG.y(0, bArrR4, bArrR4.length);
                qfB.d();
                ((RF) qfB.f20255H).zzd = vgY4;
                return FE.a("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", ((RF) qfB.b()).b(), 2, MD.b(c1557kD.f19594l.f20079a), c1557kD.f19597o);
            case 16:
                AD ad = (AD) cw;
                C2181wE c2181wE4 = SD.f16413a;
                C2339zG c2339zGB = AG.B();
                byte[] bArrR5 = ad.f11994m.r();
                VG vgY5 = XG.y(0, bArrR5, bArrR5.length);
                c2339zGB.d();
                ((AG) c2339zGB.f20255H).zzd = vgY5;
                return FE.a("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", ((AG) c2339zGB.b()).b(), 2, SD.b(ad.f11993l.f12955a), ad.f11996o);
            default:
                FE fe = ((C1248eE) cw).f18494l;
                int i9 = AbstractC1197dE.f18311b[p156u.h.b(fe.f13338d)];
                return fe;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2233xE
    public final GE d(OC oc) {
        switch (this.f13492G) {
            case 2:
                C1299fD c1299fD = (C1299fD) oc;
                C2181wE c2181wE = JD.f14130a;
                C1199dG c1199dGA = C1250eG.A();
                c1199dGA.f("type.googleapis.com/google.crypto.tink.AesGcmKey");
                KF kfC = LF.C();
                int i8 = c1299fD.f18733a;
                kfC.d();
                ((LF) kfC.f20255H).zzc = i8;
                c1199dGA.g(((LF) kfC.b()).b());
                c1199dGA.e(JD.b(c1299fD.f18734b));
                return GE.a((C1250eG) c1199dGA.b());
            case 6:
                C1505jD c1505jD = (C1505jD) oc;
                C2181wE c2181wE2 = KD.f14313a;
                C1199dG c1199dGA2 = C1250eG.A();
                c1199dGA2.f("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
                OF ofC = PF.C();
                int i9 = c1505jD.f19445a;
                ofC.d();
                ((PF) ofC.f20255H).zzc = i9;
                c1199dGA2.g(((PF) ofC.b()).b());
                c1199dGA2.e(KD.b(c1505jD.f19446b));
                return GE.a((C1250eG) c1199dGA2.b());
            case 10:
                C2181wE c2181wE3 = MD.f14687a;
                C1199dG c1199dGA3 = C1250eG.A();
                c1199dGA3.f("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
                c1199dGA3.g(SF.A().b());
                c1199dGA3.e(MD.b(((C1713nD) oc).f20079a));
                return GE.a((C1250eG) c1199dGA3.b());
            default:
                C2181wE c2181wE4 = SD.f16413a;
                C1199dG c1199dGA4 = C1250eG.A();
                c1199dGA4.f("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
                c1199dGA4.g(BG.B().b());
                c1199dGA4.e(SD.b(((ED) oc).f12955a));
                return GE.a((C1250eG) c1199dGA4.b());
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2129vE
    public final GC e(GE ge) throws GeneralSecurityException {
        C1250eG c1250eG = ge.f13494b;
        switch (this.f13492G) {
            case 3:
                C2181wE c2181wE = JD.f14130a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE = c1250eG.E();
                    C1509jH c1509jH = C1509jH.f19448b;
                    UH uh = UH.f16822c;
                    LF lfD = LF.D(xgE, C1509jH.f19449c);
                    if (lfD.B() != 0) {
                        throw new GeneralSecurityException("Only version 0 parameters are accepted");
                    }
                    C2246xc c2246xc = new C2246xc((Object) null);
                    c2246xc.t(lfD.A());
                    c2246xc.m();
                    c2246xc.x();
                    c2246xc.f21885K = JD.a(c1250eG.D());
                    return c2246xc.H();
                } catch (AH e8) {
                    throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e8);
                }
            case 7:
                C2181wE c2181wE2 = KD.f14313a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE2 = c1250eG.E();
                    C1509jH c1509jH2 = C1509jH.f19448b;
                    UH uh2 = UH.f16822c;
                    PF pfD = PF.D(xgE2, C1509jH.f19449c);
                    if (pfD.B() != 0) {
                        throw new GeneralSecurityException("Only version 0 parameters are accepted");
                    }
                    int iA = pfD.A();
                    if (iA != 16 && iA != 32) {
                        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(iA)));
                    }
                    return new C1505jD(Integer.valueOf(iA).intValue(), KD.a(c1250eG.D()));
                } catch (AH e9) {
                    throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e9);
                }
            case 11:
                C2181wE c2181wE3 = MD.f14687a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
                    throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE3 = c1250eG.E();
                    C1509jH c1509jH3 = C1509jH.f19448b;
                    UH uh3 = UH.f16822c;
                    SF.B(xgE3, C1509jH.f19449c);
                    return new C1713nD(MD.a(c1250eG.D()));
                } catch (AH e10) {
                    throw new GeneralSecurityException("Parsing ChaCha20Poly1305Parameters failed: ", e10);
                }
            default:
                C2181wE c2181wE4 = SD.f16413a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
                    throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE4 = c1250eG.E();
                    C1509jH c1509jH4 = C1509jH.f19448b;
                    UH uh4 = UH.f16822c;
                    if (BG.C(xgE4, C1509jH.f19449c).A() == 0) {
                        return new ED(SD.a(c1250eG.D()));
                    }
                    throw new GeneralSecurityException("Only version 0 parameters are accepted");
                } catch (AH e11) {
                    throw new GeneralSecurityException("Parsing XChaCha20Poly1305Parameters failed: ", e11);
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.ZD
    public final NC f(FE fe) throws GeneralSecurityException {
        Integer num = fe.f13340f;
        EnumC2235xG enumC2235xG = fe.f13339e;
        XG xg = fe.f13337c;
        String str = fe.f13335a;
        switch (this.f13492G) {
            case 1:
                if (!str.equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH = C1509jH.f19448b;
                    UH uh = UH.f16822c;
                    CF cfC = CF.C(xg, C1509jH.f19449c);
                    if (cfC.A() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    C2246xc c2246xc = new C2246xc();
                    c2246xc.s(cfC.E().n());
                    c2246xc.l(cfC.D().A());
                    c2246xc.y();
                    c2246xc.f21885K = HD.a(enumC2235xG);
                    C1041aD c1041aDG = c2246xc.G();
                    p004a3.b bVar = new p004a3.b();
                    bVar.f8650H = c1041aDG;
                    bVar.f8651I = Xu.k(cfC.E().b());
                    bVar.f8652J = num;
                    return bVar.s();
                } catch (AH unused) {
                    throw new GeneralSecurityException("Parsing AesEaxcKey failed");
                }
            case 5:
                C2181wE c2181wE = JD.f14130a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH2 = C1509jH.f19448b;
                    UH uh2 = UH.f16822c;
                    IF ifC = IF.C(xg, C1509jH.f19449c);
                    if (ifC.A() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    C2246xc c2246xc2 = new C2246xc((Object) null);
                    c2246xc2.t(ifC.D().n());
                    c2246xc2.m();
                    c2246xc2.x();
                    c2246xc2.f21885K = JD.a(enumC2235xG);
                    C1299fD c1299fDH = c2246xc2.H();
                    C1093bD c1093bD = new C1093bD(0, 0);
                    c1093bD.f18028J = c1299fDH;
                    c1093bD.f18026H = Xu.k(ifC.D().b());
                    c1093bD.f18027I = num;
                    return c1093bD.p();
                } catch (AH unused2) {
                    throw new GeneralSecurityException("Parsing AesGcmKey failed");
                }
            case 9:
                C2181wE c2181wE2 = KD.f14313a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH3 = C1509jH.f19448b;
                    UH uh3 = UH.f16822c;
                    NF nfC = NF.C(xg, C1509jH.f19449c);
                    if (nfC.A() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    int iN = nfC.D().n();
                    if (iN != 16 && iN != 32) {
                        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(iN)));
                    }
                    C1505jD c1505jD = new C1505jD(Integer.valueOf(iN).intValue(), KD.a(enumC2235xG));
                    C1093bD c1093bD2 = new C1093bD(1, 0);
                    c1093bD2.f18028J = c1505jD;
                    c1093bD2.f18026H = Xu.k(nfC.D().b());
                    c1093bD2.f18027I = num;
                    return c1093bD2.q();
                } catch (AH unused3) {
                    throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
                }
            case 13:
                C2181wE c2181wE3 = MD.f14687a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
                    throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH4 = C1509jH.f19448b;
                    UH uh4 = UH.f16822c;
                    RF rfC = RF.C(xg, C1509jH.f19449c);
                    if (rfC.A() == 0) {
                        return C1557kD.i2(MD.a(enumC2235xG), Xu.k(rfC.D().b()), num);
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                } catch (AH unused4) {
                    throw new GeneralSecurityException("Parsing ChaCha20Poly1305Key failed");
                }
            default:
                C2181wE c2181wE4 = SD.f16413a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
                    throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH5 = C1509jH.f19448b;
                    UH uh5 = UH.f16822c;
                    AG agC = AG.C(xg, C1509jH.f19449c);
                    if (agC.A() == 0) {
                        return AD.i2(SD.a(enumC2235xG), Xu.k(agC.D().b()), num);
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                } catch (AH unused5) {
                    throw new GeneralSecurityException("Parsing XChaCha20Poly1305Key failed");
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.ME
    public final Object zza() {
        YE ye = YE.f17585d;
        YE ye2 = YE.f17587f;
        ZE ze = ZE.f17737b;
        AbstractC2090uc abstractC2090uc = null;
        switch (this.f13492G) {
            case 19:
                C1973sE c1973sE = new C1973sE();
                c1973sE.f(new C1042aE(new GD(20), C1248eE.class));
                return c1973sE;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                C2246xc c2246xc = new C2246xc(abstractC2090uc);
                c2246xc.u(32);
                c2246xc.z(16);
                c2246xc.f21885K = ze;
                c2246xc.f21884J = ye;
                return c2246xc.I();
            case 27:
                C2246xc c2246xc2 = new C2246xc(abstractC2090uc);
                c2246xc2.u(32);
                c2246xc2.z(32);
                c2246xc2.f21885K = ze;
                c2246xc2.f21884J = ye;
                return c2246xc2.I();
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                C2246xc c2246xc3 = new C2246xc(abstractC2090uc);
                c2246xc3.u(64);
                c2246xc3.z(32);
                c2246xc3.f21885K = ze;
                c2246xc3.f21884J = ye2;
                return c2246xc3.I();
            default:
                C2246xc c2246xc4 = new C2246xc(abstractC2090uc);
                c2246xc4.u(64);
                c2246xc4.z(64);
                c2246xc4.f21885K = ze;
                c2246xc4.f21884J = ye2;
                return c2246xc4.I();
        }
    }

    @Override // com.google.android.gms.internal.ads.AE, com.google.android.gms.internal.ads.InterfaceC1094bE
    public final Object a(Cw cw) throws GeneralSecurityException {
        switch (this.f13492G) {
            case 21:
                C1506jE c1506jE = PE.f15351a;
                if (((OE) cw).f15146l.f16229a == 32) {
                    TE te = new TE();
                    if (Cw.f0(1)) {
                        return te;
                    }
                    throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
                }
                throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
            case 22:
                OE oe = (OE) cw;
                C1506jE c1506jE2 = PE.f15351a;
                if (oe.f15146l.f16229a == 32) {
                    return new MG(oe);
                }
                throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
            case 23:
                TE te2 = new TE();
                if (Cw.f0(2)) {
                    return te2;
                }
                throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
            case 24:
                return new MG((WE) cw);
            default:
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
                int iOrdinal = fe.f13339e.ordinal();
                FE fe2 = c1248eE.f18494l;
                if (iOrdinal == 1) {
                    AbstractC2025tE.b(fe2.f13340f.intValue()).b();
                } else if (iOrdinal == 2) {
                    AbstractC2025tE.a(fe2.f13340f.intValue()).b();
                } else if (iOrdinal == 3) {
                    AbstractC2025tE.f21054a.b();
                } else {
                    if (iOrdinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                    AbstractC2025tE.a(fe2.f13340f.intValue()).b();
                }
                return new C1198dF();
        }
    }
}
