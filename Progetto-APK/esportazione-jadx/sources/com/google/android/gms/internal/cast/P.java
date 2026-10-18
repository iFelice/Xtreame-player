package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: loaded from: classes.dex */
public final class P extends G {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f22512I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f22513J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f22514K;

    public P(Object[] objArr, int i8, int i9) {
        this.f22512I = objArr;
        this.f22513J = i8;
        this.f22514K = i9;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        Cw.W(i8, this.f22514K);
        Object obj = this.f22512I[i8 + i8 + this.f22513J];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22514K;
    }
}
