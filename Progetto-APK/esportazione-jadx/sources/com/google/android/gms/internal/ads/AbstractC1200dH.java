package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1200dH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C1251eH f18313b;

    public static int c(int i8) {
        return (i8 >>> 1) ^ (-(i8 & 1));
    }

    public static long d(long j8) {
        return (j8 >>> 1) ^ (-(1 & j8));
    }

    public static YG e(byte[] bArr, int i8, int i9, boolean z7) {
        YG yg = new YG(bArr, i8, i9);
        try {
            yg.i(i9);
            return yg;
        } catch (AH e8) {
            throw new IllegalArgumentException(e8);
        }
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract double f();

    public abstract float g();

    public abstract int h();

    public abstract int i(int i8);

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public abstract int o();

    public abstract int p();

    public abstract long q();

    public abstract long r();

    public abstract long s();

    public abstract long t();

    public abstract long u();

    public abstract VG v();

    public abstract String w();

    public abstract String x();

    public abstract void y();

    public abstract void z(int i8);
}
