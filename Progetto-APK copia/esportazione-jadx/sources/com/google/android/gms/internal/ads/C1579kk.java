package com.google.android.gms.internal.ads;

import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1579kk implements InterfaceC1022Zj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f19628G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f19629H;

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final synchronized void C(Tv tv) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15779a1)).booleanValue()) {
            try {
                Qv qv = (Qv) tv.f16755b.f21883I;
                this.f19628G = qv.f16151c;
                this.f19629H = qv.f16152d;
            } catch (NullPointerException unused) {
            }
        }
    }

    public final synchronized int a() {
        return this.f19628G;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
    }
}
