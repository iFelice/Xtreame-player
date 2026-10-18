package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2284yD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2181wE f22005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2077uE f22006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1042aE f22007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final YD f22008d;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        f22005a = new C2181wE(new Dz(13), C2232xD.class);
        f22006b = new C2077uE(new Dz(14), ngB);
        f22007c = new C1042aE(new Dz(15), C2076uD.class);
        f22008d = new YD(new Dz(16), ngB);
    }

    public static C2232xD a(C2183wG c2183wG, EnumC2235xG enumC2235xG) throws GeneralSecurityException {
        C2128vD c2128vD;
        C2180wD c2180wD;
        C1199dG c1199dGA = C1250eG.A();
        c1199dGA.f(c2183wG.A().F());
        c1199dGA.g(c2183wG.A().E());
        c1199dGA.e(EnumC2235xG.RAW);
        GC gcC = Cw.C(((C1250eG) c1199dGA.b()).d());
        boolean z7 = gcC instanceof C1299fD;
        Object obj = C2128vD.f21459g;
        C2128vD c2128vD2 = C2128vD.f21458f;
        C2128vD c2128vD3 = C2128vD.f21457e;
        C2128vD c2128vD4 = C2128vD.f21455c;
        C2128vD c2128vD5 = C2128vD.f21456d;
        C2128vD c2128vD6 = C2128vD.f21454b;
        if (z7) {
            c2128vD = c2128vD6;
        } else if (gcC instanceof C1713nD) {
            c2128vD = c2128vD5;
        } else if (gcC instanceof ED) {
            c2128vD = c2128vD4;
        } else if (gcC instanceof WC) {
            c2128vD = c2128vD3;
        } else if (gcC instanceof C1041aD) {
            c2128vD = c2128vD2;
        } else {
            if (!(gcC instanceof C1505jD)) {
                throw new GeneralSecurityException("Unsupported DEK parameters when parsing ".concat(gcC.toString()));
            }
            c2128vD = obj;
        }
        int iOrdinal = enumC2235xG.ordinal();
        if (iOrdinal == 1) {
            c2180wD = C2180wD.f21653b;
        } else {
            if (iOrdinal != 3) {
                throw new GeneralSecurityException(p000a.r.f("Unable to parse OutputPrefixType: ", enumC2235xG.zza()));
            }
            c2180wD = C2180wD.f21654c;
        }
        String strE = c2183wG.E();
        OC oc = (OC) gcC;
        if (strE == null) {
            throw new GeneralSecurityException("kekUri must be set");
        }
        if (oc == null) {
            throw new GeneralSecurityException("dekParametersForNewKeys must be set");
        }
        if (oc.a()) {
            throw new GeneralSecurityException("dekParametersForNewKeys must not have ID Requirements");
        }
        if ((c2128vD.equals(c2128vD6) && (oc instanceof C1299fD)) || ((c2128vD.equals(c2128vD5) && (oc instanceof C1713nD)) || ((c2128vD.equals(c2128vD4) && (oc instanceof ED)) || ((c2128vD.equals(c2128vD3) && (oc instanceof WC)) || ((c2128vD.equals(c2128vD2) && (oc instanceof C1041aD)) || (c2128vD.equals(obj) && (oc instanceof C1505jD))))))) {
            return new C2232xD(c2180wD, strE, c2128vD, oc);
        }
        throw new GeneralSecurityException("Cannot use parsing strategy " + c2128vD.f21460a + " when new keys are picked according to " + String.valueOf(oc) + ".");
    }

    public static C2183wG b(C2232xD c2232xD) {
        byte[] bArrQ0 = Cw.Q0(c2232xD.f21859d);
        try {
            C1509jH c1509jH = C1509jH.f19448b;
            UH uh = UH.f16822c;
            C1250eG c1250eGC = C1250eG.C(bArrQ0, C1509jH.f19449c);
            C2131vG c2131vGB = C2183wG.B();
            String str = c2232xD.f21857b;
            c2131vGB.d();
            C2183wG.F((C2183wG) c2131vGB.f20255H, str);
            c2131vGB.d();
            C2183wG.G((C2183wG) c2131vGB.f20255H, c1250eGC);
            return (C2183wG) c2131vGB.b();
        } catch (AH e8) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e8);
        }
    }

    public static EnumC2235xG c(C2180wD c2180wD) throws GeneralSecurityException {
        if (C2180wD.f21653b.equals(c2180wD)) {
            return EnumC2235xG.TINK;
        }
        if (C2180wD.f21654c.equals(c2180wD)) {
            return EnumC2235xG.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(c2180wD)));
    }
}
