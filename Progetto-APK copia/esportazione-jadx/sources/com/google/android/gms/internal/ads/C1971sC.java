package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1971sC extends AbstractRunnableC1402hC {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f20873I = 0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ RunnableFutureC2023tC f20874J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Object f20875K;

    public C1971sC(RunnableFutureC2023tC runnableFutureC2023tC, QB qb) {
        this.f20874J = runnableFutureC2023tC;
        this.f20875K = qb;
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final Object a() {
        int i8 = this.f20873I;
        Object obj = this.f20875K;
        switch (i8) {
            case 0:
                QB qb = (QB) obj;
                D4.b bVarZza = qb.zza();
                if (bVarZza != null) {
                    return bVarZza;
                }
                throw new NullPointerException(Q3.b.I("AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", qb));
            default:
                return ((Callable) obj).call();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final String b() {
        int i8 = this.f20873I;
        Object obj = this.f20875K;
        switch (i8) {
            case 0:
                return ((QB) obj).toString();
            default:
                return ((Callable) obj).toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final void d(Throwable th) {
        int i8 = this.f20873I;
        RunnableFutureC2023tC runnableFutureC2023tC = this.f20874J;
        switch (i8) {
            case 0:
                runnableFutureC2023tC.g(th);
                break;
            default:
                runnableFutureC2023tC.g(th);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final void e(Object obj) {
        int i8 = this.f20873I;
        RunnableFutureC2023tC runnableFutureC2023tC = this.f20874J;
        switch (i8) {
            case 0:
                runnableFutureC2023tC.l((D4.b) obj);
                break;
            default:
                runnableFutureC2023tC.f(obj);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final boolean f() {
        int i8 = this.f20873I;
        RunnableFutureC2023tC runnableFutureC2023tC = this.f20874J;
        switch (i8) {
            case 0:
                break;
        }
        return runnableFutureC2023tC.isDone();
    }

    public C1971sC(RunnableFutureC2023tC runnableFutureC2023tC, Callable callable) {
        this.f20874J = runnableFutureC2023tC;
        callable.getClass();
        this.f20875K = callable;
    }
}
