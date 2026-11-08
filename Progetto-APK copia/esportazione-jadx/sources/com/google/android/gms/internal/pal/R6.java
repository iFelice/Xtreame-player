package com.google.android.gms.internal.pal;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class R6 extends S6 implements Iterable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f23645G = new ArrayList();

    @Override // com.google.android.gms.internal.pal.S6
    public final int b() {
        ArrayList arrayList = this.f23645G;
        if (arrayList.size() == 1) {
            return ((S6) arrayList.get(0)).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.pal.S6
    public final String c() {
        ArrayList arrayList = this.f23645G;
        if (arrayList.size() == 1) {
            return ((S6) arrayList.get(0)).c();
        }
        throw new IllegalStateException();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof R6) && ((R6) obj).f23645G.equals(this.f23645G);
        }
        return true;
    }

    public final int hashCode() {
        return this.f23645G.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f23645G.iterator();
    }
}
