package p113o3;

import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.C0825Lk;
import com.google.android.gms.internal.ads.C1523jg;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.IJ;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.QJ;
import p167v3.C;

/* JADX INFO: loaded from: classes.dex */
public final class D implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f27875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f27876b;

    public D(MJ mj) {
        this.f27875a = 1;
        this.f27876b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f27875a;
        QJ qj = this.f27876b;
        switch (i8) {
            case 0:
                return new C(((C1523jg) qj).a());
            case 1:
                p167v3.D d6 = (p167v3.D) qj.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C0825Lk(d6, c1936re);
            default:
                return new C((C0783In) qj.zzb());
        }
    }

    public /* synthetic */ D(MJ mj, int i8) {
        this.f27875a = i8;
        this.f27876b = mj;
    }
}
