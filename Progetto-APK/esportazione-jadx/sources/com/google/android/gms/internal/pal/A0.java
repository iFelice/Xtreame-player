package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class A0 extends C0 {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final A0 f23424H = new A0(0);

    public A0(long j8) {
        this.f23477G = j8;
    }

    public static A0 a(long j8) {
        return j8 == 0 ? f23424H : new A0(j8);
    }

    public static A0 b(long j8) {
        return new A0(AbstractC2864y4.d(3600000, j8));
    }
}
