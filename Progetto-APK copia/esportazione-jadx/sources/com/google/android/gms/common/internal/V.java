package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.Looper;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class V extends AbstractC0637m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f11826d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f11827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile X3.d f11828f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final O3.a f11829g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f11830h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f11831i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile Executor f11832j;

    public V(Context context, Looper looper) {
        H2.g gVar = new H2.g(this);
        this.f11827e = context.getApplicationContext();
        this.f11828f = new X3.d(looper, gVar, 2);
        this.f11829g = O3.a.a();
        this.f11830h = 5000L;
        this.f11831i = 300000L;
        this.f11832j = null;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0637m
    public final J3.b c(T t7, O o4, String str, Executor executor) {
        J3.b bVarA;
        synchronized (this.f11826d) {
            try {
                U u7 = (U) this.f11826d.get(t7);
                if (executor == null) {
                    executor = this.f11832j;
                }
                if (u7 == null) {
                    u7 = new U(this, t7);
                    u7.f11819a.put(o4, o4);
                    bVarA = U.a(u7, str, executor);
                    this.f11826d.put(t7, u7);
                } else {
                    this.f11828f.removeMessages(0, t7);
                    if (u7.f11819a.containsKey(o4)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=".concat(t7.toString()));
                    }
                    u7.f11819a.put(o4, o4);
                    int i8 = u7.f11820b;
                    if (i8 == 1) {
                        o4.onServiceConnected(u7.f11824f, u7.f11822d);
                    } else if (i8 == 2) {
                        bVarA = U.a(u7, str, executor);
                    }
                    bVarA = null;
                }
                if (u7.f11821c) {
                    return J3.b.f4131K;
                }
                if (bVarA == null) {
                    bVarA = new J3.b(-1);
                }
                return bVarA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
