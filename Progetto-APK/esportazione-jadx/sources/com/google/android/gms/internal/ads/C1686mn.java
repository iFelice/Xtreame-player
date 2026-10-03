package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1686mn implements InterfaceC0674Bj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0715Ef f19995G;

    public C1686mn(InterfaceC0715Ef interfaceC0715Ef) {
        this.f19995G = interfaceC0715Ef;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void m(Context context) {
        InterfaceC0715Ef interfaceC0715Ef = this.f19995G;
        if (interfaceC0715Ef != null) {
            interfaceC0715Ef.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void p(Context context) {
        InterfaceC0715Ef interfaceC0715Ef = this.f19995G;
        if (interfaceC0715Ef != null) {
            interfaceC0715Ef.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void q(Context context) {
        InterfaceC0715Ef interfaceC0715Ef = this.f19995G;
        if (interfaceC0715Ef != null) {
            interfaceC0715Ef.onResume();
        }
    }
}
