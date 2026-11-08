package com.google.android.gms.internal.pal;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public final class O1 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A1 f23614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final L4 f23615b;

    public O1(A1 a8, L4 l4) {
        this.f23614a = a8;
        this.f23615b = l4;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws ExecutionException, InterruptedException {
        Future future = this.f23614a.f23435k;
        if (future != null) {
            future.get();
        }
        C2765m0 c2765m0 = this.f23614a.f23434j;
        if (c2765m0 == null) {
            return null;
        }
        try {
            synchronized (this.f23615b) {
                try {
                    L4 l4 = this.f23615b;
                    byte[] bArrB = c2765m0.b();
                    l4.c(bArrB, bArrB.length, C2851x.a());
                } catch (Throwable th) {
                    throw th;
                }
            }
            return null;
        } catch (L | NullPointerException unused) {
            return null;
        }
    }
}
