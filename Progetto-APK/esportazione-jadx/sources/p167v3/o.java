package p167v3;

import android.content.Context;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.C1523jg;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.C1938rg;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.IJ;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.QJ;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class o implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30675a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f30676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f30677c;

    public o(C1523jg c1523jg, C1938rg c1938rg) {
        this.f30676b = c1523jg;
        this.f30677c = c1938rg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f30675a;
        QJ qj = this.f30677c;
        QJ qj2 = this.f30676b;
        switch (i8) {
            case 0:
                Context contextA = ((C1523jg) qj2).a();
                J7 j8 = Q7.f15777a;
                return new C3194b(contextA, C3099q.f26624d.f26625a.b(), ((C1938rg) qj).a());
            default:
                Context contextA2 = ((C1523jg) qj2).a();
                C0783In c0783In = (C0783In) qj.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new x(contextA2, c0783In, c1936re);
        }
    }

    public o(C1523jg c1523jg, MJ mj) {
        this.f30676b = c1523jg;
        this.f30677c = mj;
    }
}
