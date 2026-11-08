package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2537c implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Iterator f23106G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Iterator f23107H;

    public C2537c(Iterator it, Iterator it2) {
        this.f23106G = it;
        this.f23107H = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f23106G.hasNext()) {
            return true;
        }
        return this.f23107H.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Iterator it = this.f23106G;
        if (it.hasNext()) {
            return new C2619q(((Integer) it.next()).toString());
        }
        Iterator it2 = this.f23107H;
        if (it2.hasNext()) {
            return new C2619q((String) it2.next());
        }
        throw new NoSuchElementException();
    }
}
