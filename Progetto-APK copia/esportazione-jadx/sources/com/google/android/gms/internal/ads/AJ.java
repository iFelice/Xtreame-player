package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class AJ implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f11998G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ BJ f11999H;

    public AJ(BJ bj) {
        this.f11999H = bj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i8 = this.f11998G;
        BJ bj = this.f11999H;
        return i8 < bj.f12316G.size() || bj.f12317H.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i8 = this.f11998G;
        BJ bj = this.f11999H;
        if (i8 >= bj.f12316G.size()) {
            bj.f12316G.add(bj.f12317H.next());
            return next();
        }
        int i9 = this.f11998G;
        this.f11998G = i9 + 1;
        return bj.f12316G.get(i9);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
