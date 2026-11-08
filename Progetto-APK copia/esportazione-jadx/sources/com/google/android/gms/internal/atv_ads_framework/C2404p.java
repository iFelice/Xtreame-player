package com.google.android.gms.internal.atv_ads_framework;

import com.google.protobuf.U2;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2404p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f22345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f22346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f22347c;

    public C2404p(Object obj, Object obj2, Object obj3) {
        this.f22345a = obj;
        this.f22346b = obj2;
        this.f22347c = obj3;
    }

    public final IllegalArgumentException a() {
        Object obj = this.f22345a;
        String strValueOf = String.valueOf(obj);
        String strValueOf2 = String.valueOf(this.f22346b);
        return new IllegalArgumentException(U2.n(U2.q("Multiple entries with same key: ", strValueOf, "=", strValueOf2, " and "), String.valueOf(obj), "=", String.valueOf(this.f22347c)));
    }
}
