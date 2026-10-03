package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class L3 extends AbstractC2777n4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f23587b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ L3(Class cls, int i8) {
        super(cls);
        this.f23587b = i8;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final AbstractC2740j a(AbstractC2740j abstractC2740j) throws InvalidKeyException, InvalidAlgorithmParameterException {
        switch (this.f23587b) {
            case 0:
                Y4 y7 = (Y4) abstractC2740j;
                AbstractC2848w4[] abstractC2848w4Arr = {new K3(1, M6.class)};
                HashMap map = new HashMap();
                for (int i8 = 0; i8 <= 0; i8++) {
                    AbstractC2848w4 abstractC2848w4 = abstractC2848w4Arr[i8];
                    boolean zContainsKey = map.containsKey(abstractC2848w4.f24055a);
                    Class cls = abstractC2848w4.f24055a;
                    if (zContainsKey) {
                        throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls.getCanonicalName())));
                    }
                    map.put(cls, abstractC2848w4);
                }
                Class cls2 = abstractC2848w4Arr[0].f24055a;
                Collections.unmodifiableMap(map);
                C2682b5 c2682b5E = N3.e(y7.o());
                AbstractC2740j abstractC2740jA = new M3(13).n().a(y7.p());
                V4 v4N = W4.n();
                if (v4N.f23476I) {
                    v4N.f();
                    v4N.f23476I = false;
                }
                ((W4) v4N.f23475H).zzf = c2682b5E;
                P5 p7 = (P5) abstractC2740jA;
                if (v4N.f23476I) {
                    v4N.f();
                    v4N.f23476I = false;
                }
                W4.t((W4) v4N.f23475H, p7);
                if (v4N.f23476I) {
                    v4N.f();
                    v4N.f23476I = false;
                }
                ((W4) v4N.f23475H).zze = 0;
                return (W4) v4N.d();
            case 1:
                C2746j5 c2746j5 = (C2746j5) abstractC2740j;
                C2722g5 c2722g5N = C2730h5.n();
                byte[] bArrA = O6.a(c2746j5.m());
                C2796q c2796qO = r.o(0, bArrA, bArrA.length);
                if (c2722g5N.f23476I) {
                    c2722g5N.f();
                    c2722g5N.f23476I = false;
                }
                ((C2730h5) c2722g5N.f23475H).zzg = c2796qO;
                C2762l5 c2762l5P = c2746j5.p();
                if (c2722g5N.f23476I) {
                    c2722g5N.f();
                    c2722g5N.f23476I = false;
                }
                C2730h5.s((C2730h5) c2722g5N.f23475H, c2762l5P);
                if (c2722g5N.f23476I) {
                    c2722g5N.f();
                    c2722g5N.f23476I = false;
                }
                ((C2730h5) c2722g5N.f23475H).zze = 0;
                return (C2730h5) c2722g5N.d();
            case 2:
                C2770m5 c2770m5N = C2778n5.n();
                byte[] bArrA2 = O6.a(((C2794p5) abstractC2740j).m());
                C2796q c2796qO2 = r.o(0, bArrA2, bArrA2.length);
                if (c2770m5N.f23476I) {
                    c2770m5N.f();
                    c2770m5N.f23476I = false;
                }
                ((C2778n5) c2770m5N.f23475H).zzf = c2796qO2;
                if (c2770m5N.f23476I) {
                    c2770m5N.f();
                    c2770m5N.f23476I = false;
                }
                ((C2778n5) c2770m5N.f23475H).zze = 0;
                return (C2778n5) c2770m5N.d();
            case 3:
                C2802q5 c2802q5N = C2809r5.n();
                byte[] bArrA3 = O6.a(((C2825t5) abstractC2740j).m());
                C2796q c2796qO3 = r.o(0, bArrA3, bArrA3.length);
                if (c2802q5N.f23476I) {
                    c2802q5N.f();
                    c2802q5N.f23476I = false;
                }
                ((C2809r5) c2802q5N.f23475H).zzf = c2796qO3;
                if (c2802q5N.f23476I) {
                    c2802q5N.f();
                    c2802q5N.f23476I = false;
                }
                ((C2809r5) c2802q5N.f23475H).zze = 0;
                return (C2809r5) c2802q5N.d();
            case 4:
                C2865y5 c2865y5N = C2873z5.n();
                if (c2865y5N.f23476I) {
                    c2865y5N.f();
                    c2865y5N.f23476I = false;
                }
                ((C2873z5) c2865y5N.f23475H).zze = 0;
                byte[] bArrA4 = O6.a(32);
                C2796q c2796qO4 = r.o(0, bArrA4, bArrA4.length);
                if (c2865y5N.f23476I) {
                    c2865y5N.f();
                    c2865y5N.f23476I = false;
                }
                ((C2873z5) c2865y5N.f23475H).zzf = c2796qO4;
                return (C2873z5) c2865y5N.d();
            case 5:
                C2826t6 c2826t6 = (C2826t6) abstractC2740j;
                C2810r6 c2810r6N = C2818s6.n();
                if (c2810r6N.f23476I) {
                    c2810r6N.f();
                    c2810r6N.f23476I = false;
                }
                C2818s6.r((C2818s6) c2810r6N.f23475H, c2826t6);
                if (c2810r6N.f23476I) {
                    c2810r6N.f();
                    c2810r6N.f23476I = false;
                }
                ((C2818s6) c2810r6N.f23475H).zze = 0;
                return (C2818s6) c2810r6N.d();
            case 6:
                C2850w6 c2850w6 = (C2850w6) abstractC2740j;
                C2834u6 c2834u6N = C2842v6.n();
                if (c2834u6N.f23476I) {
                    c2834u6N.f();
                    c2834u6N.f23476I = false;
                }
                C2842v6.r((C2842v6) c2834u6N.f23475H, c2850w6);
                if (c2834u6N.f23476I) {
                    c2834u6N.f();
                    c2834u6N.f23476I = false;
                }
                ((C2842v6) c2834u6N.f23475H).zze = 0;
                return (C2842v6) c2834u6N.d();
            case 7:
                C2866y6 c2866y6N = C2874z6.n();
                if (c2866y6N.f23476I) {
                    c2866y6N.f();
                    c2866y6N.f23476I = false;
                }
                ((C2874z6) c2866y6N.f23475H).zze = 0;
                byte[] bArrA5 = O6.a(32);
                C2796q c2796qO5 = r.o(0, bArrA5, bArrA5.length);
                if (c2866y6N.f23476I) {
                    c2866y6N.f();
                    c2866y6N.f23476I = false;
                }
                ((C2874z6) c2866y6N.f23475H).zzf = c2796qO5;
                return (C2874z6) c2866y6N.d();
            case 8:
                C2833u5 c2833u5N = C2841v5.n();
                byte[] bArrA6 = O6.a(((C2857x5) abstractC2740j).m());
                C2796q c2796qO6 = r.o(0, bArrA6, bArrA6.length);
                if (c2833u5N.f23476I) {
                    c2833u5N.f();
                    c2833u5N.f23476I = false;
                }
                ((C2841v5) c2833u5N.f23475H).zzf = c2796qO6;
                if (c2833u5N.f23476I) {
                    c2833u5N.f();
                    c2833u5N.f23476I = false;
                }
                ((C2841v5) c2833u5N.f23475H).zze = 0;
                return (C2841v5) c2833u5N.d();
            case 9:
                E5 e8 = (E5) abstractC2740j;
                ECParameterSpec eCParameterSpecC0 = AbstractC2864y4.C0(AbstractC2864y4.Q(e8.o().p().q()));
                KeyPairGenerator keyPairGenerator = (KeyPairGenerator) J6.f23572h.a("EC");
                keyPairGenerator.initialize(eCParameterSpecC0);
                KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
                ECPublicKey eCPublicKey = (ECPublicKey) keyPairGenerateKeyPair.getPublic();
                ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairGenerateKeyPair.getPrivate();
                ECPoint w7 = eCPublicKey.getW();
                K5 k5O = L5.o();
                if (k5O.f23476I) {
                    k5O.f();
                    k5O.f23476I = false;
                }
                ((L5) k5O.f23475H).zze = 0;
                G5 g5O = e8.o();
                if (k5O.f23476I) {
                    k5O.f();
                    k5O.f23476I = false;
                }
                L5.u((L5) k5O.f23475H, g5O);
                byte[] byteArray = w7.getAffineX().toByteArray();
                C2796q c2796qO7 = r.o(0, byteArray, byteArray.length);
                if (k5O.f23476I) {
                    k5O.f();
                    k5O.f23476I = false;
                }
                ((L5) k5O.f23475H).zzg = c2796qO7;
                byte[] byteArray2 = w7.getAffineY().toByteArray();
                C2796q c2796qO8 = r.o(0, byteArray2, byteArray2.length);
                if (k5O.f23476I) {
                    k5O.f();
                    k5O.f23476I = false;
                }
                ((L5) k5O.f23475H).zzh = c2796qO8;
                L5 l8 = (L5) k5O.d();
                I5 i5N = J5.n();
                if (i5N.f23476I) {
                    i5N.f();
                    i5N.f23476I = false;
                }
                ((J5) i5N.f23475H).zze = 0;
                if (i5N.f23476I) {
                    i5N.f();
                    i5N.f23476I = false;
                }
                ((J5) i5N.f23475H).zzf = l8;
                byte[] byteArray3 = eCPrivateKey.getS().toByteArray();
                C2796q c2796qO9 = r.o(0, byteArray3, byteArray3.length);
                if (i5N.f23476I) {
                    i5N.f();
                    i5N.f23476I = false;
                }
                ((J5) i5N.f23475H).zzg = c2796qO9;
                return (J5) i5N.d();
            case 10:
                W5 w8 = (W5) abstractC2740j;
                byte[] bArrN = AbstractC2864y4.N();
                byte[] bArrX = AbstractC2864y4.X(bArrN);
                C2683b6 c2683b6O = C2691c6.o();
                if (c2683b6O.f23476I) {
                    c2683b6O.f();
                    c2683b6O.f23476I = false;
                }
                ((C2691c6) c2683b6O.f23475H).zze = 0;
                Y5 y5O = w8.o();
                if (c2683b6O.f23476I) {
                    c2683b6O.f();
                    c2683b6O.f23476I = false;
                }
                C2691c6.t((C2691c6) c2683b6O.f23475H, y5O);
                C2796q c2796qO10 = r.o(0, bArrX, 32);
                if (c2683b6O.f23476I) {
                    c2683b6O.f();
                    c2683b6O.f23476I = false;
                }
                ((C2691c6) c2683b6O.f23475H).zzg = c2796qO10;
                C2691c6 c2691c6 = (C2691c6) c2683b6O.d();
                Z5 z5N = C2675a6.n();
                if (z5N.f23476I) {
                    z5N.f();
                    z5N.f23476I = false;
                }
                ((C2675a6) z5N.f23475H).zze = 0;
                if (z5N.f23476I) {
                    z5N.f();
                    z5N.f23476I = false;
                }
                ((C2675a6) z5N.f23475H).zzf = c2691c6;
                C2796q c2796qO11 = r.o(0, bArrN, bArrN.length);
                if (z5N.f23476I) {
                    z5N.f();
                    z5N.f23476I = false;
                }
                ((C2675a6) z5N.f23475H).zzg = c2796qO11;
                return (C2675a6) z5N.d();
            default:
                R5 r7 = (R5) abstractC2740j;
                O5 o5N = P5.n();
                if (o5N.f23476I) {
                    o5N.f();
                    o5N.f23476I = false;
                }
                ((P5) o5N.f23475H).zze = 0;
                T5 t5Q = r7.q();
                if (o5N.f23476I) {
                    o5N.f();
                    o5N.f23476I = false;
                }
                P5.t((P5) o5N.f23475H, t5Q);
                byte[] bArrA7 = O6.a(r7.m());
                C2796q c2796qO12 = r.o(0, bArrA7, bArrA7.length);
                if (o5N.f23476I) {
                    o5N.f();
                    o5N.f23476I = false;
                }
                ((P5) o5N.f23475H).zzg = c2796qO12;
                return (P5) o5N.d();
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final /* synthetic */ AbstractC2740j b(r rVar) {
        switch (this.f23587b) {
            case 0:
                return Y4.n(rVar, C2851x.a());
            case 1:
                return C2746j5.o(rVar, C2851x.a());
            case 2:
                return C2794p5.o(rVar, C2851x.a());
            case 3:
                return C2825t5.o(rVar, C2851x.a());
            case 4:
                return A5.n(rVar, C2851x.a());
            case 5:
                return C2826t6.n(rVar, C2851x.a());
            case 6:
                return C2850w6.n(rVar, C2851x.a());
            case 7:
                return A6.n(rVar, C2851x.a());
            case 8:
                return C2857x5.o(rVar, C2851x.a());
            case 9:
                return E5.n(rVar, C2851x.a());
            case 10:
                return W5.n(rVar, C2851x.a());
            default:
                return R5.p(rVar, C2851x.a());
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final Map c() throws GeneralSecurityException {
        switch (this.f23587b) {
            case 0:
                HashMap map = new HashMap();
                map.put("AES128_CTR_HMAC_SHA256", M3.v(16, 16, 1));
                map.put("AES128_CTR_HMAC_SHA256_RAW", M3.v(16, 16, 3));
                map.put("AES256_CTR_HMAC_SHA256", M3.v(32, 32, 1));
                map.put("AES256_CTR_HMAC_SHA256_RAW", M3.v(32, 32, 3));
                return Collections.unmodifiableMap(map);
            case 1:
                HashMap map2 = new HashMap();
                map2.put("AES128_EAX", M3.u(16, 1));
                map2.put("AES128_EAX_RAW", M3.u(16, 3));
                map2.put("AES256_EAX", M3.u(32, 1));
                map2.put("AES256_EAX_RAW", M3.u(32, 3));
                return Collections.unmodifiableMap(map2);
            case 2:
                HashMap map3 = new HashMap();
                map3.put("AES128_GCM", M3.w(16, 1));
                map3.put("AES128_GCM_RAW", M3.w(16, 3));
                map3.put("AES256_GCM", M3.w(32, 1));
                map3.put("AES256_GCM_RAW", M3.w(32, 3));
                return Collections.unmodifiableMap(map3);
            case 3:
                HashMap map4 = new HashMap();
                map4.put("AES128_GCM_SIV", M3.x(16, 1));
                map4.put("AES128_GCM_SIV_RAW", M3.x(16, 3));
                map4.put("AES256_GCM_SIV", M3.x(32, 1));
                map4.put("AES256_GCM_SIV_RAW", M3.x(32, 3));
                return Collections.unmodifiableMap(map4);
            case 4:
                HashMap map5 = new HashMap();
                map5.put("CHACHA20_POLY1305", new C2769m4(A5.m(), 1));
                map5.put("CHACHA20_POLY1305_RAW", new C2769m4(A5.m(), 3));
                return Collections.unmodifiableMap(map5);
            case 5:
            case 6:
            default:
                return Collections.emptyMap();
            case 7:
                HashMap map6 = new HashMap();
                map6.put("XCHACHA20_POLY1305", new C2769m4(A6.m(), 1));
                map6.put("XCHACHA20_POLY1305_RAW", new C2769m4(A6.m(), 3));
                return Collections.unmodifiableMap(map6);
            case 8:
                HashMap map7 = new HashMap();
                C2849w5 c2849w5N = C2857x5.n();
                if (c2849w5N.f23476I) {
                    c2849w5N.f();
                    c2849w5N.f23476I = false;
                }
                ((C2857x5) c2849w5N.f23475H).zze = 64;
                map7.put("AES256_SIV", new C2769m4((C2857x5) c2849w5N.d(), 1));
                C2849w5 c2849w5N2 = C2857x5.n();
                if (c2849w5N2.f23476I) {
                    c2849w5N2.f();
                    c2849w5N2.f23476I = false;
                }
                ((C2857x5) c2849w5N2.f23475H).zze = 64;
                map7.put("AES256_SIV_RAW", new C2769m4((C2857x5) c2849w5N2.d(), 3));
                return Collections.unmodifiableMap(map7);
            case 9:
                HashMap map8 = new HashMap();
                C2855x3 c2855x3G = AbstractC2864y4.g("AES128_GCM");
                byte[] bArr = Y3.f23708d;
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM", Y3.v(3, c2855x3G, bArr, 1));
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW", Y3.v(3, AbstractC2864y4.g("AES128_GCM"), bArr, 3));
                map8.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM", Y3.v(4, AbstractC2864y4.g("AES128_GCM"), bArr, 1));
                map8.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW", Y3.v(4, AbstractC2864y4.g("AES128_GCM"), bArr, 3));
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX", Y3.v(4, AbstractC2864y4.g("AES128_GCM"), bArr, 3));
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", Y3.v(3, AbstractC2864y4.g("AES128_CTR_HMAC_SHA256"), bArr, 1));
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", Y3.v(3, AbstractC2864y4.g("AES128_CTR_HMAC_SHA256"), bArr, 3));
                map8.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", Y3.v(4, AbstractC2864y4.g("AES128_CTR_HMAC_SHA256"), bArr, 1));
                map8.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", Y3.v(4, AbstractC2864y4.g("AES128_CTR_HMAC_SHA256"), bArr, 3));
                return Collections.unmodifiableMap(map8);
            case 10:
                HashMap map9 = new HashMap();
                map9.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM", C2729h4.v(3, 3, 3, 1));
                map9.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW", C2729h4.v(3, 3, 3, 3));
                map9.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM", C2729h4.v(3, 3, 4, 1));
                map9.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW", C2729h4.v(3, 3, 4, 3));
                map9.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305", C2729h4.v(3, 3, 5, 1));
                map9.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305_RAW", C2729h4.v(3, 3, 5, 3));
                map9.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM", C2729h4.v(4, 3, 3, 1));
                map9.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW", C2729h4.v(4, 3, 3, 3));
                map9.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM", C2729h4.v(4, 3, 4, 1));
                map9.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW", C2729h4.v(4, 3, 4, 3));
                map9.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM", C2729h4.v(5, 4, 3, 1));
                map9.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM_RAW", C2729h4.v(5, 4, 3, 3));
                map9.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM", C2729h4.v(5, 4, 4, 1));
                map9.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM_RAW", C2729h4.v(5, 4, 4, 3));
                map9.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM", C2729h4.v(6, 5, 3, 1));
                map9.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM_RAW", C2729h4.v(6, 5, 3, 3));
                map9.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM", C2729h4.v(6, 5, 4, 1));
                map9.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM_RAW", C2729h4.v(6, 5, 4, 3));
                return Collections.unmodifiableMap(map9);
            case 11:
                HashMap map10 = new HashMap();
                map10.put("HMAC_SHA256_128BITTAG", M3.z(32, 16, 5, 1));
                map10.put("HMAC_SHA256_128BITTAG_RAW", M3.z(32, 16, 5, 3));
                map10.put("HMAC_SHA256_256BITTAG", M3.z(32, 32, 5, 1));
                map10.put("HMAC_SHA256_256BITTAG_RAW", M3.z(32, 32, 5, 3));
                map10.put("HMAC_SHA512_128BITTAG", M3.z(64, 16, 6, 1));
                map10.put("HMAC_SHA512_128BITTAG_RAW", M3.z(64, 16, 6, 3));
                map10.put("HMAC_SHA512_256BITTAG", M3.z(64, 32, 6, 1));
                map10.put("HMAC_SHA512_256BITTAG_RAW", M3.z(64, 32, 6, 3));
                map10.put("HMAC_SHA512_512BITTAG", M3.z(64, 64, 6, 1));
                map10.put("HMAC_SHA512_512BITTAG_RAW", M3.z(64, 64, 6, 3));
                return Collections.unmodifiableMap(map10);
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final void d(AbstractC2740j abstractC2740j) throws GeneralSecurityException {
        switch (this.f23587b) {
            case 0:
                Y4 y7 = (Y4) abstractC2740j;
                AbstractC2777n4 abstractC2777n4N = new M3(1).n();
                C2698d5 c2698d5O = y7.o();
                P6.a(c2698d5O.m());
                C2714f5 c2714f5Q = c2698d5O.q();
                if (c2714f5Q.m() < 12 || c2714f5Q.m() > 16) {
                    throw new GeneralSecurityException("invalid IV size");
                }
                new M3(13).n().d(y7.p());
                P6.a(y7.o().m());
                return;
            case 1:
                C2746j5 c2746j5 = (C2746j5) abstractC2740j;
                P6.a(c2746j5.m());
                if (c2746j5.p().m() != 12 && c2746j5.p().m() != 16) {
                    throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
                }
                return;
            case 2:
                P6.a(((C2794p5) abstractC2740j).m());
                return;
            case 3:
                P6.a(((C2825t5) abstractC2740j).m());
                return;
            case 4:
                return;
            case 5:
                return;
            case 6:
                C2850w6 c2850w6 = (C2850w6) abstractC2740j;
                if (c2850w6.o().isEmpty() || !c2850w6.p()) {
                    throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
                }
                return;
            case 7:
                return;
            case 8:
                C2857x5 c2857x5 = (C2857x5) abstractC2740j;
                if (c2857x5.m() != 64) {
                    throw new InvalidAlgorithmParameterException(A0.O.y("invalid key size: ", c2857x5.m(), ". Valid keys must have 64 bytes."));
                }
                return;
            case 9:
                AbstractC2864y4.s(((E5) abstractC2740j).o());
                return;
            case 10:
                AbstractC2737i4.a(((W5) abstractC2740j).o());
                return;
            default:
                R5 r7 = (R5) abstractC2740j;
                if (r7.m() < 16) {
                    throw new GeneralSecurityException("key too short");
                }
                M3.B(r7.q());
                return;
        }
    }
}
