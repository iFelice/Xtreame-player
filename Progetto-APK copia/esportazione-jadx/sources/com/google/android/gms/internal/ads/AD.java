package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class AD extends NC {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ED f11993l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Xu f11994m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final NG f11995n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Integer f11996o;

    public AD(ED ed, Xu xu, NG ng, Integer num) {
        this.f11993l = ed;
        this.f11994m = xu;
        this.f11995n = ng;
        this.f11996o = num;
    }

    public static AD i2(DD dd, Xu xu, Integer num) throws GeneralSecurityException {
        NG ngB;
        DD dd2 = DD.f12786d;
        if (dd != dd2 && num == null) {
            throw new GeneralSecurityException(p000a.r.g("For given Variant ", dd.f12787a, " the value of idRequirement must be non-null"));
        }
        if (dd == dd2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (xu.e() != 32) {
            throw new GeneralSecurityException(p000a.r.f("XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not ", xu.e()));
        }
        ED ed = new ED(dd);
        if (dd == dd2) {
            ngB = AbstractC2025tE.f21054a;
        } else if (dd == DD.f12785c) {
            ngB = AbstractC2025tE.a(num.intValue());
        } else {
            if (dd != DD.f12784b) {
                throw new IllegalStateException("Unknown Variant: ".concat(dd.f12787a));
            }
            ngB = AbstractC2025tE.b(num.intValue());
        }
        return new AD(ed, xu, ngB, num);
    }
}
