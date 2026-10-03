package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC1885qe implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20588G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f20589H;

    public /* synthetic */ ExecutorC1885qe(Object obj, int i8) {
        this.f20588G = i8;
        this.f20589H = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i8 = this.f20588G;
        Object obj = this.f20589H;
        switch (i8) {
            case 0:
                if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                    ((Handler) obj).post(runnable);
                    return;
                }
                try {
                    runnable.run();
                    return;
                } catch (Throwable th) {
                    p113o3.O o4 = p083k3.l.f25980A.f25983c;
                    Context context = p083k3.l.f25980A.f25987g.f19809e;
                    if (context != null) {
                        try {
                            if (((Boolean) B8.f12288b.l()).booleanValue()) {
                                P3.c.a(context, th);
                            }
                        } catch (IllegalStateException unused) {
                        }
                    }
                    throw th;
                }
            case 1:
                ((Handler) obj).post(runnable);
                return;
            case 2:
                ((Handler) obj).post(runnable);
                return;
            default:
                ((C2054ts) ((InterfaceC2101un) obj)).b(runnable);
                return;
        }
    }

    public ExecutorC1885qe() {
        this.f20588G = 0;
        this.f20589H = new p113o3.J(Looper.getMainLooper(), 1);
    }
}
