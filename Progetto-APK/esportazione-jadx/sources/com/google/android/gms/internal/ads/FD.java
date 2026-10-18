package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public abstract class FD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2181wE f13331a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2077uE f13332b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1042aE f13333c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final YD f13334d;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        f13331a = new C2181wE(new Dz(24), WC.class);
        f13332b = new C2077uE(new Dz(25), ngB);
        f13333c = new C1042aE(new Dz(26), RC.class);
        f13334d = new YD(new Dz(27), ngB);
    }

    public static UC a(TF tf) throws GeneralSecurityException {
        int iOrdinal = tf.ordinal();
        if (iOrdinal == 1) {
            return UC.f16811b;
        }
        if (iOrdinal == 2) {
            return UC.f16814e;
        }
        if (iOrdinal == 3) {
            return UC.f16813d;
        }
        if (iOrdinal == 4) {
            return UC.f16815f;
        }
        if (iOrdinal == 5) {
            return UC.f16812c;
        }
        throw new GeneralSecurityException(p000a.r.f("Unable to parse HashType: ", tf.zza()));
    }

    public static VC b(EnumC2235xG enumC2235xG) throws GeneralSecurityException {
        int iOrdinal = enumC2235xG.ordinal();
        if (iOrdinal == 1) {
            return VC.f16971b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return VC.f16973d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException(p000a.r.f("Unable to parse OutputPrefixType: ", enumC2235xG.zza()));
            }
        }
        return VC.f16972c;
    }

    public static ZF c(WC wc) {
        TF tf;
        YF yfC = ZF.C();
        int i8 = wc.f17180d;
        yfC.d();
        ((ZF) yfC.f20255H).zzd = i8;
        UC uc = UC.f16811b;
        UC uc2 = wc.f17182f;
        if (uc.equals(uc2)) {
            tf = TF.SHA1;
        } else if (UC.f16812c.equals(uc2)) {
            tf = TF.SHA224;
        } else if (UC.f16813d.equals(uc2)) {
            tf = TF.SHA256;
        } else if (UC.f16814e.equals(uc2)) {
            tf = TF.SHA384;
        } else {
            if (!UC.f16815f.equals(uc2)) {
                throw new GeneralSecurityException("Unable to serialize HashType ".concat(String.valueOf(uc2)));
            }
            tf = TF.SHA512;
        }
        yfC.d();
        ((ZF) yfC.f20255H).zzc = tf.zza();
        return (ZF) yfC.b();
    }

    public static EnumC2235xG d(VC vc) throws GeneralSecurityException {
        if (VC.f16971b.equals(vc)) {
            return EnumC2235xG.TINK;
        }
        if (VC.f16972c.equals(vc)) {
            return EnumC2235xG.CRUNCHY;
        }
        if (VC.f16973d.equals(vc)) {
            return EnumC2235xG.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(vc)));
    }
}
