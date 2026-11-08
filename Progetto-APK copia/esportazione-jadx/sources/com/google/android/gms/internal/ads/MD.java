package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public abstract class MD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2181wE f14687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2077uE f14688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1042aE f14689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final YD f14690d;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        f14687a = new C2181wE(new GD(10), C1713nD.class);
        f14688b = new C2077uE(new GD(11), ngB);
        f14689c = new C1042aE(new GD(12), C1557kD.class);
        f14690d = new YD(new GD(13), ngB);
    }

    public static C1661mD a(EnumC2235xG enumC2235xG) throws GeneralSecurityException {
        int iOrdinal = enumC2235xG.ordinal();
        if (iOrdinal == 1) {
            return C1661mD.f19920b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return C1661mD.f19922d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException(p000a.r.f("Unable to parse OutputPrefixType: ", enumC2235xG.zza()));
            }
        }
        return C1661mD.f19921c;
    }

    public static EnumC2235xG b(C1661mD c1661mD) throws GeneralSecurityException {
        if (C1661mD.f19920b.equals(c1661mD)) {
            return EnumC2235xG.TINK;
        }
        if (C1661mD.f19921c.equals(c1661mD)) {
            return EnumC2235xG.CRUNCHY;
        }
        if (C1661mD.f19922d.equals(c1661mD)) {
            return EnumC2235xG.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(c1661mD.f19923a));
    }
}
