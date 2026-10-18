package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1869qD extends NC {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C1972sD f20559l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Integer f20560m;

    public C1869qD(C1972sD c1972sD, NG ng, Integer num) {
        this.f20559l = c1972sD;
        this.f20560m = num;
    }

    public static C1869qD i2(C1972sD c1972sD, Integer num) throws GeneralSecurityException {
        NG ngA;
        C1920rD c1920rD = c1972sD.f20877b;
        if (c1920rD == C1920rD.f20692b) {
            if (num == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            ngA = NG.a(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
        } else {
            if (c1920rD != C1920rD.f20693c) {
                throw new GeneralSecurityException("Unknown Variant: ".concat(c1972sD.f20877b.f20694a));
            }
            if (num != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            ngA = NG.a(new byte[0]);
        }
        return new C1869qD(c1972sD, ngA, num);
    }
}
