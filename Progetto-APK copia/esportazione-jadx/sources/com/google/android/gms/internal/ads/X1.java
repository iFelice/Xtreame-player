package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class X1 implements N {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final N f17361G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final V1 f17362H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final SparseArray f17363I = new SparseArray();

    public X1(N n7, V1 v5) {
        this.f17361G = n7;
        this.f17362H = v5;
    }

    @Override // com.google.android.gms.internal.ads.N
    public final void f() {
        this.f17361G.f();
    }

    @Override // com.google.android.gms.internal.ads.N
    public final void g(Y y7) {
        this.f17361G.g(y7);
    }

    @Override // com.google.android.gms.internal.ads.N
    public final InterfaceC1234e0 h(int i8, int i9) {
        N n7 = this.f17361G;
        if (i9 != 3) {
            return n7.h(i8, i9);
        }
        SparseArray sparseArray = this.f17363I;
        Y1 y7 = (Y1) sparseArray.get(i8);
        if (y7 != null) {
            return y7;
        }
        Y1 y8 = new Y1(n7.h(i8, 3), this.f17362H);
        sparseArray.put(i8, y8);
        return y8;
    }
}
