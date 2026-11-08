package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: loaded from: classes.dex */
public final class F extends G {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient int f22453I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f22454J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ G f22455K;

    public F(G g8, int i8, int i9) {
        this.f22455K = g8;
        this.f22453I = i8;
        this.f22454J = i9;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int c() {
        return this.f22455K.i() + this.f22453I + this.f22454J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        Cw.W(i8, this.f22454J);
        return this.f22455K.get(i8 + this.f22453I);
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int i() {
        return this.f22455K.i() + this.f22453I;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final Object[] l() {
        return this.f22455K.l();
    }

    @Override // com.google.android.gms.internal.cast.G, java.util.List
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public final G subList(int i8, int i9) {
        Cw.q1(i8, i9, this.f22454J);
        int i10 = this.f22453I;
        return this.f22455K.subList(i8 + i10, i9 + i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22454J;
    }
}
