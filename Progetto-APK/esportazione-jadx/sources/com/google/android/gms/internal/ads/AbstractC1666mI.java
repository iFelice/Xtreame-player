package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1666mI {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f19929G;

    public abstract byte J(long j8);

    public final void K(Object obj, MJ mj) {
        Cw.b0(mj, "provider");
        ((LinkedHashMap) this.f19929G).put(obj, mj);
    }

    public abstract double M(Object obj, long j8);

    public void O(String str, MJ mj) {
        K(str, mj);
    }

    public abstract float Q0(Object obj, long j8);

    public abstract void R0(long j8, byte[] bArr, long j9, long j10);

    public abstract void S0(Object obj, long j8, boolean z7);

    public abstract void T0(Object obj, long j8, byte b8);

    public abstract void U0(Object obj, long j8, double d6);

    public abstract void V0(Object obj, long j8, float f8);

    public abstract boolean W0(Object obj, long j8);

    public final synchronized void X0(C0825Lk c0825Lk) {
        Y0(c0825Lk.f14545a, c0825Lk.f14546b);
    }

    public final synchronized void Y0(Object obj, Executor executor) {
        ((Map) this.f19929G).put(obj, executor);
    }

    public final synchronized void Z0(InterfaceC1942rk interfaceC1942rk) {
        for (Map.Entry entry : ((Map) this.f19929G).entrySet()) {
            ((Executor) entry.getValue()).execute(new RunnableC0755Ha(24, interfaceC1942rk, entry.getKey()));
        }
    }

    public AbstractC1666mI(int i8) {
        this.f19929G = Cw.G0(i8);
    }

    public AbstractC1666mI(View view) {
        this.f19929G = new WeakReference(view);
    }

    public AbstractC1666mI(Set set) {
        this.f19929G = new HashMap();
        synchronized (this) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                X0((C0825Lk) it.next());
            }
        }
    }
}
