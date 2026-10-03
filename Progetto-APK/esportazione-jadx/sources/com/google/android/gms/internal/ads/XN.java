package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class XN extends AbstractC0774Ie {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Object f17412g = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f17414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f17415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C2225x6 f17416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final A4 f17417f;

    static {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        PA pa = PA.f15340K;
        List listEmptyList = Collections.emptyList();
        PA pa2 = PA.f15340K;
        J5 j8 = J5.f14124a;
        Uri uri = Uri.EMPTY;
        if (uri != null) {
            new C1239e5(uri, listEmptyList, pa2);
        }
        new F3();
        C1451i9 c1451i9 = C1451i9.f19243y;
    }

    public XN(long j8, long j9, boolean z7, C2225x6 c2225x6, A4 a8) {
        this.f17413b = j8;
        this.f17414c = j9;
        this.f17415d = z7;
        c2225x6.getClass();
        this.f17416e = c2225x6;
        this.f17417f = a8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int a(Object obj) {
        return f17412g.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int b() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int c() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C1521je d(int i8, C1521je c1521je, boolean z7) {
        p113o3.r.p(i8, 1);
        Object obj = z7 ? f17412g : null;
        T5 t7 = T5.f16590b;
        c1521je.b(null, obj, 0, this.f17413b, false);
        return c1521je;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C2196we e(int i8, C2196we c2196we, long j8) {
        p113o3.r.p(i8, 1);
        Object obj = C2196we.f21706m;
        c2196we.a(this.f17416e, this.f17415d, false, this.f17417f, this.f17414c);
        return c2196we;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final Object f(int i8) {
        p113o3.r.p(i8, 1);
        return f17412g;
    }
}
