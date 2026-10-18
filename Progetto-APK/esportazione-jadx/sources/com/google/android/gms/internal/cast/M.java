package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.atv_ads_framework.AbstractC2406q;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class M extends I {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient AbstractC2406q f22491J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object[] f22492K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient int f22493L;

    public M(AbstractC2406q abstractC2406q, Object[] objArr, int i8) {
        this.f22491J = abstractC2406q;
        this.f22492K = objArr;
        this.f22493L = i8;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int b(Object[] objArr) {
        G gP = this.f22472H;
        if (gP == null) {
            gP = p();
            this.f22472H = gP;
        }
        return gP.b(objArr);
    }

    @Override // com.google.android.gms.internal.cast.D, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f22491J.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        G gP = this.f22472H;
        if (gP == null) {
            gP = p();
            this.f22472H = gP;
        }
        return gP.listIterator(0);
    }

    public final G p() {
        return new L(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f22493L;
    }
}
