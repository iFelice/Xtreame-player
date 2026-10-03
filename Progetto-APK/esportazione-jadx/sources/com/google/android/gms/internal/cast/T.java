package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class T extends I {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object f22544J;

    public T(Object obj) {
        this.f22544J = obj;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int b(Object[] objArr) {
        objArr[0] = this.f22544J;
        return 1;
    }

    @Override // com.google.android.gms.internal.cast.D, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f22544J.equals(obj);
    }

    @Override // com.google.android.gms.internal.cast.I, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f22544J.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new J(this.f22544J);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return p000a.r.g("[", this.f22544J.toString(), "]");
    }
}
