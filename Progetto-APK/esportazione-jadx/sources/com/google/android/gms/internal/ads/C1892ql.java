package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ql, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1892ql implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f20607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f20608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f20609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f20610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f20611f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f20612g;

    public C1892ql(IJ ij, IJ ij2, MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, int i8) {
        this.f20606a = i8;
        if (i8 == 4) {
            this.f20607b = ij;
            this.f20608c = ij2;
            this.f20609d = mj;
            this.f20610e = mj3;
            this.f20611f = mj4;
            this.f20612g = mj5;
            return;
        }
        if (i8 != 8) {
            this.f20607b = ij;
            this.f20608c = ij2;
            this.f20609d = mj;
            this.f20610e = mj2;
            this.f20611f = mj4;
            this.f20612g = mj5;
            return;
        }
        this.f20607b = ij;
        this.f20608c = ij2;
        this.f20609d = mj2;
        this.f20610e = mj3;
        this.f20611f = mj4;
        this.f20612g = mj5;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f20606a;
        QJ qj = this.f20612g;
        QJ qj2 = this.f20611f;
        QJ qj3 = this.f20610e;
        QJ qj4 = this.f20609d;
        QJ qj5 = this.f20608c;
        QJ qj6 = this.f20607b;
        switch (i8) {
            case 0:
                AbstractC1317fg abstractC1317fg = (AbstractC1317fg) qj6.zzb();
                C1217dj c1217djA = ((C1578kj) qj5).f19627a.a();
                C2046tk c2046tk = ((C2306yk) qj4).f22049a;
                C1632ll c1632ll = ((C1736nl) qj3).f20194a;
                C0966Vj c0966VjZzb = ((C0837Mh) qj2).zzb();
                C1690mr c1690mr = (C1690mr) qj.zzb();
                C0671Bg c0671Bg = ((C0671Bg) abstractC1317fg).f12432c;
                C1217dj c1217dj = new C1217dj(c1217djA);
                C2053tr c2053tr = null;
                Qr qr = new Qr(null);
                C1889qi c1889qi = new C1889qi(c0966VjZzb, null);
                C0807Kh c0807Kh = new C0807Kh(null);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15926r3)).booleanValue()) {
                    c2053tr = new C2053tr();
                    c2053tr.f21152a = c1690mr;
                }
                Cw.f1(C2046tk.class, c2046tk);
                if (c2053tr == null) {
                    c2053tr = new C2053tr();
                }
                Cw.f1(C1632ll.class, c1632ll);
                InterfaceC2356zi interfaceC2356zi = (InterfaceC2356zi) new C0776Ig(c0671Bg, c0807Kh, c1632ll, new C0621y(4), c2046tk, c1217dj, c2053tr, qr, c1889qi, null, null).f13972h0.zzb();
                Cw.N0(interfaceC2356zi);
                return interfaceC2356zi;
            case 1:
                Context contextA = ((C1523jg) qj6).a();
                p113o3.L lZzb = ((C1472ig) qj5).zzb();
                C1741nq c1741nq = (C1741nq) qj4.zzb();
                C1634ln c1634ln = (C1634ln) qj3.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C1784oh(contextA, lZzb, c1741nq, c1634ln, c1936re, (InterfaceExecutorServiceC1504jC) qj2.zzb(), (ScheduledExecutorService) qj.zzb());
            case 2:
                return new C0951Ui(((C1523jg) qj6).a(), ((C1526jj) qj5).a(), ((C1938rg) qj4).a(), ((C1472ig) qj3).zzb(), (C1273eo) qj2.zzb(), (Uw) qj.zzb());
            case 3:
                return new C1426hl(((C1523jg) qj6).a(), (InterfaceC0715Ef) ((C1167cl) qj5).f18235a.f21780I, C0688Ci.a(((C0688Ci) qj4).f12681a), ((C1938rg) qj3).a(), (EnumC2329z6) qj2.zzb(), (C1637lq) qj.zzb());
            case 4:
                Context contextA2 = ((C1523jg) qj6).a();
                Yv yvA = ((C1526jj) qj5).a();
                C0724Eo c0724EoA = ((C0739Fo) qj4).zzb();
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                return new C0844Mo(contextA2, yvA, c0724EoA, c1936re2, (ScheduledExecutorService) qj3.zzb(), (Up) qj2.zzb(), (Tw) qj.zzb());
            case 5:
                return new C1276er((AbstractC1317fg) qj6.zzb(), ((C1736nl) qj5).f20194a, ((C1578kj) qj4).f19627a.a(), ((C2306yk) qj3).f22049a, (C1690mr) qj2.zzb(), (C2104uq) qj.zzb());
            case 6:
                return new C1276er((AbstractC1317fg) qj6.zzb(), ((C1578kj) qj5).f19627a.a(), ((Sr) qj4).f16539a, ((C2306yk) qj3).f22049a, (C1690mr) qj2.zzb(), (C2104uq) qj.zzb());
            case 7:
                return new C1276er((AbstractC1317fg) qj6.zzb(), ((C1578kj) qj5).f19627a.a(), ((C2306yk) qj4).f22049a, ((C1475ij) qj3).f19315a.f18349d, (C1690mr) qj2.zzb(), (C2104uq) qj.zzb());
            case 8:
                p113o3.L lZzb2 = ((C1472ig) qj6).zzb();
                Context contextA3 = ((C1523jg) qj5).a();
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                return new Hu(lZzb2, contextA3, c1936re3, (ScheduledExecutorService) qj4.zzb(), new Mx(((C1523jg) ((C1793oq) qj3).f20336a).a()), ((C1526jj) qj2).a(), ((C1938rg) qj).a());
            case 9:
                return new C1126bv((Context) qj6.zzb(), (Executor) qj5.zzb(), (AbstractC1317fg) qj4.zzb(), ((C2265xv) qj3).zzb(), (C1074av) qj2.zzb(), new Xv(), ((C1938rg) qj).a());
            case 10:
                return new Jv((Context) qj6.zzb(), (Executor) qj5.zzb(), (AbstractC1317fg) qj4.zzb(), ((C2317yv) qj3).zzb(), (Gv) qj2.zzb(), new Xv(), (Uv) qj.zzb());
            default:
                return new C1127bw((C1172cq) qj6.zzb(), (C1488ix) qj5.zzb(), C0688Ci.a(((C0688Ci) qj4).f12681a), ((C0718Ei) qj3).f13174a.o(), (C1784oh) qj2.zzb(), (Tw) qj.zzb());
        }
    }

    public /* synthetic */ C1892ql(MJ mj, MJ mj2, JJ jj, MJ mj3, MJ mj4, MJ mj5, int i8) {
        this.f20606a = i8;
        this.f20607b = mj;
        this.f20608c = mj2;
        this.f20609d = jj;
        this.f20610e = mj3;
        this.f20611f = mj4;
        this.f20612g = mj5;
    }

    public /* synthetic */ C1892ql(MJ mj, MJ mj2, MJ mj3, IJ ij, MJ mj4, MJ mj5, int i8) {
        this.f20606a = i8;
        this.f20607b = mj;
        this.f20608c = mj2;
        this.f20609d = mj3;
        this.f20610e = ij;
        this.f20611f = mj4;
        this.f20612g = mj5;
    }
}
