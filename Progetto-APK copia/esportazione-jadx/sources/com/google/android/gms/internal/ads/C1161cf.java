package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1161cf implements Iterable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f18228G = new ArrayList();

    public final boolean b(InterfaceC0863Oe interfaceC0863Oe) {
        ArrayList arrayList = new ArrayList();
        for (C1110bf c1110bf : this.f18228G) {
            if (c1110bf.f18058b == interfaceC0863Oe) {
                arrayList.add(c1110bf);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((C1110bf) it.next()).f18059c.l();
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f18228G.iterator();
    }
}
