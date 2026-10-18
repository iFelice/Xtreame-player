package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2415v extends r {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient AbstractC2406q f22376I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object[] f22377J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f22378K;

    public C2415v(AbstractC2406q abstractC2406q, Object[] objArr, int i8) {
        this.f22376I = abstractC2406q;
        this.f22377J = objArr;
        this.f22378K = i8;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int b(Object[] objArr) {
        return l().b(objArr);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f22376I.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return l().listIterator(0);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r
    public final AbstractC1349gB p() {
        return l().listIterator(0);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r
    public final AbstractC2402o r() {
        return new C2413u(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f22378K;
    }
}
