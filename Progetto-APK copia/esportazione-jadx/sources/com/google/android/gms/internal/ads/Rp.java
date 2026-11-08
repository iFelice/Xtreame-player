package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Rp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Op f16364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f16365b;

    public Rp(Op op, InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC) {
        this.f16364a = op;
        this.f16365b = interfaceExecutorServiceC1504jC;
    }

    public final void a(Dw dw) {
        Op op = this.f16364a;
        Objects.requireNonNull(op);
        CallableC1419he callableC1419he = new CallableC1419he(op, 4);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f16365b;
        Cw.h2(((IB) interfaceExecutorServiceC1504jC).b(callableC1419he), new Qp(dw, 0), interfaceExecutorServiceC1504jC);
    }
}
