package com.google.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public final class J1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.i f24264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f24266c;

    public J1(O2 o4, S2 s7, Object obj) {
        this.f24264a = new p096m2.i(o4, s7, obj);
        this.f24266c = obj;
    }

    public static int a(p096m2.i iVar, Object obj, Object obj2) {
        return W0.c((S2) iVar.f27226J, 2, obj2) + W0.c((S2) iVar.f27224H, 1, obj);
    }

    public static void b(AbstractC2970z abstractC2970z, p096m2.i iVar, Object obj, Object obj2) {
        W0.r(abstractC2970z, (S2) iVar.f27224H, 1, obj);
        W0.r(abstractC2970z, (S2) iVar.f27226J, 2, obj2);
    }
}
