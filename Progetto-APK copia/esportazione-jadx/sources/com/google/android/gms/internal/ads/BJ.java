package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class BJ extends AbstractList {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C2342zJ f12315I = Q3.b.G(BJ.class);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f12316G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Iterator f12317H;

    public BJ(ArrayList arrayList, Iterator it) {
        this.f12316G = arrayList;
        this.f12317H = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        List list = this.f12316G;
        if (list.size() > i8) {
            return list.get(i8);
        }
        Iterator it = this.f12317H;
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        list.add(it.next());
        return get(i8);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new AJ(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        C2342zJ c2342zJ = f12315I;
        c2342zJ.g0("potentially expensive size() call");
        c2342zJ.g0("blowup running");
        while (true) {
            Iterator it = this.f12317H;
            boolean zHasNext = it.hasNext();
            List list = this.f12316G;
            if (!zHasNext) {
                return list.size();
            }
            list.add(it.next());
        }
    }
}
