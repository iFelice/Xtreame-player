package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.atv_ads_framework.AbstractC2406q;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class O extends I {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient AbstractC2406q f22508J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient G f22509K;

    public O(AbstractC2406q abstractC2406q, P p7) {
        this.f22508J = abstractC2406q;
        this.f22509K = p7;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int b(Object[] objArr) {
        return this.f22509K.b(objArr);
    }

    @Override // com.google.android.gms.internal.cast.D, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f22508J.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f22509K.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f22508J.size();
    }
}
