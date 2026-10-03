package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.g1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2901g1 extends L0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Q1 f24435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Q1 f24437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C2897f1 f24438d;

    public C2901g1(Q1 q7, Object obj, Q1 q8, C2897f1 c2897f1) {
        if (q7 == null) {
            throw new IllegalArgumentException("Null containingTypeDefaultInstance");
        }
        if (c2897f1.f24427I == S2.f24305L && q8 == null) {
            throw new IllegalArgumentException("Null messageDefaultInstance");
        }
        this.f24435a = q7;
        this.f24436b = obj;
        this.f24437c = q8;
        this.f24438d = c2897f1;
    }

    public final Object a(Object obj) {
        C2897f1 c2897f1 = this.f24438d;
        if (c2897f1.f24427I.f24308G != T2.ENUM) {
            return obj;
        }
        return c2897f1.f24425G.b(((Integer) obj).intValue());
    }

    public final Object b(Object obj) {
        return this.f24438d.f24427I.f24308G == T2.ENUM ? Integer.valueOf(((InterfaceC2933o1) obj).a()) : obj;
    }
}
