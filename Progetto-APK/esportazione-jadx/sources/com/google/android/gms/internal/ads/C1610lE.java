package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1610lE {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C1610lE f19728b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f19729a = new HashMap();

    static {
        C1506jE c1506jE = new C1506jE(0);
        C1610lE c1610lE = new C1610lE();
        try {
            c1610lE.b(c1506jE, C1300fE.class);
            f19728b = c1610lE;
        } catch (GeneralSecurityException e8) {
            throw new IllegalStateException("unexpected error.", e8);
        }
    }

    public final Cw a(GC gc, Integer num) {
        Cw cwA;
        synchronized (this) {
            InterfaceC1558kE interfaceC1558kE = (InterfaceC1558kE) this.f19729a.get(gc.getClass());
            if (interfaceC1558kE == null) {
                throw new GeneralSecurityException("Cannot create a new key for parameters " + gc.toString() + ": no key creator for this class was registered.");
            }
            cwA = ((C1506jE) interfaceC1558kE).a(gc, num);
        }
        return cwA;
    }

    public final synchronized void b(InterfaceC1558kE interfaceC1558kE, Class cls) {
        try {
            InterfaceC1558kE interfaceC1558kE2 = (InterfaceC1558kE) this.f19729a.get(cls);
            if (interfaceC1558kE2 != null && !interfaceC1558kE2.equals(interfaceC1558kE)) {
                throw new GeneralSecurityException("Different key creator for parameters class " + cls.toString() + " already inserted");
            }
            this.f19729a.put(cls, interfaceC1558kE);
        } catch (Throwable th) {
            throw th;
        }
    }
}
