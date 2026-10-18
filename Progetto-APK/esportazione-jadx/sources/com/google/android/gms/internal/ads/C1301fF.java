package com.google.android.gms.internal.ads;

import com.google.api.Service;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1301fF implements ME, InterfaceC2233xE, InterfaceC2129vE, InterfaceC1094bE, ZD, IG, InterfaceC1119bo, InterfaceC1791oo {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18736G;

    public C1301fF() {
        this.f18736G = 19;
    }

    public static final InterfaceC2236xH c(Object obj, long j8) {
        InterfaceC2236xH interfaceC2236xH = (InterfaceC2236xH) AbstractC1718nI.k(obj, j8);
        if (((QG) interfaceC2236xH).f16004G) {
            return interfaceC2236xH;
        }
        int size = interfaceC2236xH.size();
        InterfaceC2236xH interfaceC2236xHA = interfaceC2236xH.a(size == 0 ? 10 : size + size);
        AbstractC1718nI.s(obj, j8, interfaceC2236xHA);
        return interfaceC2236xHA;
    }

    public static final boolean h(Object obj) {
        return !((JH) obj).f14137G;
    }

    public static final JH i(Object obj, Object obj2) {
        JH jhB = (JH) obj;
        JH jh = (JH) obj2;
        if (!jh.isEmpty()) {
            if (!jhB.f14137G) {
                jhB = jhB.b();
            }
            jhB.e();
            if (!jh.isEmpty()) {
                jhB.putAll(jh);
            }
        }
        return jhB;
    }

    public static String j(int i8, byte[] bArr, int i9) {
        int i10;
        int length = bArr.length;
        if ((((length - i8) - i9) | i8 | i9) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i8), Integer.valueOf(i9)));
        }
        int i11 = i8 + i9;
        char[] cArr = new char[i9];
        int i12 = 0;
        while (i8 < i11) {
            byte b8 = bArr[i8];
            if (b8 < 0) {
                break;
            }
            i8++;
            cArr[i12] = (char) b8;
            i12++;
        }
        int i13 = i12;
        while (i8 < i11) {
            int i14 = i8 + 1;
            byte b9 = bArr[i8];
            if (b9 >= 0) {
                cArr[i13] = (char) b9;
                i13++;
                i8 = i14;
                while (i8 < i11) {
                    byte b10 = bArr[i8];
                    if (b10 < 0) {
                        break;
                    }
                    i8++;
                    cArr[i13] = (char) b10;
                    i13++;
                }
            } else {
                if (b9 < -32) {
                    if (i14 >= i11) {
                        throw new AH("Protocol message had invalid UTF-8.");
                    }
                    i10 = i13 + 1;
                    i8 += 2;
                    Cw.d1(b9, bArr[i14], cArr, i13);
                } else if (b9 < -16) {
                    if (i14 >= i11 - 1) {
                        throw new AH("Protocol message had invalid UTF-8.");
                    }
                    i10 = i13 + 1;
                    int i15 = i8 + 2;
                    i8 += 3;
                    Cw.H0(b9, bArr[i14], bArr[i15], cArr, i13);
                } else {
                    if (i14 >= i11 - 2) {
                        throw new AH("Protocol message had invalid UTF-8.");
                    }
                    byte b11 = bArr[i14];
                    int i16 = i8 + 3;
                    byte b12 = bArr[i8 + 2];
                    i8 += 4;
                    Cw.U(b9, b11, b12, bArr[i16], cArr, i13);
                    i13 += 2;
                }
                i13 = i10;
            }
        }
        return new String(cArr, 0, i13);
    }

    public static final String k(ByteBuffer byteBuffer, int i8, int i9) throws AH {
        int i10;
        if ((((byteBuffer.limit() - i8) - i9) | i8 | i9) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i8), Integer.valueOf(i9)));
        }
        int i11 = i8 + i9;
        char[] cArr = new char[i9];
        int i12 = 0;
        while (i8 < i11) {
            byte b8 = byteBuffer.get(i8);
            if (b8 < 0) {
                break;
            }
            i8++;
            cArr[i12] = (char) b8;
            i12++;
        }
        int i13 = i12;
        while (i8 < i11) {
            int i14 = i8 + 1;
            byte b9 = byteBuffer.get(i8);
            if (b9 >= 0) {
                cArr[i13] = (char) b9;
                i13++;
                i8 = i14;
                while (i8 < i11) {
                    byte b10 = byteBuffer.get(i8);
                    if (b10 < 0) {
                        break;
                    }
                    i8++;
                    cArr[i13] = (char) b10;
                    i13++;
                }
            } else {
                if (b9 < -32) {
                    if (i14 >= i11) {
                        throw new AH("Protocol message had invalid UTF-8.");
                    }
                    i10 = i13 + 1;
                    i8 += 2;
                    Cw.d1(b9, byteBuffer.get(i14), cArr, i13);
                } else if (b9 < -16) {
                    if (i14 >= i11 - 1) {
                        throw new AH("Protocol message had invalid UTF-8.");
                    }
                    i10 = i13 + 1;
                    int i15 = i8 + 2;
                    i8 += 3;
                    Cw.H0(b9, byteBuffer.get(i14), byteBuffer.get(i15), cArr, i13);
                } else {
                    if (i14 >= i11 - 2) {
                        throw new AH("Protocol message had invalid UTF-8.");
                    }
                    byte b11 = byteBuffer.get(i14);
                    int i16 = i8 + 3;
                    byte b12 = byteBuffer.get(i8 + 2);
                    i8 += 4;
                    Cw.U(b9, b11, b12, byteBuffer.get(i16), cArr, i13);
                    i13 += 2;
                }
                i13 = i10;
            }
        }
        return new String(cArr, 0, i13);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1094bE
    public final FE a(Cw cw) {
        switch (this.f18736G) {
            case 3:
                OE oe = (OE) cw;
                C2181wE c2181wE = AbstractC1405hF.f19071a;
                C1559kF c1559kFB = C1611lF.B();
                RE re = oe.f15146l;
                C1767oF c1767oFB = C1819pF.B();
                int i8 = re.f16230b;
                c1767oFB.d();
                ((C1819pF) c1767oFB.f20255H).zzc = i8;
                C1819pF c1819pF = (C1819pF) c1767oFB.b();
                c1559kFB.d();
                C1611lF.H((C1611lF) c1559kFB.f20255H, c1819pF);
                byte[] bArrR = oe.f15147m.r();
                VG vgY = XG.y(0, bArrR, bArrR.length);
                c1559kFB.d();
                ((C1611lF) c1559kFB.f20255H).zze = vgY;
                return FE.a("type.googleapis.com/google.crypto.tink.AesCmacKey", ((C1611lF) c1559kFB.b()).b(), 2, AbstractC1405hF.b(oe.f15146l.f16231c), oe.f15149o);
            default:
                WE we = (WE) cw;
                WD wd = AbstractC1457iF.f19284a;
                UF ufB = VF.B();
                C1043aF c1043aF = we.f17185l;
                YF yfC = ZF.C();
                int i9 = c1043aF.f17849b;
                yfC.d();
                ((ZF) yfC.f20255H).zzd = i9;
                TF tf = (TF) AbstractC1457iF.f19285b.c(c1043aF.f17851d);
                yfC.d();
                ((ZF) yfC.f20255H).zzc = tf.zza();
                ZF zf = (ZF) yfC.b();
                ufB.d();
                VF.H((VF) ufB.f20255H, zf);
                byte[] bArrR2 = we.f17186m.r();
                VG vgY2 = XG.y(0, bArrR2, bArrR2.length);
                ufB.d();
                ((VF) ufB.f20255H).zzf = vgY2;
                return FE.a("type.googleapis.com/google.crypto.tink.HmacKey", ((VF) ufB.b()).b(), 2, (EnumC2235xG) AbstractC1457iF.f19284a.c(we.f17185l.f17850c), we.f17188o);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1791oo
    public final void b(Object obj, C1751o c1751o) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.InterfaceC2233xE
    public final GE d(OC oc) {
        switch (this.f18736G) {
            case 1:
                RE re = (RE) oc;
                C2181wE c2181wE = AbstractC1405hF.f19071a;
                C1199dG c1199dGA = C1250eG.A();
                c1199dGA.f("type.googleapis.com/google.crypto.tink.AesCmacKey");
                C1663mF c1663mFB = C1715nF.B();
                C1767oF c1767oFB = C1819pF.B();
                int i8 = re.f16230b;
                c1767oFB.d();
                ((C1819pF) c1767oFB.f20255H).zzc = i8;
                C1819pF c1819pF = (C1819pF) c1767oFB.b();
                c1663mFB.d();
                C1715nF.F((C1715nF) c1663mFB.f20255H, c1819pF);
                c1663mFB.d();
                ((C1715nF) c1663mFB.f20255H).zzd = re.f16229a;
                c1199dGA.g(((C1715nF) c1663mFB.b()).b());
                c1199dGA.e(AbstractC1405hF.b(re.f16231c));
                return GE.a((C1250eG) c1199dGA.b());
            default:
                C1043aF c1043aF = (C1043aF) oc;
                WD wd = AbstractC1457iF.f19284a;
                C1199dG c1199dGA2 = C1250eG.A();
                c1199dGA2.f("type.googleapis.com/google.crypto.tink.HmacKey");
                WF wfC = XF.C();
                YF yfC = ZF.C();
                int i9 = c1043aF.f17849b;
                yfC.d();
                ((ZF) yfC.f20255H).zzd = i9;
                TF tf = (TF) AbstractC1457iF.f19285b.c(c1043aF.f17851d);
                yfC.d();
                ((ZF) yfC.f20255H).zzc = tf.zza();
                ZF zf = (ZF) yfC.b();
                wfC.d();
                XF.G((XF) wfC.f20255H, zf);
                wfC.d();
                ((XF) wfC.f20255H).zze = c1043aF.f17848a;
                c1199dGA2.g(((XF) wfC.b()).b());
                c1199dGA2.e((EnumC2235xG) AbstractC1457iF.f19284a.c(c1043aF.f17850c));
                return GE.a((C1250eG) c1199dGA2.b());
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2129vE
    public final GC e(GE ge) throws GeneralSecurityException {
        int i8 = this.f18736G;
        AbstractC2090uc abstractC2090uc = null;
        C1250eG c1250eG = ge.f13494b;
        switch (i8) {
            case 2:
                C2181wE c2181wE = AbstractC1405hF.f19071a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE = c1250eG.E();
                    C1509jH c1509jH = C1509jH.f19448b;
                    UH uh = UH.f16822c;
                    C1715nF c1715nFC = C1715nF.C(xgE, C1509jH.f19449c);
                    C1093bD c1093bD = new C1093bD(abstractC2090uc);
                    c1093bD.l(c1715nFC.A());
                    c1093bD.n(c1715nFC.D().A());
                    c1093bD.f18026H = AbstractC1405hF.a(c1250eG.D());
                    return c1093bD.s();
                } catch (AH e8) {
                    throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e8);
                }
            default:
                WD wd = AbstractC1457iF.f19284a;
                if (!c1250eG.F().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseParameters: ".concat(String.valueOf(c1250eG.F())));
                }
                try {
                    XG xgE2 = c1250eG.E();
                    C1509jH c1509jH2 = C1509jH.f19448b;
                    UH uh2 = UH.f16822c;
                    XF xfE = XF.E(xgE2, C1509jH.f19449c);
                    if (xfE.B() != 0) {
                        throw new GeneralSecurityException(p000a.r.f("Parsing HmacParameters failed: unknown Version ", xfE.B()));
                    }
                    C2246xc c2246xc = new C2246xc(abstractC2090uc);
                    c2246xc.u(xfE.A());
                    c2246xc.z(xfE.F().A());
                    c2246xc.f21884J = (YE) AbstractC1457iF.f19285b.e(xfE.F().B());
                    c2246xc.f21885K = (ZE) AbstractC1457iF.f19284a.e(c1250eG.D());
                    return c2246xc.I();
                } catch (AH e9) {
                    throw new GeneralSecurityException("Parsing HmacParameters failed: ", e9);
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.ZD
    public final NC f(FE fe) throws GeneralSecurityException {
        int i8 = 0;
        AbstractC2090uc abstractC2090uc = null;
        Integer num = fe.f13340f;
        EnumC2235xG enumC2235xG = fe.f13339e;
        XG xg = fe.f13337c;
        String str = fe.f13335a;
        switch (this.f18736G) {
            case 4:
                C2181wE c2181wE = AbstractC1405hF.f19071a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH = C1509jH.f19448b;
                    UH uh = UH.f16822c;
                    C1611lF c1611lFC = C1611lF.C(xg, C1509jH.f19449c);
                    if (c1611lFC.A() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    C1093bD c1093bD = new C1093bD(abstractC2090uc);
                    c1093bD.l(c1611lFC.E().n());
                    c1093bD.n(c1611lFC.D().A());
                    c1093bD.f18026H = AbstractC1405hF.a(enumC2235xG);
                    RE reS = c1093bD.s();
                    C1093bD c1093bD2 = new C1093bD(3, i8);
                    c1093bD2.f18028J = reS;
                    c1093bD2.f18026H = Xu.k(c1611lFC.E().b());
                    c1093bD2.f18027I = num;
                    return c1093bD2.r();
                } catch (AH | IllegalArgumentException unused) {
                    throw new GeneralSecurityException("Parsing AesCmacKey failed");
                }
            default:
                WD wd = AbstractC1457iF.f19284a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
                }
                try {
                    C1509jH c1509jH2 = C1509jH.f19448b;
                    UH uh2 = UH.f16822c;
                    VF vfD = VF.D(xg, C1509jH.f19449c);
                    if (vfD.A() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    C2246xc c2246xc = new C2246xc(abstractC2090uc);
                    c2246xc.u(vfD.F().n());
                    c2246xc.z(vfD.E().A());
                    c2246xc.f21884J = (YE) AbstractC1457iF.f19285b.e(vfD.E().B());
                    c2246xc.f21885K = (ZE) AbstractC1457iF.f19284a.e(enumC2235xG);
                    C1043aF c1043aFI = c2246xc.I();
                    C1093bD c1093bD3 = new C1093bD(5, i8);
                    c1093bD3.f18028J = c1043aFI;
                    c1093bD3.f18026H = Xu.k(vfD.F().b());
                    c1093bD3.f18027I = num;
                    return c1093bD3.t();
                } catch (AH | IllegalArgumentException unused2) {
                    throw new GeneralSecurityException("Parsing HmacKey failed");
                }
        }
    }

    public final /* bridge */ /* synthetic */ Object g(String str, Provider provider) {
        switch (this.f18736G) {
            case 9:
                return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
            case 10:
                return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
            case 11:
                return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
            case 12:
                return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
            case 13:
                return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
            case 14:
                return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
            default:
                return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
    public final void zza(Object obj) {
        switch (this.f18736G) {
            case 21:
                int i8 = 1;
                C1512jK c1512jK = new C1512jK(2, new Y.r(1), 1003);
                C2032tL c2032tL = (C2032tL) ((InterfaceC1152cL) obj);
                c2032tL.getClass();
                C2190wN c2190wN = c1512jK.f19457N;
                C1204dL c1204dLJ = c2190wN != null ? c2032tL.j(c2190wN) : c2032tL.d();
                c2032tL.i(c1204dLJ, 10, new C1773oL(i8, c1204dLJ, c1512jK));
                break;
            case 22:
            default:
                break;
            case 23:
                break;
            case 24:
                break;
            case 25:
                break;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                break;
            case 27:
                break;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                break;
        }
    }

    public /* synthetic */ C1301fF(int i8) {
        this.f18736G = i8;
    }

    public /* synthetic */ C1301fF(int i8, int i9) {
        this.f18736G = i8;
    }

    public /* synthetic */ C1301fF(int i8, Object obj) {
        this.f18736G = i8;
    }

    public /* synthetic */ C1301fF(Object obj) {
        this.f18736G = 29;
    }

    @Override // com.google.android.gms.internal.ads.ME
    public final Object zza() {
        C1093bD c1093bD = new C1093bD((Object) null);
        c1093bD.l(32);
        c1093bD.n(16);
        c1093bD.f18026H = QE.f15999b;
        return c1093bD.s();
    }
}
