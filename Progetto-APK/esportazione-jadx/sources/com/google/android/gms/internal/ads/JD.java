package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public abstract class JD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2181wE f14130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2077uE f14131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1042aE f14132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final YD f14133d;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.AesGcmKey");
        f14130a = new C2181wE(new GD(2), C1299fD.class);
        f14131b = new C2077uE(new GD(3), ngB);
        f14132c = new C1042aE(new GD(4), C1144cD.class);
        f14133d = new YD(new GD(5), ngB);
    }

    public static C1247eD a(EnumC2235xG enumC2235xG) throws GeneralSecurityException {
        int iOrdinal = enumC2235xG.ordinal();
        if (iOrdinal == 1) {
            return C1247eD.f18490b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return C1247eD.f18492d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException(p000a.r.f("Unable to parse OutputPrefixType: ", enumC2235xG.zza()));
            }
        }
        return C1247eD.f18491c;
    }

    public static EnumC2235xG b(C1247eD c1247eD) throws GeneralSecurityException {
        if (C1247eD.f18490b.equals(c1247eD)) {
            return EnumC2235xG.TINK;
        }
        if (C1247eD.f18491c.equals(c1247eD)) {
            return EnumC2235xG.CRUNCHY;
        }
        if (C1247eD.f18492d.equals(c1247eD)) {
            return EnumC2235xG.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(c1247eD)));
    }
}
