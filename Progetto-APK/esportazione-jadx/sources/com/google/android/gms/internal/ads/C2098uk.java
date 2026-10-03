package com.google.android.gms.internal.ads;

import java.util.Set;
import p021c4.C0621y;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2098uk implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21364a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f21365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f21366c;

    public C2098uk(C0621y c0621y, MJ mj) {
        this.f21366c = c0621y;
        this.f21365b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f21364a;
        QJ qj = this.f21365b;
        switch (i8) {
            case 0:
                Set setZzb = ((NJ) qj).zzb();
                C2046tk c2046tk = (C2046tk) this.f21366c;
                if (c2046tk.f21109p == null) {
                    c2046tk.f21109p = new C1941rj(setZzb);
                }
                C1941rj c1941rj = c2046tk.f21109p;
                Cw.N0(c1941rj);
                return c1941rj;
            default:
                C0872On c0872On = (C0872On) qj.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                Set setC = C0621y.c(c0872On, c1936re);
                Cw.N0(setC);
                return setC;
        }
    }

    public C2098uk(C2046tk c2046tk, NJ nj) {
        this.f21366c = c2046tk;
        this.f21365b = nj;
    }
}
