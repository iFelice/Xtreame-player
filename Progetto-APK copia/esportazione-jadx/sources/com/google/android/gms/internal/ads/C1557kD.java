package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1557kD extends NC {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C1713nD f19594l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Xu f19595m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final NG f19596n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Integer f19597o;

    public C1557kD(C1713nD c1713nD, Xu xu, NG ng, Integer num) {
        this.f19594l = c1713nD;
        this.f19595m = xu;
        this.f19596n = ng;
        this.f19597o = num;
    }

    public static C1557kD i2(C1661mD c1661mD, Xu xu, Integer num) throws GeneralSecurityException {
        NG ngB;
        C1661mD c1661mD2 = C1661mD.f19922d;
        if (c1661mD != c1661mD2 && num == null) {
            throw new GeneralSecurityException(p000a.r.g("For given Variant ", c1661mD.f19923a, " the value of idRequirement must be non-null"));
        }
        if (c1661mD == c1661mD2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (xu.e() != 32) {
            throw new GeneralSecurityException(p000a.r.f("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not ", xu.e()));
        }
        C1713nD c1713nD = new C1713nD(c1661mD);
        if (c1661mD == c1661mD2) {
            ngB = AbstractC2025tE.f21054a;
        } else if (c1661mD == C1661mD.f19921c) {
            ngB = AbstractC2025tE.a(num.intValue());
        } else {
            if (c1661mD != C1661mD.f19920b) {
                throw new IllegalStateException("Unknown Variant: ".concat(c1661mD.f19923a));
            }
            ngB = AbstractC2025tE.b(num.intValue());
        }
        return new C1557kD(c1713nD, xu, ngB, num);
    }
}
