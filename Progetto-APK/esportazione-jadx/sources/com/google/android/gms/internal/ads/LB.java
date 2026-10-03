package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public abstract class LB extends ZB implements Runnable {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final /* synthetic */ int f14480P = 0;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public D4.b f14481N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Object f14482O;

    public LB(D4.b bVar, Object obj) {
        bVar.getClass();
        this.f14481N = bVar;
        this.f14482O = obj;
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final String d() {
        D4.b bVar = this.f14481N;
        Object obj = this.f14482O;
        String strD = super.d();
        String strG = bVar != null ? p000a.r.g("inputFuture=[", bVar.toString(), "], ") : HttpUrl.FRAGMENT_ENCODE_SET;
        if (obj != null) {
            return A0.O.B(strG, "function=[", obj.toString(), "]");
        }
        if (strD != null) {
            return strG.concat(strD);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final void e() {
        k(this.f14481N);
        this.f14481N = null;
        this.f14482O = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        D4.b bVar = this.f14481N;
        Object obj = this.f14482O;
        if (((this.f13489G instanceof C2126vB) | (bVar == null)) || (obj == null)) {
            return;
        }
        this.f14481N = null;
        if (bVar.isCancelled()) {
            l(bVar);
            return;
        }
        try {
            try {
                Object objS = s(obj, Cw.f2(bVar));
                this.f14482O = null;
                t(objS);
            } catch (Throwable th) {
                try {
                    if (th instanceof InterruptedException) {
                        Thread.currentThread().interrupt();
                    }
                    g(th);
                } finally {
                    this.f14482O = null;
                }
            }
        } catch (Error e8) {
            g(e8);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e9) {
            g(e9.getCause());
        } catch (Exception e10) {
            g(e10);
        }
    }

    public abstract Object s(Object obj, Object obj2);

    public abstract void t(Object obj);
}
