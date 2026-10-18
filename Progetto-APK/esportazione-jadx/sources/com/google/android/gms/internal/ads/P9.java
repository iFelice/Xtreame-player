package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class P9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f15336a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f15337b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f15338c = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f15339d = new AtomicBoolean(false);

    public final synchronized float a() {
        return this.f15338c;
    }

    public final synchronized void b(float f8, boolean z7) {
        this.f15337b = z7;
        this.f15338c = f8;
    }

    public final synchronized boolean c(boolean z7) {
        if (!this.f15339d.get()) {
            return z7;
        }
        return this.f15336a;
    }
}
