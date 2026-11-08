package com.google.android.gms.internal.ads;

import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Wt implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17337a;

    public Wt() {
        this.f17337a = 1;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        switch (this.f17337a) {
            case 0:
                return 52;
            case 1:
                return 47;
            default:
                return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        switch (this.f17337a) {
            case 0:
                return Cw.N1(new Es(2));
            case 1:
                C1298fC c1298fCN1 = Cw.N1(null);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15920q5)).booleanValue()) {
                    c1298fCN1 = Cw.N1(null);
                }
                C1298fC c1298fCN2 = Cw.N1(null);
                PA paU = AbstractC2073uA.u(new D4.b[]{c1298fCN1, c1298fCN2});
                Ap ap = new Ap(c1298fCN1, c1298fCN2, 1);
                C1936re c1936re = AbstractC1988se.f20906a;
                WB wb = new WB(paU, true, false);
                wb.f17176V = new UB(wb, ap, c1936re);
                wb.x();
                return wb;
            default:
                return Cw.N1(new Es(5));
        }
    }

    public /* synthetic */ Wt(int i8) {
        this.f17337a = i8;
    }
}
