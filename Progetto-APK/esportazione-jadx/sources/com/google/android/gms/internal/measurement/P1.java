package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Binder;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class P1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static P1 f22978d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f22979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final O1 f22980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f22981c;

    public P1() {
        this.f22981c = false;
        this.f22979a = null;
        this.f22980b = null;
    }

    public static P1 a(Context context) {
        P1 p7;
        synchronized (P1.class) {
            try {
                if (f22978d == null) {
                    f22978d = J6.r.c(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new P1(context) : new P1();
                }
                P1 p8 = f22978d;
                if (p8 != null && p8.f22980b != null && !p8.f22981c) {
                    try {
                        context.getContentResolver().registerContentObserver(F1.f22912a, true, f22978d.f22980b);
                        P1 p9 = f22978d;
                        p9.getClass();
                        p9.f22981c = true;
                    } catch (SecurityException e8) {
                        Log.e("GservicesLoader", "Unable to register Gservices content observer", e8);
                    }
                }
                p7 = f22978d;
                p7.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
        return p7;
    }

    public static synchronized void c() {
        Context context;
        try {
            P1 p7 = f22978d;
            if (p7 != null && (context = p7.f22979a) != null && p7.f22980b != null && p7.f22981c) {
                context.getContentResolver().unregisterContentObserver(f22978d.f22980b);
            }
            f22978d = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final String b(String str) {
        Object objP;
        Context context = this.f22979a;
        if (context != null && (!K1.a() || K1.b(context))) {
            try {
                try {
                    p096m2.l lVar = new p096m2.l(19, this, str);
                    try {
                        objP = lVar.p();
                    } catch (SecurityException unused) {
                        long jClearCallingIdentity = Binder.clearCallingIdentity();
                        try {
                            objP = lVar.p();
                        } finally {
                            Binder.restoreCallingIdentity(jClearCallingIdentity);
                        }
                    }
                    return (String) objP;
                } catch (IllegalStateException e8) {
                    e = e8;
                    Log.e("GservicesLoader", "Unable to read GServices for: ".concat(str), e);
                    return null;
                } catch (NullPointerException e9) {
                    e = e9;
                    Log.e("GservicesLoader", "Unable to read GServices for: ".concat(str), e);
                    return null;
                }
            } catch (SecurityException e10) {
                e = e10;
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(str), e);
                return null;
            }
        }
        return null;
    }

    public P1(Context context) {
        this.f22981c = false;
        this.f22979a = context;
        this.f22980b = new O1(null);
    }
}
