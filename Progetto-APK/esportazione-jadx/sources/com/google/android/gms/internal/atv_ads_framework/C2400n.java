package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2400n extends AbstractC2402o {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient int f22340I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f22341J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ AbstractC2402o f22342K;

    public C2400n(AbstractC2402o abstractC2402o, int i8, int i9) {
        this.f22342K = abstractC2402o;
        this.f22340I = i8;
        this.f22341J = i9;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int c() {
        return this.f22342K.i() + this.f22340I + this.f22341J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        Cw.q0(i8, this.f22341J);
        return this.f22342K.get(i8 + this.f22340I);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int i() {
        return this.f22342K.i() + this.f22340I;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final boolean n() {
        return true;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final Object[] o() {
        return this.f22342K.o();
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2402o, java.util.List
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final AbstractC2402o subList(int i8, int i9) {
        Cw.e1(i8, i9, this.f22341J);
        int i10 = this.f22340I;
        return this.f22342K.subList(i8 + i10, i9 + i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22341J;
    }
}
