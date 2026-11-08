package com.google.android.gms.internal.pal;

import android.os.Handler;
import com.google.android.gms.internal.ads.Cw;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.a1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2670a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExecutorService f23721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final A0 f23722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f23723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p052g4.r f23724d = Cw.k(G2.f23533G);

    public AbstractC2670a1(Handler handler, ExecutorService executorService, A0 a8) {
        this.f23721a = executorService;
        this.f23723c = handler;
        this.f23722b = a8;
    }

    public abstract I2 a();

    public final p052g4.r b() {
        if (this.f23724d.g() && !this.f23724d.h()) {
            c();
        }
        return this.f23724d;
    }

    public final void c() {
        this.f23723c.removeCallbacksAndMessages(null);
        this.f23723c.postDelayed(new Y0(this, 0), (this.f23722b.f23477G / 1000) * 1000);
        this.f23724d = Cw.c(new Callable() { // from class: com.google.android.gms.internal.pal.Z0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f23712a.a();
            }
        }, this.f23721a);
    }
}
