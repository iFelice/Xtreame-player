package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2125vA {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f21447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f21448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f21449c;

    public C2125vA(Object obj, Object obj2, Object obj3) {
        this.f21447a = obj;
        this.f21448b = obj2;
        this.f21449c = obj3;
    }

    public final IllegalArgumentException a() {
        Object obj = this.f21447a;
        String strValueOf = String.valueOf(obj);
        String strValueOf2 = String.valueOf(this.f21448b);
        return new IllegalArgumentException(com.google.protobuf.U2.n(com.google.protobuf.U2.q("Multiple entries with same key: ", strValueOf, "=", strValueOf2, " and "), String.valueOf(obj), "=", String.valueOf(this.f21449c)));
    }
}
