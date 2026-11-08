package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;
import java.util.AbstractMap;

/* JADX INFO: loaded from: classes.dex */
public final class L extends G {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ M f22486I;

    public L(M m7) {
        this.f22486I = m7;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i8) {
        M m7 = this.f22486I;
        Cw.W(i8, m7.f22493L);
        int i9 = i8 + i8;
        Object[] objArr = m7.f22492K;
        Object obj = objArr[i9];
        obj.getClass();
        Object obj2 = objArr[i9 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22486I.f22493L;
    }
}
