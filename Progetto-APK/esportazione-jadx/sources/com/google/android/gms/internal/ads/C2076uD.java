package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2076uD extends NC {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C2232xD f21211l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Integer f21212m;

    public C2076uD(C2232xD c2232xD, NG ng, Integer num) {
        this.f21211l = c2232xD;
        this.f21212m = num;
    }

    public static C2076uD i2(C2232xD c2232xD, Integer num) throws GeneralSecurityException {
        NG ngB;
        C2180wD c2180wD = c2232xD.f21856a;
        if (c2180wD == C2180wD.f21654c) {
            if (num != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            ngB = AbstractC2025tE.f21054a;
        } else {
            if (c2180wD != C2180wD.f21653b) {
                throw new GeneralSecurityException("Unknown Variant: ".concat(String.valueOf(c2232xD.f21856a)));
            }
            if (num == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            ngB = AbstractC2025tE.b(num.intValue());
        }
        return new C2076uD(c2232xD, ngB, num);
    }
}
