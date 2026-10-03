package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.Cw;
import java.util.AbstractMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2413u extends AbstractC2402o {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C2415v f22372I;

    public C2413u(C2415v c2415v) {
        this.f22372I = c2415v;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i8) {
        C2415v c2415v = this.f22372I;
        Cw.q0(i8, c2415v.f22378K);
        int i9 = i8 + i8;
        Object[] objArr = c2415v.f22377J;
        Object obj = objArr[i9];
        obj.getClass();
        Object obj2 = objArr[i9 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final boolean n() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22372I.f22378K;
    }
}
