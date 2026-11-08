package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import p039f.AbstractC2987b;
import p090l3.C3099q;
import p090l3.InterfaceC3074d0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1317fg implements InterfaceC1060ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static C0671Bg f18787a;

    public static C0671Bg b(Context context, InterfaceC1157cb interfaceC1157cb, int i8) {
        SharedPreferences sharedPreferences;
        synchronized (AbstractC1317fg.class) {
            try {
                C0671Bg c0671Bg = f18787a;
                if (c0671Bg != null) {
                    return c0671Bg;
                }
                p083k3.l lVar = p083k3.l.f25980A;
                lVar.f25990j.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                Q7.a(context);
                if (((Boolean) AbstractC1604l8.f19716e.l()).booleanValue() && (sharedPreferences = context.getSharedPreferences("admob", 0)) != null) {
                    sharedPreferences.edit().putInt("init_without_write", AbstractC2987b.A0(context, "init_without_write") + 1).commit();
                }
                C1281ew c1281ewA = C1281ew.a(context);
                boolean zD = p113o3.O.d(c1281ewA.f18623a);
                p120p3.a aVar = new p120p3.a(243220000, i8, true, zD);
                if (((Boolean) AbstractC1967s8.f20871c.l()).booleanValue()) {
                    InterfaceC3074d0 interfaceC3074d0 = c1281ewA.f18624b;
                    p090l3.L0 liteSdkVersion = null;
                    if (interfaceC3074d0 != null) {
                        try {
                            liteSdkVersion = interfaceC3074d0.getLiteSdkVersion();
                        } catch (RemoteException unused) {
                        }
                    }
                    if (liteSdkVersion != null) {
                        aVar = new p120p3.a(243220000, liteSdkVersion.f26493H, true, zD);
                    }
                }
                c1281ewA.b(interfaceC1157cb);
                C1369gg c1369gg = new C1369gg();
                c1369gg.f18957c = aVar;
                c1369gg.f18959e = new WeakReference(context);
                c1369gg.f18958d = context.getApplicationContext() != null ? context.getApplicationContext() : context;
                c1369gg.f18956b = jCurrentTimeMillis;
                C0671Bg c0671Bg2 = new C0671Bg(new C1421hg(c1369gg), new C2272y1());
                lVar.f25987g.g(context, aVar);
                lVar.f25989i.r(context);
                lVar.f25983c.A(context);
                lVar.f25983c.z(context);
                a7.b.n(context);
                lVar.f25986f.p(context);
                lVar.f26004x.c(context);
                ((p113o3.C) c0671Bg2.f12416N.zzb()).a();
                C0848Nd.b(context);
                J7 j8 = Q7.f15651J5;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    if (!((Boolean) c3099q.f26627c.a(Q7.f15923r0)).booleanValue()) {
                        C2246xc c2246xc = new C2246xc(context, aVar, new C2173w6(new J2.t(context, 6)), new Rp(new Op(context), (InterfaceExecutorServiceC1504jC) c0671Bg2.f12438f.zzb()), 16, (Object) null);
                        try {
                            ((Rp) c2246xc.f21884J).a(new P0.j(c2246xc, lVar.f25987g.d().r()));
                        } catch (Exception e8) {
                            p120p3.h.d("Error in offline signals database startup: ".concat(String.valueOf(e8.getMessage())));
                        }
                    }
                }
                f18787a = c0671Bg2;
                return c0671Bg2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract Executor a();

    public final C2146vg c(C0973Wc c0973Wc, int i8) {
        return new C2146vg(((C0671Bg) this).f12432c, new K.k(c0973Wc, i8, 9));
    }

    public abstract Uw d();
}
