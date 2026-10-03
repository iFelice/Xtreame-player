package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1194dB extends AbstractC2333zA {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object f18304J;

    public C1194dB(Object obj) {
        obj.getClass();
        this.f18304J = obj;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int b(Object[] objArr, int i8) {
        objArr[i8] = this.f18304J;
        return i8 + 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f18304J.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2333zA, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f18304J.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new CA(this.f18304J);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2333zA, com.google.android.gms.internal.ads.AbstractC1814pA
    public final AbstractC2073uA l() {
        return AbstractC2073uA.w(this.f18304J);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final AbstractC1349gB n() {
        return new CA(this.f18304J);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final boolean o() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return p000a.r.g("[", this.f18304J.toString(), "]");
    }
}
