package com.google.android.gms.internal.pal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.t4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2824t4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2824t4 f24014b = new C2824t4();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f24015a = new AtomicReference(new B4(new p096m2.i(11)));

    public final synchronized void a(C2745j4 c2745j4) {
        p096m2.i iVar = new p096m2.i((B4) this.f24015a.get());
        iVar.s(c2745j4);
        this.f24015a.set(new B4(iVar));
    }

    public final synchronized void b(C2761l4 c2761l4) {
        p096m2.i iVar = new p096m2.i((B4) this.f24015a.get());
        iVar.u(c2761l4);
        this.f24015a.set(new B4(iVar));
    }

    public final synchronized void c(C2832u4 c2832u4) {
        p096m2.i iVar = new p096m2.i((B4) this.f24015a.get());
        iVar.w(c2832u4);
        this.f24015a.set(new B4(iVar));
    }
}
