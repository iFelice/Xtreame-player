package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class J6 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f23566b = Logger.getLogger(J6.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ArrayList f23567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f23568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final J6 f23569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final J6 f23570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final J6 f23571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final J6 f23572h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final J6 f23573i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final L6 f23574a;

    static {
        int i8 = 0;
        if (U3.a()) {
            f23567c = b("GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt");
            f23568d = false;
        } else if ("The Android Project".equals(System.getProperty("java.vendor"))) {
            f23567c = b("GmsCore_OpenSSL", "AndroidOpenSSL");
            f23568d = true;
        } else {
            f23567c = new ArrayList();
            f23568d = true;
        }
        f23569e = new J6(new C2684c(18, i8));
        f23570f = new J6(new C2684c(22, i8));
        f23571g = new J6(new C2684c(19, i8));
        f23572h = new J6(new C2684c(21, i8));
        f23573i = new J6(new C2684c(20, i8));
    }

    public J6(C2684c c2684c) {
        this.f23574a = c2684c;
    }

    public static ArrayList b(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            } else {
                f23566b.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", p000a.r.g("Provider ", str, " not available"));
            }
        }
        return arrayList;
    }

    public final Object a(String str) throws GeneralSecurityException {
        Iterator it = f23567c.iterator();
        Exception exc = null;
        while (true) {
            boolean zHasNext = it.hasNext();
            L6 l8 = this.f23574a;
            if (!zHasNext) {
                if (f23568d) {
                    return ((C2684c) l8).b(str, null);
                }
                throw new GeneralSecurityException("No good Provider found.", exc);
            }
            try {
                return ((C2684c) l8).b(str, (Provider) it.next());
            } catch (Exception e8) {
                if (exc == null) {
                    exc = e8;
                }
            }
        }
    }
}
