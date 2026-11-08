package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import p090l3.C3093n;

/* JADX INFO: loaded from: classes.dex */
public final class Fy {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final HashMap f13447g = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f13448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C3093n f13449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1180cy f13450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C2272y1 f13451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C2246xc f13452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f13453f = new Object();

    public Fy(Context context, C3093n c3093n, C1180cy c1180cy, C2272y1 c2272y1) {
        this.f13448a = context;
        this.f13449b = c3093n;
        this.f13450c = c1180cy;
        this.f13451d = c2272y1;
    }

    public final C2246xc a() {
        C2246xc c2246xc;
        synchronized (this.f13453f) {
            c2246xc = this.f13452e;
        }
        return c2246xc;
    }

    public final Yu b() {
        synchronized (this.f13453f) {
            try {
                C2246xc c2246xc = this.f13452e;
                if (c2246xc == null) {
                    return null;
                }
                return (Yu) c2246xc.f21883I;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c(Yu yu) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                C2246xc c2246xc = new C2246xc(d(yu).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f13448a, "msa-r", yu.g(), null, new Bundle(), 2), yu, this.f13449b, this.f13450c, 2);
                if (!c2246xc.N()) {
                    throw new Ey(4000, "init failed");
                }
                int iJ = c2246xc.J();
                if (iJ != 0) {
                    throw new Ey(4001, "ci: " + iJ);
                }
                synchronized (this.f13453f) {
                    C2246xc c2246xc2 = this.f13452e;
                    if (c2246xc2 != null) {
                        try {
                            c2246xc2.L();
                        } catch (Ey e8) {
                            this.f13450c.b(e8.f13255G, -1L, e8);
                        }
                        this.f13452e = c2246xc;
                    } else {
                        this.f13452e = c2246xc;
                    }
                    throw th;
                }
                this.f13450c.c(3000, System.currentTimeMillis() - jCurrentTimeMillis);
                return true;
            } catch (Exception e9) {
                throw new Ey(2004, e9);
            }
        } catch (Ey e10) {
            this.f13450c.b(e10.f13255G, System.currentTimeMillis() - jCurrentTimeMillis, e10);
            return false;
        } catch (Exception e11) {
            this.f13450c.b(4010, System.currentTimeMillis() - jCurrentTimeMillis, e11);
            return false;
        }
    }

    public final synchronized Class d(Yu yu) {
        try {
            String strI = ((C2224x5) yu.f17669H).I();
            HashMap map = f13447g;
            Class cls = (Class) map.get(strI);
            if (cls != null) {
                return cls;
            }
            try {
                C2272y1 c2272y1 = this.f13451d;
                File file = (File) yu.f17670I;
                c2272y1.getClass();
                if (!C2272y1.g(file)) {
                    throw new Ey(2026, "VM did not pass signature verification");
                }
                try {
                    File file2 = (File) yu.f17671J;
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    Class<?> clsLoadClass = new DexClassLoader(((File) yu.f17670I).getAbsolutePath(), file2.getAbsolutePath(), null, this.f13448a.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                    map.put(strI, clsLoadClass);
                    return clsLoadClass;
                } catch (ClassNotFoundException e8) {
                    e = e8;
                    throw new Ey(2008, e);
                } catch (IllegalArgumentException e9) {
                    e = e9;
                    throw new Ey(2008, e);
                } catch (SecurityException e10) {
                    e = e10;
                    throw new Ey(2008, e);
                }
            } catch (GeneralSecurityException e11) {
                throw new Ey(2026, e11);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
