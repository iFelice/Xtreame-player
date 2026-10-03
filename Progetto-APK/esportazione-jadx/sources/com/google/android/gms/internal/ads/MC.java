package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes.dex */
public abstract class MC {
    static {
        int i8 = C2287yG.zza;
        try {
            a();
        } catch (GeneralSecurityException e8) {
            throw new ExceptionInInitializerError(e8);
        }
    }

    public static void a() throws GeneralSecurityException {
        C1921rE c1921rE = C1921rE.f20695b;
        c1921rE.d(QC.f15996a);
        c1921rE.c(QC.f15997b);
        AbstractC1095bF.a();
        int i8 = TC.f16609e;
        if (!Cw.f0(i8)) {
            throw new GeneralSecurityException("Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        C2181wE c2181wE = FD.f13331a;
        C1973sE c1973sE = C1973sE.f20878b;
        c1973sE.h(FD.f13331a);
        c1973sE.g(FD.f13332b);
        c1973sE.f(FD.f13333c);
        c1973sE.e(FD.f13334d);
        c1921rE.c(TC.f16605a);
        C1870qE c1870qE = C1870qE.f20561b;
        HashMap map = new HashMap();
        map.put("AES128_CTR_HMAC_SHA256", AbstractC2336zD.f22142e);
        C1950rs c1950rs = new C1950rs();
        c1950rs.e(16);
        c1950rs.h(32);
        c1950rs.l(16);
        c1950rs.j(16);
        UC uc = UC.f16813d;
        c1950rs.f20799K = uc;
        VC vc = VC.f16973d;
        c1950rs.f20800L = vc;
        map.put("AES128_CTR_HMAC_SHA256_RAW", c1950rs.o());
        map.put("AES256_CTR_HMAC_SHA256", AbstractC2336zD.f22143f);
        C1950rs c1950rs2 = new C1950rs();
        c1950rs2.e(32);
        c1950rs2.h(32);
        c1950rs2.l(32);
        c1950rs2.j(16);
        c1950rs2.f20799K = uc;
        c1950rs2.f20800L = vc;
        map.put("AES256_CTR_HMAC_SHA256_RAW", c1950rs2.o());
        c1870qE.c(Collections.unmodifiableMap(map));
        C1714nE c1714nE = C1714nE.f20080b;
        c1714nE.a(TC.f16607c, WC.class);
        C1610lE c1610lE = C1610lE.f19728b;
        c1610lE.b(TC.f16608d, WC.class);
        XD xd = XD.f17392d;
        xd.b(TC.f16606b, i8);
        int i9 = AbstractC1196dD.f18309e;
        if (!Cw.f0(i9)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        c1973sE.h(JD.f14130a);
        c1973sE.g(JD.f14131b);
        c1973sE.f(JD.f14132c);
        c1973sE.e(JD.f14133d);
        c1921rE.c(AbstractC1196dD.f18305a);
        HashMap map2 = new HashMap();
        map2.put("AES128_GCM", AbstractC2336zD.f22138a);
        Object obj = null;
        C2246xc c2246xc = new C2246xc(obj);
        c2246xc.m();
        c2246xc.t(16);
        c2246xc.x();
        C1247eD c1247eD = C1247eD.f18492d;
        c2246xc.f21885K = c1247eD;
        map2.put("AES128_GCM_RAW", c2246xc.H());
        map2.put("AES256_GCM", AbstractC2336zD.f22139b);
        C2246xc c2246xc2 = new C2246xc(obj);
        c2246xc2.m();
        c2246xc2.t(32);
        c2246xc2.x();
        c2246xc2.f21885K = c1247eD;
        map2.put("AES256_GCM_RAW", c2246xc2.H());
        c1870qE.c(Collections.unmodifiableMap(map2));
        c1714nE.a(AbstractC1196dD.f18307c, C1299fD.class);
        c1610lE.b(AbstractC1196dD.f18308d, C1299fD.class);
        xd.b(AbstractC1196dD.f18306b, i9);
        if (UD.a()) {
            return;
        }
        C2337zE c2337zE = YC.f17577a;
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Registering AES EAX is not supported in FIPS mode");
        }
        c1973sE.h(HD.f13729a);
        c1973sE.g(HD.f13730b);
        c1973sE.f(HD.f13731c);
        c1973sE.e(HD.f13732d);
        c1921rE.c(YC.f17577a);
        HashMap map3 = new HashMap();
        map3.put("AES128_EAX", AbstractC2336zD.f22140c);
        C2246xc c2246xc3 = new C2246xc();
        c2246xc3.l(16);
        c2246xc3.s(16);
        c2246xc3.y();
        ZC zc = ZC.f17735d;
        c2246xc3.f21885K = zc;
        map3.put("AES128_EAX_RAW", c2246xc3.G());
        map3.put("AES256_EAX", AbstractC2336zD.f22141d);
        C2246xc c2246xc4 = new C2246xc();
        c2246xc4.l(16);
        c2246xc4.s(32);
        c2246xc4.y();
        c2246xc4.f21885K = zc;
        map3.put("AES256_EAX_RAW", c2246xc4.G());
        c1870qE.c(Collections.unmodifiableMap(map3));
        c1610lE.b(YC.f17579c, C1041aD.class);
        xd.a(YC.f17578b);
        C2337zE c2337zE2 = AbstractC1403hD.f19063a;
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Registering AES GCM SIV is not supported in FIPS mode");
        }
        c1973sE.h(KD.f14313a);
        c1973sE.g(KD.f14314b);
        c1973sE.f(KD.f14315c);
        c1973sE.e(KD.f14316d);
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            c1921rE.c(AbstractC1403hD.f19063a);
            HashMap map4 = new HashMap();
            C1455iD c1455iD = C1455iD.f19279d;
            C1455iD c1455iD2 = C1455iD.f19277b;
            map4.put("AES128_GCM_SIV", new C1505jD(16, c1455iD2));
            map4.put("AES128_GCM_SIV_RAW", new C1505jD(16, c1455iD));
            map4.put("AES256_GCM_SIV", new C1505jD(32, c1455iD2));
            map4.put("AES256_GCM_SIV_RAW", new C1505jD(32, c1455iD));
            c1870qE.c(Collections.unmodifiableMap(map4));
            c1714nE.a(AbstractC1403hD.f19065c, C1505jD.class);
            c1610lE.b(AbstractC1403hD.f19064b, C1505jD.class);
            xd.a(AbstractC1403hD.f19066d);
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
        }
        C2337zE c2337zE3 = AbstractC1609lD.f19725a;
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Registering ChaCha20Poly1305 is not supported in FIPS mode");
        }
        C2181wE c2181wE2 = MD.f14687a;
        C1973sE c1973sE2 = C1973sE.f20878b;
        c1973sE2.h(MD.f14687a);
        c1973sE2.g(MD.f14688b);
        c1973sE2.f(MD.f14689c);
        c1973sE2.e(MD.f14690d);
        C1921rE c1921rE2 = C1921rE.f20695b;
        c1921rE2.c(AbstractC1609lD.f19725a);
        C1610lE c1610lE2 = C1610lE.f19728b;
        c1610lE2.b(AbstractC1609lD.f19726b, C1713nD.class);
        C1870qE c1870qE2 = C1870qE.f20561b;
        HashMap map5 = new HashMap();
        map5.put("CHACHA20_POLY1305", new C1713nD(C1661mD.f19920b));
        map5.put("CHACHA20_POLY1305_RAW", new C1713nD(C1661mD.f19922d));
        c1870qE2.c(Collections.unmodifiableMap(map5));
        XD xd2 = XD.f17392d;
        xd2.a(AbstractC1609lD.f19727c);
        C2337zE c2337zE4 = AbstractC1765oD.f20251a;
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Registering KMS AEAD is not supported in FIPS mode");
        }
        c1973sE2.h(AbstractC2024tD.f21050a);
        c1973sE2.g(AbstractC2024tD.f21051b);
        c1973sE2.f(AbstractC2024tD.f21052c);
        c1973sE2.e(AbstractC2024tD.f21053d);
        c1921rE2.c(AbstractC1765oD.f20251a);
        c1610lE2.b(AbstractC1765oD.f20253c, C1972sD.class);
        xd2.a(AbstractC1765oD.f20252b);
        C1145cE c1145cE = AbstractC1817pD.f20434a;
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Registering KMS Envelope AEAD is not supported in FIPS mode");
        }
        c1973sE2.h(AbstractC2284yD.f22005a);
        c1973sE2.g(AbstractC2284yD.f22006b);
        c1973sE2.f(AbstractC2284yD.f22007c);
        c1973sE2.e(AbstractC2284yD.f22008d);
        c1610lE2.b(AbstractC1817pD.f20435b, C2232xD.class);
        c1921rE2.c(AbstractC1817pD.f20436c);
        xd2.a(AbstractC1817pD.f20434a);
        C2337zE c2337zE5 = BD.f12299a;
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Registering XChaCha20Poly1305 is not supported in FIPS mode");
        }
        c1973sE2.h(SD.f16413a);
        c1973sE2.g(SD.f16414b);
        c1973sE2.f(SD.f16415c);
        c1973sE2.e(SD.f16416d);
        c1921rE2.c(BD.f12299a);
        HashMap map6 = new HashMap();
        map6.put("XCHACHA20_POLY1305", new ED(DD.f12784b));
        map6.put("XCHACHA20_POLY1305_RAW", new ED(DD.f12786d));
        c1870qE2.c(Collections.unmodifiableMap(map6));
        c1610lE2.b(BD.f12302d, ED.class);
        C1714nE.f20080b.a(BD.f12301c, ED.class);
        xd2.a(BD.f12300b);
    }
}
