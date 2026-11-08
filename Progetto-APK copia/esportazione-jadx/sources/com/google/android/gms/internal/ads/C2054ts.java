package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ts, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2054ts implements InterfaceC2101un {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ArrayList f21153b = new ArrayList(50);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f21154a;

    public C2054ts(Handler handler) {
        this.f21154a = handler;
    }

    public static /* bridge */ /* synthetic */ void d(C1381gs c1381gs) {
        ArrayList arrayList = f21153b;
        synchronized (arrayList) {
            if (arrayList.size() < 50) {
                arrayList.add(c1381gs);
            }
        }
    }

    public static C1381gs e() {
        C1381gs c1381gs;
        ArrayList arrayList = f21153b;
        synchronized (arrayList) {
            try {
                c1381gs = arrayList.isEmpty() ? new C1381gs() : (C1381gs) arrayList.remove(arrayList.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1381gs;
    }

    public final C1381gs a(int i8, Object obj) {
        C1381gs c1381gsE = e();
        c1381gsE.f19016a = this.f21154a.obtainMessage(i8, obj);
        return c1381gsE;
    }

    public final boolean b(Runnable runnable) {
        return this.f21154a.post(runnable);
    }

    public final boolean c(int i8) {
        return this.f21154a.sendEmptyMessage(i8);
    }
}
