package p167v3;

import android.content.Context;
import com.google.android.gms.internal.ads.AbstractC1317fg;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.C1191d8;
import com.google.android.gms.internal.ads.C1437hw;
import com.google.android.gms.internal.ads.C1488ix;
import com.google.android.gms.internal.ads.C1523jg;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.C1938rg;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.H4;
import com.google.android.gms.internal.ads.IJ;
import com.google.android.gms.internal.ads.JJ;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.QJ;
import com.google.android.gms.internal.ads.Zv;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class k implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f30656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f30657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f30658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f30659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f30660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f30661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f30662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f30663h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final QJ f30664i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final QJ f30665j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final QJ f30666k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final QJ f30667l;

    public k(JJ jj, C1523jg c1523jg, MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, C1938rg c1938rg, C1191d8 c1191d8, MJ mj6, MJ mj7, MJ mj8) {
        this.f30656a = jj;
        this.f30657b = c1523jg;
        this.f30658c = mj;
        this.f30659d = mj2;
        this.f30660e = mj3;
        this.f30661f = mj4;
        this.f30662g = mj5;
        this.f30663h = c1938rg;
        this.f30664i = c1191d8;
        this.f30665j = mj6;
        this.f30666k = mj7;
        this.f30667l = mj8;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        AbstractC1317fg abstractC1317fg = (AbstractC1317fg) this.f30656a.zzb();
        Context contextA = ((C1523jg) this.f30657b).a();
        H4 h8 = (H4) this.f30658c.zzb();
        C1437hw c1437hw = (C1437hw) this.f30659d.zzb();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new j(abstractC1317fg, contextA, h8, c1437hw, c1936re, (ScheduledExecutorService) this.f30660e.zzb(), (C0783In) this.f30661f.zzb(), (C1488ix) this.f30662g.zzb(), ((C1938rg) this.f30663h).a(), ((C1191d8) this.f30664i).zzb(), (Zv) this.f30665j.zzb(), (x) this.f30666k.zzb(), (C3194b) this.f30667l.zzb());
    }
}
