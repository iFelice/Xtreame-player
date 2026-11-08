package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class Y2 extends P2 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f23705I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f23706J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f23707K;

    public Y2(Object[] objArr, int i8, int i9) {
        this.f23705I = objArr;
        this.f23706J = i8;
        this.f23707K = i9;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        AbstractC2864y4.q(i8, this.f23707K);
        Object obj = this.f23705I[i8 + i8 + this.f23706J];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23707K;
    }
}
