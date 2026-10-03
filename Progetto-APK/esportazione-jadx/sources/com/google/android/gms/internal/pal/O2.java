package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class O2 extends P2 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient int f23616I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f23617J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ P2 f23618K;

    public O2(P2 p7, int i8, int i9) {
        this.f23618K = p7;
        this.f23616I = i8;
        this.f23617J = i9;
    }

    @Override // com.google.android.gms.internal.pal.M2
    public final int c() {
        return this.f23618K.i() + this.f23616I + this.f23617J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        AbstractC2864y4.q(i8, this.f23617J);
        return this.f23618K.get(i8 + this.f23616I);
    }

    @Override // com.google.android.gms.internal.pal.M2
    public final int i() {
        return this.f23618K.i() + this.f23616I;
    }

    @Override // com.google.android.gms.internal.pal.M2
    public final Object[] l() {
        return this.f23618K.l();
    }

    @Override // com.google.android.gms.internal.pal.P2, java.util.List
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public final P2 subList(int i8, int i9) {
        AbstractC2864y4.V(i8, i9, this.f23617J);
        int i10 = this.f23616I;
        return this.f23618K.subList(i8 + i10, i9 + i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23617J;
    }
}
