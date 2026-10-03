package com.google.android.gms.internal.ads;

import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Nv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final P3.a f15099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f15100b = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile int f15102d = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile long f15101c = 0;

    public Nv(P3.a aVar) {
        this.f15099a = aVar;
    }

    public final boolean a() {
        boolean z7;
        synchronized (this.f15100b) {
            b();
            z7 = this.f15102d == 3;
        }
        return z7;
    }

    public final void b() {
        ((P3.b) this.f15099a).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this.f15100b) {
            try {
                if (this.f15102d == 3) {
                    if (this.f15101c + ((Long) C3099q.f26624d.f26627c.a(Q7.f15975x5)).longValue() <= jCurrentTimeMillis) {
                        this.f15102d = 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(int i8, int i9) {
        b();
        Object obj = this.f15100b;
        ((P3.b) this.f15099a).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (obj) {
            try {
                if (this.f15102d != i8) {
                    return;
                }
                this.f15102d = i9;
                if (this.f15102d == 3) {
                    this.f15101c = jCurrentTimeMillis;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
