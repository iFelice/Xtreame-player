package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class HG {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HG f13734b = new HG(new C1301fF(9));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HG f13735c = new HG(new C1301fF(13));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FG f13736a;

    static {
        new HG(new C1301fF(15));
        new HG(new C1301fF(14));
        new HG(new C1301fF(10));
        new HG(new C1301fF(12));
        new HG(new C1301fF(11));
    }

    public HG(C1301fF c1301fF) {
        this.f13736a = !UD.a() ? "The Android Project".equals(System.getProperty("java.vendor")) ? new FG(c1301fF, 0) : new FG(c1301fF, 1) : new FG(c1301fF, 2);
    }

    public final Object a(String str) throws GeneralSecurityException {
        FG fg = this.f13736a;
        int i8 = fg.f13341a;
        int i9 = 0;
        IG ig = fg.f13342b;
        Exception exc = null;
        switch (i8) {
            case 0:
                String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
                ArrayList arrayList = new ArrayList();
                while (i9 < 2) {
                    Provider provider = Security.getProvider(strArr[i9]);
                    if (provider != null) {
                        arrayList.add(provider);
                    }
                    i9++;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    try {
                        return ((C1301fF) ig).g(str, (Provider) it.next());
                    } catch (Exception unused) {
                    }
                }
                return ((C1301fF) ig).g(str, null);
            case 1:
                return ((C1301fF) ig).g(str, null);
            default:
                String[] strArr2 = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};
                ArrayList arrayList2 = new ArrayList();
                while (i9 < 3) {
                    Provider provider2 = Security.getProvider(strArr2[i9]);
                    if (provider2 != null) {
                        arrayList2.add(provider2);
                    }
                    i9++;
                }
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    try {
                        return ((C1301fF) ig).g(str, (Provider) it2.next());
                    } catch (Exception e8) {
                        if (exc == null) {
                            exc = e8;
                        }
                    }
                }
                throw new GeneralSecurityException("No good Provider found.", exc);
        }
    }
}
