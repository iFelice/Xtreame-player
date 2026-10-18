package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public abstract class SD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2181wE f16413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2077uE f16414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1042aE f16415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final YD f16416d;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        f16413a = new C2181wE(new GD(14), ED.class);
        f16414b = new C2077uE(new GD(15), ngB);
        f16415c = new C1042aE(new GD(16), AD.class);
        f16416d = new YD(new GD(17), ngB);
    }

    public static DD a(EnumC2235xG enumC2235xG) throws GeneralSecurityException {
        int iOrdinal = enumC2235xG.ordinal();
        if (iOrdinal == 1) {
            return DD.f12784b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return DD.f12786d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException(p000a.r.f("Unable to parse OutputPrefixType: ", enumC2235xG.zza()));
            }
        }
        return DD.f12785c;
    }

    public static EnumC2235xG b(DD dd) throws GeneralSecurityException {
        if (DD.f12784b.equals(dd)) {
            return EnumC2235xG.TINK;
        }
        if (DD.f12785c.equals(dd)) {
            return EnumC2235xG.CRUNCHY;
        }
        if (DD.f12786d.equals(dd)) {
            return EnumC2235xG.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(dd.f12787a));
    }
}
