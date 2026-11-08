package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1714nE {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C1714nE f20080b = new C1714nE();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f20081a = new HashMap();

    public final synchronized void a(SC sc, Class cls) {
        try {
            InterfaceC1662mE interfaceC1662mE = (InterfaceC1662mE) this.f20081a.get(cls);
            if (interfaceC1662mE != null && !interfaceC1662mE.equals(sc)) {
                throw new GeneralSecurityException("Different key creator for parameters class already inserted");
            }
            this.f20081a.put(cls, sc);
        } catch (Throwable th) {
            throw th;
        }
    }
}
