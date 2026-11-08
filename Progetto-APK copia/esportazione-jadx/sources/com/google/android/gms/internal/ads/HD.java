package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public abstract class HD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2181wE f13729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2077uE f13730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1042aE f13731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final YD f13732d;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.AesEaxKey");
        f13729a = new C2181wE(new Dz(28), C1041aD.class);
        f13730b = new C2077uE(new Dz(29), ngB);
        f13731c = new C1042aE(new GD(0), XC.class);
        f13732d = new YD(new GD(1), ngB);
    }

    public static ZC a(EnumC2235xG enumC2235xG) throws GeneralSecurityException {
        int iOrdinal = enumC2235xG.ordinal();
        if (iOrdinal == 1) {
            return ZC.f17733b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return ZC.f17735d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException(p000a.r.f("Unable to parse OutputPrefixType: ", enumC2235xG.zza()));
            }
        }
        return ZC.f17734c;
    }

    public static EnumC2235xG b(ZC zc) throws GeneralSecurityException {
        if (ZC.f17733b.equals(zc)) {
            return EnumC2235xG.TINK;
        }
        if (ZC.f17734c.equals(zc)) {
            return EnumC2235xG.CRUNCHY;
        }
        if (ZC.f17735d.equals(zc)) {
            return EnumC2235xG.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zc)));
    }
}
