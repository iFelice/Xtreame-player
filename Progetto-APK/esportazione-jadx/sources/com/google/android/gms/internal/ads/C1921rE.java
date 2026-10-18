package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1921rE {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C1921rE f20695b = new C1921rE();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f20696a = new AtomicReference(new CE(new WD((Object) null)));

    public final Class a() {
        HashMap map = ((CE) this.f20696a.get()).f12598b;
        if (map.containsKey(InterfaceC2127vC.class)) {
            return ((EE) map.get(InterfaceC2127vC.class)).zza();
        }
        throw new GeneralSecurityException(p000a.r.g("No input primitive class for ", InterfaceC2127vC.class.toString(), " available"));
    }

    public final Object b(Cw cw, Class cls) {
        CE ce = (CE) this.f20696a.get();
        ce.getClass();
        BE be = new BE(cw.getClass(), cls);
        HashMap map = ce.f12597a;
        if (map.containsKey(be)) {
            return ((C2337zE) map.get(be)).f22146c.a(cw);
        }
        throw new GeneralSecurityException(p000a.r.g("No PrimitiveConstructor for ", be.toString(), " available"));
    }

    public final synchronized void c(C2337zE c2337zE) {
        WD wd = new WD((CE) this.f20696a.get());
        wd.b(c2337zE);
        this.f20696a.set(new CE(wd));
    }

    public final synchronized void d(EE ee) {
        WD wd = new WD((CE) this.f20696a.get());
        wd.d(ee);
        this.f20696a.set(new CE(wd));
    }
}
