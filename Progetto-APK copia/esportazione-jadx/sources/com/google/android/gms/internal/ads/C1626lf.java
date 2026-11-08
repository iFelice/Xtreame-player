package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1626lf extends AbstractC1522jf {
    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final void l() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final boolean r(String str) {
        String strA = p120p3.d.a(str, "MD5");
        InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) this.f19473I.get();
        if (interfaceC0863Oe != null && strA != null) {
            interfaceC0863Oe.h(strA, this);
        }
        p120p3.h.g("VideoStreamNoopCache is doing nothing.");
        m(str, strA, "noop", "Noop cache is a noop.");
        return false;
    }
}
