package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2024tD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2181wE f21050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2077uE f21051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1042aE f21052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final YD f21053d;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        f21050a = new C2181wE(new Dz(9), C1972sD.class);
        f21051b = new C2077uE(new Dz(10), ngB);
        f21052c = new C1042aE(new Dz(11), C1869qD.class);
        f21053d = new YD(new Dz(12), ngB);
    }

    public static C1920rD a(EnumC2235xG enumC2235xG) throws GeneralSecurityException {
        int iOrdinal = enumC2235xG.ordinal();
        if (iOrdinal == 1) {
            return C1920rD.f20692b;
        }
        if (iOrdinal == 3) {
            return C1920rD.f20693c;
        }
        throw new GeneralSecurityException(p000a.r.f("Unable to parse OutputPrefixType: ", enumC2235xG.zza()));
    }

    public static EnumC2235xG b(C1920rD c1920rD) throws GeneralSecurityException {
        if (C1920rD.f20692b.equals(c1920rD)) {
            return EnumC2235xG.TINK;
        }
        if (C1920rD.f20693c.equals(c1920rD)) {
            return EnumC2235xG.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(c1920rD.f20694a));
    }
}
