package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.em, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1271em implements InterfaceC0659Aj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0781Il f18582G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0811Kl f18583H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Executor f18584I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Executor f18585J;

    public C1271em(C0781Il c0781Il, C0796Jl c0796Jl, Executor executor, C1936re c1936re) {
        this.f18582G = c0781Il;
        this.f18583H = c0796Jl;
        this.f18584I = executor;
        this.f18585J = c1936re;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final void zzr() {
        D4.b bVar;
        if (this.f18583H.c()) {
            C0781Il c0781Il = this.f18582G;
            C1689mq c1689mqT = c0781Il.T();
            if (c1689mqT == null) {
                synchronized (c0781Il) {
                    bVar = c0781Il.f14033m;
                }
                if (bVar != null && ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15697P4)).booleanValue()) {
                    D4.b bVarV = c0781Il.V();
                    C2040te c2040teO = c0781Il.O();
                    if (bVarV == null || c2040teO == null) {
                        return;
                    }
                    Cw.h2(new SB(AbstractC2073uA.u(new D4.b[]{bVarV, c2040teO}), false), new C0864Of(this, 11), this.f18585J);
                    return;
                }
            }
            if (c1689mqT != null) {
                InterfaceC0715Ef interfaceC0715EfQ = c0781Il.Q();
                InterfaceC0715Ef interfaceC0715EfR = c0781Il.R();
                if (interfaceC0715EfQ == null) {
                    interfaceC0715EfQ = interfaceC0715EfR != null ? interfaceC0715EfR : null;
                }
                if (interfaceC0715EfQ != null) {
                    this.f18584I.execute(new RunnableC0850Nf(interfaceC0715EfQ, 4));
                }
            }
        }
    }
}
