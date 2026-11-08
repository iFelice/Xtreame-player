package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractRunnableC2074uB extends ZB implements Runnable {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public D4.b f21208N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Class f21209O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public Object f21210P;

    public AbstractRunnableC2074uB(D4.b bVar, Class cls, Object obj) {
        bVar.getClass();
        this.f21208N = bVar;
        this.f21209O = cls;
        this.f21210P = obj;
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final String d() {
        D4.b bVar = this.f21208N;
        Class cls = this.f21209O;
        Object obj = this.f21210P;
        String strD = super.d();
        String strG = bVar != null ? p000a.r.g("inputFuture=[", bVar.toString(), "], ") : HttpUrl.FRAGMENT_ENCODE_SET;
        if (cls == null || obj == null) {
            if (strD != null) {
                return strG.concat(strD);
            }
            return null;
        }
        return strG + "exceptionType=[" + cls.toString() + "], fallback=[" + obj.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final void e() {
        k(this.f21208N);
        this.f21208N = null;
        this.f21209O = null;
        this.f21210P = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Object objF2;
        D4.b bVar = this.f21208N;
        Class cls = this.f21209O;
        Object obj = this.f21210P;
        if (((obj == null) || ((bVar == 0) | (cls == null))) || (this.f13489G instanceof C2126vB)) {
            return;
        }
        this.f21208N = null;
        try {
            th = bVar instanceof AbstractC2075uC ? ((AbstractC2075uC) bVar).b() : null;
            objF2 = th == null ? Cw.f2(bVar) : null;
        } catch (ExecutionException e8) {
            Throwable cause = e8.getCause();
            if (cause == null) {
                cause = new NullPointerException(A0.O.C("Future type ", String.valueOf(bVar.getClass()), " threw ", String.valueOf(e8.getClass()), " without a cause"));
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        if (th == null) {
            f(objF2);
            return;
        }
        if (!cls.isInstance(th)) {
            l(bVar);
            return;
        }
        try {
            Object objS = s(obj, th);
            this.f21209O = null;
            this.f21210P = null;
            t(objS);
        } catch (Throwable th2) {
            try {
                if (th2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                g(th2);
            } finally {
                this.f21209O = null;
                this.f21210P = null;
            }
        }
    }

    public abstract Object s(Object obj, Throwable th);

    public abstract void t(Object obj);
}
