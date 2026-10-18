package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Yi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1007Yi implements InterfaceC0779Ij, InterfaceC0674Bj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Ov f17633G;

    public C1007Yi(Ov ov) {
        this.f17633G = ov;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void m(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final void n() {
        Ov ov = this.f17633G;
        C1727nc c1727nc = ov.f15253d0;
        if (c1727nc == null || !c1727nc.f20170a) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (ov.f15253d0.f20171b.isEmpty()) {
            return;
        }
        arrayList.add(ov.f15253d0.f20171b);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void p(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void q(Context context) {
    }
}
