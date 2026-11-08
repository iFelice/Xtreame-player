package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.StrictMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class U implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f11819a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11820b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public IBinder f11822d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final T f11823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ComponentName f11824f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ V f11825g;

    public U(V v5, T t7) {
        this.f11825g = v5;
        this.f11823e = t7;
    }

    public static J3.b a(U u7, String str, Executor executor) {
        J3.b bVar;
        try {
            Intent intentA = u7.f11823e.a(u7.f11825g.f11827e);
            u7.f11820b = 3;
            StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
            if (Build.VERSION.SDK_INT >= 31) {
                StrictMode.setVmPolicy(P3.f.a(new StrictMode.VmPolicy.Builder(vmPolicy)).build());
            }
            try {
                V v5 = u7.f11825g;
                boolean zC = v5.f11829g.c(v5.f11827e, str, intentA, u7, 4225, executor);
                u7.f11821c = zC;
                if (zC) {
                    u7.f11825g.f11828f.sendMessageDelayed(u7.f11825g.f11828f.obtainMessage(1, u7.f11823e), u7.f11825g.f11831i);
                    bVar = J3.b.f4131K;
                } else {
                    u7.f11820b = 2;
                    try {
                        V v7 = u7.f11825g;
                        v7.f11829g.b(v7.f11827e, u7);
                    } catch (IllegalArgumentException unused) {
                    }
                    bVar = new J3.b(16);
                }
                return bVar;
            } finally {
                StrictMode.setVmPolicy(vmPolicy);
            }
        } catch (L e8) {
            return e8.f11802G;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f11825g.f11826d) {
            try {
                this.f11825g.f11828f.removeMessages(1, this.f11823e);
                this.f11822d = iBinder;
                this.f11824f = componentName;
                Iterator it = this.f11819a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f11820b = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f11825g.f11826d) {
            try {
                this.f11825g.f11828f.removeMessages(1, this.f11823e);
                this.f11822d = null;
                this.f11824f = componentName;
                Iterator it = this.f11819a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f11820b = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
