package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1348gA extends AbstractSet {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18908G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1502jA f18909H;

    public /* synthetic */ C1348gA(C1502jA c1502jA, int i8) {
        this.f18908G = i8;
        this.f18909H = c1502jA;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        int i8 = this.f18908G;
        C1502jA c1502jA = this.f18909H;
        switch (i8) {
            case 0:
                c1502jA.clear();
                break;
            default:
                c1502jA.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int i8 = this.f18908G;
        C1502jA c1502jA = this.f18909H;
        switch (i8) {
            case 0:
                Map mapD = c1502jA.d();
                if (mapD != null) {
                    return mapD.entrySet().contains(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    int iH = c1502jA.h(entry.getKey());
                    if (iH != -1 && com.google.android.gms.internal.measurement.H1.E(c1502jA.c()[iH], entry.getValue())) {
                        return true;
                    }
                }
                return false;
            default:
                return c1502jA.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i8 = this.f18908G;
        C1502jA c1502jA = this.f18909H;
        switch (i8) {
            case 0:
                Map mapD = c1502jA.d();
                return mapD != null ? mapD.entrySet().iterator() : new C1244eA(c1502jA, 1);
            default:
                Map mapD2 = c1502jA.d();
                return mapD2 != null ? mapD2.keySet().iterator() : new C1244eA(c1502jA, 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i8 = this.f18908G;
        C1502jA c1502jA = this.f18909H;
        switch (i8) {
            case 0:
                Map mapD = c1502jA.d();
                if (mapD != null) {
                    return mapD.entrySet().remove(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (!c1502jA.f()) {
                        int iG = c1502jA.g();
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        Object obj2 = c1502jA.f19435G;
                        Objects.requireNonNull(obj2);
                        int iX0 = Cw.x0(key, value, iG, obj2, c1502jA.a(), c1502jA.b(), c1502jA.c());
                        if (iX0 != -1) {
                            c1502jA.e(iX0, iG);
                            c1502jA.f19440L--;
                            c1502jA.f19439K += 32;
                            return true;
                        }
                    }
                }
                return false;
            default:
                Map mapD2 = c1502jA.d();
                if (mapD2 != null) {
                    return mapD2.keySet().remove(obj);
                }
                return c1502jA.j(obj) != C1502jA.f19434P;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i8 = this.f18908G;
        C1502jA c1502jA = this.f18909H;
        switch (i8) {
            case 0:
                break;
        }
        return c1502jA.size();
    }
}
