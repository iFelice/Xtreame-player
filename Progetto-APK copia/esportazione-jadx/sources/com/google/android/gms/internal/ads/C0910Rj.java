package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Rj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0910Rj extends AbstractC1666mI implements InterfaceC0659Aj, InterfaceC0868Oj {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Ov f16335H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AtomicBoolean f16336I;

    public C0910Rj(Set set, Ov ov) {
        super(set);
        this.f16336I = new AtomicBoolean();
        this.f16335H = ov;
    }

    public final void a1() {
        p090l3.e1 e1Var;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15847h7)).booleanValue() && this.f16336I.compareAndSet(false, true) && (e1Var = this.f16335H.f15255e0) != null && e1Var.f26565G == 3) {
            Z0(new C0864Of(this, 4));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0868Oj
    public final void zzg() {
        if (this.f16335H.f15248b == 1) {
            a1();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final void zzr() {
        int i8 = this.f16335H.f15248b;
        if (i8 == 2 || i8 == 5 || i8 == 4 || i8 == 6 || i8 == 7) {
            a1();
        }
    }
}
