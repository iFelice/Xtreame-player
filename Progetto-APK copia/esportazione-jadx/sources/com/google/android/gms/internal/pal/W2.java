package com.google.android.gms.internal.pal;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class W2 extends T2 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient S2 f23683I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object[] f23684J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f23685K;

    public W2(S2 s7, Object[] objArr, int i8) {
        this.f23683I = s7;
        this.f23684J = objArr;
        this.f23685K = i8;
    }

    @Override // com.google.android.gms.internal.pal.M2
    public final int b(Object[] objArr) {
        return o().b(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f23683I.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return o().listIterator(0);
    }

    @Override // com.google.android.gms.internal.pal.T2
    public final N2 n() {
        return o().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f23685K;
    }
}
