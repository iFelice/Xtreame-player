package com.google.android.gms.internal.pal;

import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2797q0 implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Iterator f23983G;

    public C2797q0(C2804r0 c2804r0) {
        this.f23983G = c2804r0.f23992G.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23983G.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f23983G.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
