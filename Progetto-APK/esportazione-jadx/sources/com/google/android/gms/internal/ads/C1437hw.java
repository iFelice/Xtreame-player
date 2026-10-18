package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1437hw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedBlockingDeque f19186a = new LinkedBlockingDeque();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f19187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f19188c;

    public C1437hw(CallableC0913Rm callableC0913Rm, C1936re c1936re) {
        this.f19187b = callableC0913Rm;
        this.f19188c = c1936re;
    }

    public final synchronized D4.b a() {
        c(1);
        return (D4.b) this.f19186a.poll();
    }

    public final synchronized void b(C1298fC c1298fC) {
        this.f19186a.addFirst(c1298fC);
    }

    public final synchronized void c(int i8) {
        int size = i8 - this.f19186a.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.f19186a.add(((IB) this.f19188c).b(this.f19187b));
        }
    }
}
