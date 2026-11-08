package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.HandlerThread;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0637m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f11875a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static V f11876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HandlerThread f11877c;

    public static V a(Context context) {
        synchronized (f11875a) {
            try {
                if (f11876b == null) {
                    f11876b = new V(context.getApplicationContext(), context.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f11876b;
    }

    public static HandlerThread b() {
        synchronized (f11875a) {
            try {
                HandlerThread handlerThread = f11877c;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                f11877c = handlerThread2;
                handlerThread2.start();
                return f11877c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract J3.b c(T t7, O o4, String str, Executor executor);

    public final void d(String str, String str2, O o4, boolean z7) {
        T t7 = new T(str, str2, z7);
        V v5 = (V) this;
        synchronized (v5.f11826d) {
            try {
                U u7 = (U) v5.f11826d.get(t7);
                if (u7 == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: ".concat(t7.toString()));
                }
                if (!u7.f11819a.containsKey(o4)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=".concat(t7.toString()));
                }
                u7.f11819a.remove(o4);
                if (u7.f11819a.isEmpty()) {
                    v5.f11828f.sendMessageDelayed(v5.f11828f.obtainMessage(0, t7), v5.f11830h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
