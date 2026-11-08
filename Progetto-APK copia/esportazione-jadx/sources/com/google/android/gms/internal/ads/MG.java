package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class MG implements FC {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f14691e = {0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1507jF f14692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f14694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f14695d;

    public MG(OE oe) {
        this.f14692a = new KG(((NG) oe.f15147m.f17529H).b());
        RE re = oe.f15146l;
        this.f14693b = re.f16230b;
        this.f14694c = oe.f15148n.b();
        if (re.f16231c.equals(QE.f16001d)) {
            this.f14695d = Arrays.copyOf(f14691e, 1);
        } else {
            this.f14695d = new byte[0];
        }
    }

    public MG(WE we) {
        String strValueOf = String.valueOf(we.f17185l.f17851d);
        this.f14692a = new Kq("HMAC".concat(strValueOf), new SecretKeySpec(((NG) we.f17186m.f17529H).b(), "HMAC"));
        C1043aF c1043aF = we.f17185l;
        this.f14693b = c1043aF.f17849b;
        this.f14694c = we.f17187n.b();
        if (c1043aF.f17850c.equals(ZE.f17739d)) {
            this.f14695d = Arrays.copyOf(f14691e, 1);
        } else {
            this.f14695d = new byte[0];
        }
    }

    public MG(Kq kq, int i8) throws InvalidAlgorithmParameterException {
        this.f14692a = kq;
        this.f14693b = i8;
        this.f14694c = new byte[0];
        this.f14695d = new byte[0];
        kq.a(i8, new byte[0]);
    }
}
