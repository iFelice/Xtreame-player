package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1095bF {
    static {
        int i8 = C2287yG.zza;
        try {
            a();
        } catch (GeneralSecurityException e8) {
            throw new ExceptionInInitializerError(e8);
        }
    }

    public static void a() {
        C1921rE c1921rE = C1921rE.f20695b;
        c1921rE.d(C1249eF.f18495a);
        c1921rE.c(C1249eF.f18496b);
        c1921rE.d(UE.f16819a);
        int i8 = XE.f17400f;
        if (!Cw.f0(i8)) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        WD wd = AbstractC1457iF.f19284a;
        C1973sE c1973sE = C1973sE.f20878b;
        c1973sE.h(AbstractC1457iF.f19286c);
        c1973sE.g(AbstractC1457iF.f19287d);
        c1973sE.f(AbstractC1457iF.f19288e);
        c1973sE.e(AbstractC1457iF.f19289f);
        c1921rE.c(XE.f17395a);
        c1921rE.c(XE.f17396b);
        C1870qE c1870qE = C1870qE.f20561b;
        HashMap map = new HashMap();
        map.put("HMAC_SHA256_128BITTAG", AbstractC1353gF.f18918a);
        C2246xc c2246xc = new C2246xc((AbstractC2090uc) null);
        c2246xc.u(32);
        c2246xc.z(16);
        ZE ze = ZE.f17740e;
        c2246xc.f21885K = ze;
        YE ye = YE.f17585d;
        c2246xc.f21884J = ye;
        map.put("HMAC_SHA256_128BITTAG_RAW", c2246xc.I());
        C2246xc c2246xc2 = new C2246xc((AbstractC2090uc) null);
        c2246xc2.u(32);
        c2246xc2.z(32);
        ZE ze2 = ZE.f17737b;
        c2246xc2.f21885K = ze2;
        c2246xc2.f21884J = ye;
        map.put("HMAC_SHA256_256BITTAG", c2246xc2.I());
        C2246xc c2246xc3 = new C2246xc((AbstractC2090uc) null);
        c2246xc3.u(32);
        c2246xc3.z(32);
        c2246xc3.f21885K = ze;
        c2246xc3.f21884J = ye;
        map.put("HMAC_SHA256_256BITTAG_RAW", c2246xc3.I());
        C2246xc c2246xc4 = new C2246xc((AbstractC2090uc) null);
        c2246xc4.u(64);
        c2246xc4.z(16);
        c2246xc4.f21885K = ze2;
        YE ye2 = YE.f17587f;
        c2246xc4.f21884J = ye2;
        map.put("HMAC_SHA512_128BITTAG", c2246xc4.I());
        C2246xc c2246xc5 = new C2246xc((AbstractC2090uc) null);
        c2246xc5.u(64);
        c2246xc5.z(16);
        c2246xc5.f21885K = ze;
        c2246xc5.f21884J = ye2;
        map.put("HMAC_SHA512_128BITTAG_RAW", c2246xc5.I());
        C2246xc c2246xc6 = new C2246xc((AbstractC2090uc) null);
        c2246xc6.u(64);
        c2246xc6.z(32);
        c2246xc6.f21885K = ze2;
        c2246xc6.f21884J = ye2;
        map.put("HMAC_SHA512_256BITTAG", c2246xc6.I());
        C2246xc c2246xc7 = new C2246xc((AbstractC2090uc) null);
        c2246xc7.u(64);
        c2246xc7.z(32);
        c2246xc7.f21885K = ze;
        c2246xc7.f21884J = ye2;
        map.put("HMAC_SHA512_256BITTAG_RAW", c2246xc7.I());
        map.put("HMAC_SHA512_512BITTAG", AbstractC1353gF.f18919b);
        C2246xc c2246xc8 = new C2246xc((AbstractC2090uc) null);
        c2246xc8.u(64);
        c2246xc8.z(64);
        c2246xc8.f21885K = ze;
        c2246xc8.f21884J = ye2;
        map.put("HMAC_SHA512_512BITTAG_RAW", c2246xc8.I());
        c1870qE.c(Collections.unmodifiableMap(map));
        C1610lE c1610lE = C1610lE.f19728b;
        c1610lE.b(XE.f17399e, C1043aF.class);
        C1714nE.f20080b.a(XE.f17398d, C1043aF.class);
        XD xd = XD.f17392d;
        xd.b(XE.f17397c, i8);
        if (UD.a()) {
            return;
        }
        C1506jE c1506jE = PE.f15351a;
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Registering AES CMAC is not supported in FIPS mode");
        }
        c1973sE.h(AbstractC1405hF.f19071a);
        c1973sE.g(AbstractC1405hF.f19072b);
        c1973sE.f(AbstractC1405hF.f19073c);
        c1973sE.e(AbstractC1405hF.f19074d);
        c1610lE.b(PE.f15351a, RE.class);
        c1921rE.c(PE.f15352b);
        c1921rE.c(PE.f15353c);
        HashMap map2 = new HashMap();
        RE re = AbstractC1353gF.f18920c;
        map2.put("AES_CMAC", re);
        map2.put("AES256_CMAC", re);
        C1093bD c1093bD = new C1093bD((Object) null);
        c1093bD.l(32);
        c1093bD.n(16);
        c1093bD.f18026H = QE.f16002e;
        map2.put("AES256_CMAC_RAW", c1093bD.s());
        c1870qE.c(Collections.unmodifiableMap(map2));
        xd.a(PE.f15354d);
    }
}
