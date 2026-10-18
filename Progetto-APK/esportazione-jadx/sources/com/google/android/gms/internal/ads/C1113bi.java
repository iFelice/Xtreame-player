package com.google.android.gms.internal.ads;

import android.view.ViewParent;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1113bi implements InterfaceC0659Aj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0715Ef f18064G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0738Fn f18065H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Ov f18066I;

    public C1113bi(InterfaceC0715Ef interfaceC0715Ef, C0738Fn c0738Fn, Ov ov) {
        this.f18064G = interfaceC0715Ef;
        this.f18065H = c0738Fn;
        this.f18066I = ov;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final void zzr() {
        InterfaceC0715Ef interfaceC0715Ef;
        boolean z7;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.fc)).booleanValue() || (interfaceC0715Ef = this.f18064G) == null) {
            return;
        }
        ViewParent parent = interfaceC0715Ef.j().getParent();
        while (true) {
            if (parent == null) {
                z7 = false;
                break;
            } else {
                if (parent.getClass().getName().startsWith("androidx.compose.ui")) {
                    z7 = true;
                    break;
                }
                parent = parent.getParent();
            }
        }
        C0871Om c0871OmA = this.f18065H.a();
        c0871OmA.n("action", "hcp");
        c0871OmA.n("hcp", true != z7 ? "0" : "1");
        c0871OmA.q(this.f18066I);
        c0871OmA.u();
    }
}
