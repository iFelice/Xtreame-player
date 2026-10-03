package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1973sE {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C1973sE f20878b = (C1973sE) Y.r.a(new GD(19));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f20879a = new AtomicReference(new LE(new C2246xc(27)));

    public final Cw a(FE fe) throws GeneralSecurityException {
        LE le = (LE) this.f20879a.get();
        le.getClass();
        JE je = new JE(FE.class, fe.f13336b);
        HashMap map = le.f14491b;
        if (map.containsKey(je)) {
            return ((YD) map.get(je)).f17582c.f(fe);
        }
        throw new GeneralSecurityException(p000a.r.g("No Key Parser for requested key type ", je.toString(), " available"));
    }

    public final GC b(GE ge) throws GeneralSecurityException {
        LE le = (LE) this.f20879a.get();
        le.getClass();
        JE je = new JE(GE.class, ge.f13493a);
        HashMap map = le.f14493d;
        if (map.containsKey(je)) {
            return ((C2077uE) map.get(je)).f21215c.e(ge);
        }
        throw new GeneralSecurityException(p000a.r.g("No Parameters Parser for requested key type ", je.toString(), " available"));
    }

    public final IE c(Cw cw) throws GeneralSecurityException {
        LE le = (LE) this.f20879a.get();
        le.getClass();
        KE ke = new KE(cw.getClass(), FE.class);
        HashMap map = le.f14490a;
        if (map.containsKey(ke)) {
            return ((C1042aE) map.get(ke)).f17847c.a(cw);
        }
        throw new GeneralSecurityException(p000a.r.g("No Key serializer for ", ke.toString(), " available"));
    }

    public final IE d(OC oc) throws GeneralSecurityException {
        LE le = (LE) this.f20879a.get();
        le.getClass();
        KE ke = new KE(oc.getClass(), GE.class);
        HashMap map = le.f14492c;
        if (map.containsKey(ke)) {
            return ((C2181wE) map.get(ke)).f21658c.d(oc);
        }
        throw new GeneralSecurityException(p000a.r.g("No Key Format serializer for ", ke.toString(), " available"));
    }

    public final synchronized void e(YD yd) {
        C2246xc c2246xc = new C2246xc((LE) this.f20879a.get());
        c2246xc.k(yd);
        this.f20879a.set(new LE(c2246xc));
    }

    public final synchronized void f(C1042aE c1042aE) {
        C2246xc c2246xc = new C2246xc((LE) this.f20879a.get());
        c2246xc.q(c1042aE);
        this.f20879a.set(new LE(c2246xc));
    }

    public final synchronized void g(C2077uE c2077uE) {
        C2246xc c2246xc = new C2246xc((LE) this.f20879a.get());
        c2246xc.v(c2077uE);
        this.f20879a.set(new LE(c2246xc));
    }

    public final synchronized void h(C2181wE c2181wE) {
        C2246xc c2246xc = new C2246xc((LE) this.f20879a.get());
        c2246xc.C(c2181wE);
        this.f20879a.set(new LE(c2246xc));
    }
}
