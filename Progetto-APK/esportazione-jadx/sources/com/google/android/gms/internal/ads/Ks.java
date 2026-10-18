package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class Ks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f14425a = new long[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f14426b = new Object[10];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14427c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14428d;

    public final synchronized int a() {
        return this.f14428d;
    }

    public final synchronized Object b() {
        if (this.f14428d == 0) {
            return null;
        }
        return f();
    }

    public final synchronized Object c(long j8) {
        Object objF;
        objF = null;
        while (this.f14428d > 0 && j8 - this.f14425a[this.f14427c] >= 0) {
            objF = f();
        }
        return objF;
    }

    public final synchronized void d(Object obj, long j8) {
        try {
            int i8 = this.f14428d;
            if (i8 > 0) {
                if (j8 <= this.f14425a[((this.f14427c + i8) - 1) % this.f14426b.length]) {
                    e();
                }
            }
            int length = this.f14426b.length;
            if (this.f14428d >= length) {
                int i9 = length + length;
                long[] jArr = new long[i9];
                Object[] objArr = new Object[i9];
                int i10 = this.f14427c;
                int i11 = length - i10;
                System.arraycopy(this.f14425a, i10, jArr, 0, i11);
                System.arraycopy(this.f14426b, this.f14427c, objArr, 0, i11);
                int i12 = this.f14427c;
                if (i12 > 0) {
                    System.arraycopy(this.f14425a, 0, jArr, i11, i12);
                    System.arraycopy(this.f14426b, 0, objArr, i11, this.f14427c);
                }
                this.f14425a = jArr;
                this.f14426b = objArr;
                this.f14427c = 0;
            }
            int i13 = this.f14427c;
            int i14 = this.f14428d;
            Object[] objArr2 = this.f14426b;
            int length2 = (i13 + i14) % objArr2.length;
            this.f14425a[length2] = j8;
            objArr2[length2] = obj;
            this.f14428d = i14 + 1;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void e() {
        this.f14427c = 0;
        this.f14428d = 0;
        Arrays.fill(this.f14426b, (Object) null);
    }

    public final Object f() {
        p113o3.r.M(this.f14428d > 0);
        Object[] objArr = this.f14426b;
        int i8 = this.f14427c;
        Object obj = objArr[i8];
        objArr[i8] = null;
        this.f14427c = (i8 + 1) % objArr.length;
        this.f14428d--;
        return obj;
    }
}
