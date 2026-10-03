package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2573i implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Iterator f23159G;

    public C2573i(Iterator it) {
        this.f23159G = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23159G.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return new C2619q((String) this.f23159G.next());
    }
}
