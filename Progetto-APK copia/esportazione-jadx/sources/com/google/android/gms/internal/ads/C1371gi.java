package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1371gi implements G5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0715Ef f18962G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f18963H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AtomicReference f18964I = new AtomicReference();

    public C1371gi(InterfaceC0715Ef interfaceC0715Ef, Executor executor) {
        this.f18962G = interfaceC0715Ef;
        this.f18963H = executor;
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final synchronized void F(F5 f8) {
        if (this.f18962G != null) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Qb)).booleanValue()) {
                if (f8.f13321j) {
                    AtomicReference atomicReference = this.f18964I;
                    Boolean bool = Boolean.TRUE;
                    if (!bool.equals(atomicReference.getAndSet(bool))) {
                        Executor executor = this.f18963H;
                        InterfaceC0715Ef interfaceC0715Ef = this.f18962G;
                        Objects.requireNonNull(interfaceC0715Ef);
                        executor.execute(new RunnableC0850Nf(interfaceC0715Ef, 1));
                        return;
                    }
                }
                if (!f8.f13321j) {
                    AtomicReference atomicReference2 = this.f18964I;
                    Boolean bool2 = Boolean.FALSE;
                    if (!bool2.equals(atomicReference2.getAndSet(bool2))) {
                        Executor executor2 = this.f18963H;
                        InterfaceC0715Ef interfaceC0715Ef2 = this.f18962G;
                        Objects.requireNonNull(interfaceC0715Ef2);
                        executor2.execute(new RunnableC0850Nf(interfaceC0715Ef2, 2));
                    }
                }
            }
        }
    }
}
