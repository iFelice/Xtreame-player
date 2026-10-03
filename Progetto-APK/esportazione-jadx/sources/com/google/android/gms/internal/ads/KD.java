package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public abstract class KD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2181wE f14313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2077uE f14314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1042aE f14315c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final YD f14316d;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        f14313a = new C2181wE(new GD(6), C1505jD.class);
        f14314b = new C2077uE(new GD(7), ngB);
        f14315c = new C1042aE(new GD(8), C1351gD.class);
        f14316d = new YD(new GD(9), ngB);
    }

    public static C1455iD a(EnumC2235xG enumC2235xG) throws GeneralSecurityException {
        int iOrdinal = enumC2235xG.ordinal();
        if (iOrdinal == 1) {
            return C1455iD.f19277b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return C1455iD.f19279d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException(p000a.r.f("Unable to parse OutputPrefixType: ", enumC2235xG.zza()));
            }
        }
        return C1455iD.f19278c;
    }

    public static EnumC2235xG b(C1455iD c1455iD) throws GeneralSecurityException {
        if (C1455iD.f19277b.equals(c1455iD)) {
            return EnumC2235xG.TINK;
        }
        if (C1455iD.f19278c.equals(c1455iD)) {
            return EnumC2235xG.CRUNCHY;
        }
        if (C1455iD.f19279d.equals(c1455iD)) {
            return EnumC2235xG.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(c1455iD)));
    }
}
