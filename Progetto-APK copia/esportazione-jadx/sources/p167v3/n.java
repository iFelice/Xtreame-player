package p167v3;

import C2.C0091g;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C0829Lo;
import com.google.android.gms.internal.ads.C0939Tk;
import com.google.android.gms.internal.ads.C1062aj;
import com.google.android.gms.internal.ads.C1114bj;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.Fw;
import com.google.android.gms.internal.ads.IJ;
import com.google.android.gms.internal.ads.Iw;
import com.google.android.gms.internal.ads.Kw;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.QJ;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class n implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f30671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f30672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f30673c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f30674d;

    public n(MJ mj, MJ mj2, C1114bj c1114bj, MJ mj3) {
        this.f30671a = mj;
        this.f30672b = mj2;
        this.f30673c = c1114bj;
        this.f30674d = mj3;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Kw kw = (Kw) this.f30671a.zzb();
        q qVar = (q) this.f30672b;
        qVar.getClass();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        p pVar = new p(c1936re, ((C0829Lo) qVar.f30680a).zzb());
        C1062aj c1062ajZzb = ((C1114bj) this.f30673c).zzb();
        C0939Tk c0939Tk = (C0939Tk) this.f30674d.zzb();
        Fw fwC = kw.b(c1062ajZzb.a(), Iw.GENERATE_SIGNALS).m(pVar).q(((Integer) C3099q.f26624d.f26627c.a(Q7.f15801c5)).intValue(), TimeUnit.SECONDS).c();
        Cw.h2(fwC, new C0091g(c0939Tk, 12), c1936re);
        return fwC;
    }
}
