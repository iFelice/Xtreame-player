package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1969sA extends Kz {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AbstractC2073uA f20872J;

    public C1969sA(int i8, AbstractC2073uA abstractC2073uA) {
        super(abstractC2073uA.size(), i8);
        this.f20872J = abstractC2073uA;
    }

    @Override // com.google.android.gms.internal.ads.Kz
    public final Object c(int i8) {
        return this.f20872J.get(i8);
    }
}
