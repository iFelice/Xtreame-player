package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class U2 extends P2 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final U2 f23664K = new U2(new Object[0], 0);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f23665I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f23666J;

    public U2(Object[] objArr, int i8) {
        this.f23665I = objArr;
        this.f23666J = i8;
    }

    @Override // com.google.android.gms.internal.pal.P2, com.google.android.gms.internal.pal.M2
    public final int b(Object[] objArr) {
        Object[] objArr2 = this.f23665I;
        int i8 = this.f23666J;
        System.arraycopy(objArr2, 0, objArr, 0, i8);
        return i8;
    }

    @Override // com.google.android.gms.internal.pal.M2
    public final int c() {
        return this.f23666J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        AbstractC2864y4.q(i8, this.f23666J);
        Object obj = this.f23665I[i8];
        obj.getClass();
        return obj;
    }

    @Override // com.google.android.gms.internal.pal.M2
    public final int i() {
        return 0;
    }

    @Override // com.google.android.gms.internal.pal.M2
    public final Object[] l() {
        return this.f23665I;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23666J;
    }
}
