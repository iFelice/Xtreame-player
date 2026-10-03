package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1866qA extends AbstractC1090bA implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f20556G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f20557H;

    public C1866qA(Object obj, List list) {
        this.f20556G = obj;
        this.f20557H = list;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f20556G;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f20557H;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
