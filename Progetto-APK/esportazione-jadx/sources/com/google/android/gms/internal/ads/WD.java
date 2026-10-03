package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class WD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f17183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map f17184b;

    public /* synthetic */ WD(Map map, Map map2) {
        this.f17183a = map;
        this.f17184b = map2;
    }

    public final synchronized Map a() {
        try {
            if (this.f17184b == null) {
                this.f17184b = Collections.unmodifiableMap(new HashMap(this.f17183a));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f17184b;
    }

    public final void b(C2337zE c2337zE) throws GeneralSecurityException {
        if (c2337zE == null) {
            throw new NullPointerException("primitive constructor must be non-null");
        }
        BE be = new BE(c2337zE.f22144a, c2337zE.f22145b);
        Map map = this.f17183a;
        if (!map.containsKey(be)) {
            map.put(be, c2337zE);
            return;
        }
        C2337zE c2337zE2 = (C2337zE) map.get(be);
        if (!c2337zE2.equals(c2337zE) || !c2337zE.equals(c2337zE2)) {
            throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ".concat(be.toString()));
        }
    }

    public final Enum c(Object obj) throws GeneralSecurityException {
        Enum r7 = (Enum) this.f17184b.get(obj);
        if (r7 != null) {
            return r7;
        }
        throw new GeneralSecurityException("Unable to convert object enum: ".concat(String.valueOf(obj)));
    }

    public final void d(EE ee) throws GeneralSecurityException {
        Map map = this.f17184b;
        Class clsZzb = ee.zzb();
        if (!map.containsKey(clsZzb)) {
            this.f17184b.put(clsZzb, ee);
            return;
        }
        EE ee2 = (EE) this.f17184b.get(clsZzb);
        if (!ee2.equals(ee) || !ee.equals(ee2)) {
            throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type".concat(clsZzb.toString()));
        }
    }

    public final Object e(Enum r7) throws GeneralSecurityException {
        Object obj = this.f17183a.get(r7);
        if (obj != null) {
            return obj;
        }
        throw new GeneralSecurityException("Unable to convert proto enum: ".concat(String.valueOf(r7)));
    }

    public WD() {
        this.f17183a = new HashMap();
    }

    public /* synthetic */ WD(Object obj) {
        this.f17183a = new HashMap();
        this.f17184b = new HashMap();
    }

    public /* synthetic */ WD(CE ce) {
        this.f17183a = new HashMap(ce.f12597a);
        this.f17184b = new HashMap(ce.f12598b);
    }
}
