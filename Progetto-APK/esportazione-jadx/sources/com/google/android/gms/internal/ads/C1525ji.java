package com.google.android.gms.internal.ads;

import android.view.View;
import android.widget.FrameLayout;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ji, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1525ji extends AbstractC0852Nh {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final InterfaceC2280y9 f19477j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Runnable f19478k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Executor f19479l;

    public C1525ji(C2200wi c2200wi, InterfaceC2280y9 interfaceC2280y9, Runnable runnable, Executor executor) {
        super(c2200wi);
        this.f19477j = interfaceC2280y9;
        this.f19478k = runnable;
        this.f19479l = executor;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2252xi
    public final void a() {
        this.f19479l.execute(new RunnableC0755Ha(23, this, new RunnableC1474ii(new AtomicReference(this.f19478k))));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final int b() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final View d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final p090l3.B0 e() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final Pv f() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final Pv g() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final void h() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final void i(FrameLayout frameLayout, p090l3.d1 d1Var) {
    }
}
