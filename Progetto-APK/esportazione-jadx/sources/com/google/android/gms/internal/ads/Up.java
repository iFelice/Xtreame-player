package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Up {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f16887a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16888b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f16889c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f16890d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f16891e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f16892f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f16893g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f16894h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f16895i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f16896j = new Object();

    public final int a() {
        int i8;
        synchronized (this.f16893g) {
            i8 = this.f16888b;
        }
        return i8;
    }

    public final synchronized long b() {
        long j8;
        synchronized (this.f16896j) {
            j8 = this.f16891e;
        }
        return j8;
    }

    public final synchronized long c() {
        long j8;
        synchronized (this.f16895i) {
            j8 = this.f16890d;
        }
        return j8;
    }

    public final synchronized long d() {
        long j8;
        synchronized (this.f16892f) {
            j8 = this.f16887a;
        }
        return j8;
    }

    public final synchronized void e(long j8) {
        synchronized (this.f16892f) {
            this.f16887a = j8;
        }
    }

    public final void f(int i8) {
        synchronized (this.f16893g) {
            this.f16888b = i8;
        }
    }
}
