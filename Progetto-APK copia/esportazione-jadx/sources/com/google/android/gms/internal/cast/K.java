package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: loaded from: classes.dex */
public final class K extends G {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final K f22479K = new K(new Object[0], 0);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f22480I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f22481J;

    public K(Object[] objArr, int i8) {
        this.f22480I = objArr;
        this.f22481J = i8;
    }

    @Override // com.google.android.gms.internal.cast.G, com.google.android.gms.internal.cast.D
    public final int b(Object[] objArr) {
        Object[] objArr2 = this.f22480I;
        int i8 = this.f22481J;
        System.arraycopy(objArr2, 0, objArr, 0, i8);
        return i8;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int c() {
        return this.f22481J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        Cw.W(i8, this.f22481J);
        Object obj = this.f22480I[i8];
        obj.getClass();
        return obj;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int i() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final Object[] l() {
        return this.f22480I;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22481J;
    }
}
