package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.h4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2729h4 extends P1.e {
    public static C2769m4 v(int i8, int i9, int i10, int i11) {
        X5 x5M = Y5.m();
        if (x5M.f23476I) {
            x5M.f();
            x5M.f23476I = false;
        }
        ((Y5) x5M.f23475H).zze = i8 - 2;
        if (x5M.f23476I) {
            x5M.f();
            x5M.f23476I = false;
        }
        ((Y5) x5M.f23475H).zzf = i9 - 2;
        if (x5M.f23476I) {
            x5M.f();
            x5M.f23476I = false;
        }
        ((Y5) x5M.f23475H).zzg = i10 - 2;
        Y5 y7 = (Y5) x5M.d();
        U5 u5M = W5.m();
        if (u5M.f23476I) {
            u5M.f();
            u5M.f23476I = false;
        }
        ((W5) u5M.f23475H).zze = y7;
        return new C2769m4((W5) u5M.d(), i11);
    }

    @Override // p079k.AbstractC3012d
    public final AbstractC2777n4 n() {
        return new L3(W5.class, 10);
    }

    @Override // p079k.AbstractC3012d
    public final int o() {
        return 3;
    }

    @Override // p079k.AbstractC3012d
    public final /* synthetic */ AbstractC2740j p(r rVar) {
        return C2675a6.o(rVar, C2851x.a());
    }

    @Override // p079k.AbstractC3012d
    public final String q() {
        return "type.googleapis.com/google.crypto.tink.HpkePrivateKey";
    }

    @Override // p079k.AbstractC3012d
    public final void r(AbstractC2740j abstractC2740j) throws GeneralSecurityException {
        C2675a6 c2675a6 = (C2675a6) abstractC2740j;
        if (c2675a6.q().i() == 0) {
            throw new GeneralSecurityException("Private key is empty.");
        }
        if (!c2675a6.u()) {
            throw new GeneralSecurityException("Missing public key.");
        }
        P6.b(c2675a6.m());
        AbstractC2737i4.a(c2675a6.p().n());
    }
}
