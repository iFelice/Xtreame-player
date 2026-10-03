package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2417w extends r {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient AbstractC2406q f22383I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient AbstractC2402o f22384J;

    public C2417w(AbstractC2406q abstractC2406q, C2419x c2419x) {
        this.f22383I = abstractC2406q;
        this.f22384J = c2419x;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int b(Object[] objArr) {
        return this.f22384J.b(objArr);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f22383I.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f22384J.listIterator(0);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r, com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final AbstractC2402o l() {
        return this.f22384J;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r
    public final AbstractC1349gB p() {
        return this.f22384J.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f22383I.size();
    }
}
