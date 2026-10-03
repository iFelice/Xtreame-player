package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1405hF {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2181wE f19071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2077uE f19072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1042aE f19073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final YD f19074d;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.AesCmacKey");
        f19071a = new C2181wE(new C1301fF(1), RE.class);
        f19072b = new C2077uE(new C1301fF(2), ngB);
        f19073c = new C1042aE(new C1301fF(3), OE.class);
        f19074d = new YD(new C1301fF(4), ngB);
    }

    public static QE a(EnumC2235xG enumC2235xG) throws GeneralSecurityException {
        int iOrdinal = enumC2235xG.ordinal();
        if (iOrdinal == 1) {
            return QE.f15999b;
        }
        if (iOrdinal == 2) {
            return QE.f16001d;
        }
        if (iOrdinal == 3) {
            return QE.f16002e;
        }
        if (iOrdinal == 4) {
            return QE.f16000c;
        }
        throw new GeneralSecurityException(p000a.r.f("Unable to parse OutputPrefixType: ", enumC2235xG.zza()));
    }

    public static EnumC2235xG b(QE qe) throws GeneralSecurityException {
        if (QE.f15999b.equals(qe)) {
            return EnumC2235xG.TINK;
        }
        if (QE.f16000c.equals(qe)) {
            return EnumC2235xG.CRUNCHY;
        }
        if (QE.f16002e.equals(qe)) {
            return EnumC2235xG.RAW;
        }
        if (QE.f16001d.equals(qe)) {
            return EnumC2235xG.LEGACY;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(qe)));
    }
}
