package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class N3 extends AbstractC2777n4 {
    public N3(M3 m7) {
        super(C2698d5.class);
    }

    public static final C2682b5 e(C2698d5 c2698d5) {
        C2674a5 c2674a5N = C2682b5.n();
        C2714f5 c2714f5Q = c2698d5.q();
        if (c2674a5N.f23476I) {
            c2674a5N.f();
            c2674a5N.f23476I = false;
        }
        C2682b5.t((C2682b5) c2674a5N.f23475H, c2714f5Q);
        byte[] bArrA = O6.a(c2698d5.m());
        C2796q c2796qO = r.o(0, bArrA, bArrA.length);
        if (c2674a5N.f23476I) {
            c2674a5N.f();
            c2674a5N.f23476I = false;
        }
        ((C2682b5) c2674a5N.f23475H).zzg = c2796qO;
        if (c2674a5N.f23476I) {
            c2674a5N.f();
            c2674a5N.f23476I = false;
        }
        ((C2682b5) c2674a5N.f23475H).zze = 0;
        return (C2682b5) c2674a5N.d();
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final /* bridge */ /* synthetic */ AbstractC2740j a(AbstractC2740j abstractC2740j) {
        return e((C2698d5) abstractC2740j);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final /* synthetic */ AbstractC2740j b(r rVar) {
        return C2698d5.p(rVar, C2851x.a());
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2777n4
    public final void d(AbstractC2740j abstractC2740j) throws GeneralSecurityException {
        C2698d5 c2698d5 = (C2698d5) abstractC2740j;
        P6.a(c2698d5.m());
        C2714f5 c2714f5Q = c2698d5.q();
        if (c2714f5Q.m() < 12 || c2714f5Q.m() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }
}
