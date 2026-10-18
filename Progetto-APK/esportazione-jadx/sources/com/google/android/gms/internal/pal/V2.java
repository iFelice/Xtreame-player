package com.google.android.gms.internal.pal;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes.dex */
public final class V2 extends P2 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ W2 f23675I;

    public V2(W2 w7) {
        this.f23675I = w7;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i8) {
        W2 w7 = this.f23675I;
        AbstractC2864y4.q(i8, w7.f23685K);
        int i9 = i8 + i8;
        Object[] objArr = w7.f23684J;
        Object obj = objArr[i9];
        obj.getClass();
        Object obj2 = objArr[i9 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23675I.f23685K;
    }
}
