package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class D4 extends AbstractC2777n4 {
    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final AbstractC2740j a(AbstractC2740j abstractC2740j) {
        S4 s7 = (S4) abstractC2740j;
        P4 p4N = Q4.n();
        if (p4N.f23476I) {
            p4N.f();
            p4N.f23476I = false;
        }
        ((Q4) p4N.f23475H).zze = 0;
        byte[] bArrA = O6.a(s7.m());
        C2796q c2796qO = r.o(0, bArrA, bArrA.length);
        if (p4N.f23476I) {
            p4N.f();
            p4N.f23476I = false;
        }
        ((Q4) p4N.f23475H).zzf = c2796qO;
        U4 u4P = s7.p();
        if (p4N.f23476I) {
            p4N.f();
            p4N.f23476I = false;
        }
        Q4.t((Q4) p4N.f23475H, u4P);
        return (Q4) p4N.d();
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final /* synthetic */ AbstractC2740j b(r rVar) {
        return S4.o(rVar, C2851x.a());
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final Map c() {
        HashMap map = new HashMap();
        R4 r4N = S4.n();
        r4N.g();
        T4 t4N = U4.n();
        t4N.g();
        r4N.h((U4) t4N.d());
        map.put("AES_CMAC", new C2769m4((S4) r4N.d(), 1));
        R4 r4N2 = S4.n();
        r4N2.g();
        T4 t4N2 = U4.n();
        t4N2.g();
        r4N2.h((U4) t4N2.d());
        map.put("AES256_CMAC", new C2769m4((S4) r4N2.d(), 1));
        R4 r4N3 = S4.n();
        r4N3.g();
        T4 t4N3 = U4.n();
        t4N3.g();
        r4N3.h((U4) t4N3.d());
        map.put("AES256_CMAC_RAW", new C2769m4((S4) r4N3.d(), 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final void d(AbstractC2740j abstractC2740j) throws GeneralSecurityException {
        S4 s7 = (S4) abstractC2740j;
        M3.A(s7.p());
        if (s7.m() != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
    }
}
