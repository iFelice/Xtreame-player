package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1439hy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f19198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Looper f19199b;

    public C1439hy(Context context, Looper looper) {
        this.f19198a = context;
        this.f19199b = looper;
    }

    public final void a(String str) {
        C1905qy c1905qyA = C2060ty.A();
        String packageName = this.f19198a.getPackageName();
        c1905qyA.d();
        C2060ty.B((C2060ty) c1905qyA.f20255H, packageName);
        c1905qyA.d();
        C2060ty.D((C2060ty) c1905qyA.f20255H);
        C1801oy c1801oyA = C1853py.A();
        c1801oyA.d();
        C1853py.B((C1853py) c1801oyA.f20255H, str);
        c1801oyA.d();
        C1853py.C((C1853py) c1801oyA.f20255H);
        c1905qyA.d();
        C2060ty.C((C2060ty) c1905qyA.f20255H, (C1853py) c1801oyA.b());
        C1489iy c1489iy = new C1489iy(this.f19198a, this.f19199b, (C2060ty) c1905qyA.b());
        synchronized (c1489iy.f19396c) {
            try {
                if (!c1489iy.f19397d) {
                    c1489iy.f19397d = true;
                    c1489iy.f19394a.checkAvailabilityAndConnect();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
