package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.api.Service;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONException;
import org.json.JSONObject;
import p021c4.C0621y;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Mn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0843Mn implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f14796b;

    public C0843Mn(C1523jg c1523jg) {
        this.f14795a = 29;
        this.f14796b = c1523jg;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:52:0x01be  */
    /* JADX WARN: Code duplicated, block: B:84:0x01ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        String strValueOf;
        p090l3.L l4;
        Object c1194dB;
        int i8 = this.f14795a;
        QJ qj = this.f14796b;
        switch (i8) {
            case 0:
                C0872On c0872On = (C0872On) qj.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                Set setC = C0621y.c(c0872On, c1936re);
                Cw.N0(setC);
                return setC;
            case 1:
                C0872On c0872On2 = (C0872On) qj.zzb();
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                Set setC2 = C0621y.c(c0872On2, c1936re2);
                Cw.N0(setC2);
                return setC2;
            case 2:
                C0872On c0872On3 = (C0872On) qj.zzb();
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                Set setC3 = C0621y.c(c0872On3, c1936re3);
                Cw.N0(setC3);
                return setC3;
            case 3:
                C0872On c0872On4 = (C0872On) qj.zzb();
                C1936re c1936re4 = AbstractC1988se.f20906a;
                Cw.N0(c1936re4);
                Set setC4 = C0621y.c(c0872On4, c1936re4);
                Cw.N0(setC4);
                return setC4;
            case 4:
                C0872On c0872On5 = (C0872On) qj.zzb();
                C1936re c1936re5 = AbstractC1988se.f20906a;
                Cw.N0(c1936re5);
                Set setC5 = C0621y.c(c0872On5, c1936re5);
                Cw.N0(setC5);
                return setC5;
            case 5:
                C0872On c0872On6 = (C0872On) qj.zzb();
                C1936re c1936re6 = AbstractC1988se.f20906a;
                Cw.N0(c1936re6);
                Set setC6 = C0621y.c(c0872On6, c1936re6);
                Cw.N0(setC6);
                return setC6;
            case 6:
                C0872On c0872On7 = (C0872On) qj.zzb();
                C1936re c1936re7 = AbstractC1988se.f20906a;
                Cw.N0(c1936re7);
                Set setC7 = C0621y.c(c0872On7, c1936re7);
                Cw.N0(setC7);
                return setC7;
            case 7:
                C1480io c1480io = (C1480io) qj.zzb();
                C1936re c1936re8 = AbstractC1988se.f20906a;
                Cw.N0(c1936re8);
                return new C0825Lk(c1480io, c1936re8);
            case 8:
                C1480io c1480io2 = (C1480io) qj.zzb();
                C1936re c1936re9 = AbstractC1988se.f20906a;
                Cw.N0(c1936re9);
                return new C0825Lk(c1480io2, c1936re9);
            case 9:
                C1480io c1480io3 = (C1480io) qj.zzb();
                C1936re c1936re10 = AbstractC1988se.f20906a;
                Cw.N0(c1936re10);
                return new C0825Lk(c1480io3, c1936re10);
            case 10:
                return new C1377go(((C1523jg) qj).a());
            case 11:
                return new C0664Ao(((C1523jg) qj).a());
            case 12:
                C1068ap c1068ap = (C1068ap) qj;
                Yo yo = new Yo(((C1523jg) c1068ap.f17972a).a(), (C0890Qd) c1068ap.f17973b.zzb());
                C1936re c1936re11 = AbstractC1988se.f20906a;
                Cw.N0(c1936re11);
                return new C0825Lk(yo, c1936re11);
            case 13:
                Yv yvA = ((C1526jj) qj).a();
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15628G6)).booleanValue()) {
                    p090l3.b1 b1Var = yvA.f17677d;
                    String str = b1Var.f26540d0;
                    if (TextUtils.isEmpty(str)) {
                        l4 = b1Var.f26535Y;
                        if (l4 != null) {
                            strValueOf = new JSONObject(l4.f26490G).getString("request_id");
                            if (TextUtils.isEmpty(strValueOf)) {
                                strValueOf = String.valueOf(C3097p.f26618f.f26623e.nextInt() & com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
                            }
                        } else {
                            strValueOf = String.valueOf(C3097p.f26618f.f26623e.nextInt() & com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
                        }
                    } else {
                        try {
                            strValueOf = new JSONObject(str).getString("request_id");
                            if (TextUtils.isEmpty(strValueOf)) {
                                l4 = b1Var.f26535Y;
                                if (l4 != null) {
                                    try {
                                        strValueOf = new JSONObject(l4.f26490G).getString("request_id");
                                        if (TextUtils.isEmpty(strValueOf)) {
                                            strValueOf = String.valueOf(C3097p.f26618f.f26623e.nextInt() & com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
                                        }
                                    } catch (JSONException unused) {
                                    }
                                } else {
                                    strValueOf = String.valueOf(C3097p.f26618f.f26623e.nextInt() & com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
                                }
                            }
                        } catch (JSONException unused2) {
                        }
                    }
                } else {
                    strValueOf = String.valueOf(C3097p.f26618f.f26623e.nextInt() & com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
                }
                Cw.N0(strValueOf);
                return strValueOf;
            case 14:
                Tp tp = (Tp) qj.zzb();
                C1936re c1936re12 = AbstractC1988se.f20906a;
                Cw.N0(c1936re12);
                return new C0825Lk(tp, c1936re12);
            case 15:
                Tp tp2 = (Tp) qj.zzb();
                C1936re c1936re13 = AbstractC1988se.f20906a;
                Cw.N0(c1936re13);
                return new C0825Lk(tp2, c1936re13);
            case 16:
                Zp zp = (Zp) qj;
                Up up = (Up) zp.f17802a.zzb();
                Vp vp = (Vp) zp.f17803b;
                Yp yp = new Yp(up, new F5.g(((Sp) vp.f17118a).zzb(), ((C1472ig) vp.f17119b).zzb()));
                C1936re c1936re14 = AbstractC1988se.f20906a;
                Cw.N0(c1936re14);
                return new C0825Lk(yp, c1936re14);
            case 17:
                Context contextA = ((C1523jg) qj).a();
                C1936re c1936re15 = AbstractC1988se.f20906a;
                Cw.N0(c1936re15);
                return new C1172cq(contextA, c1936re15);
            case 18:
                return new C1741nq(((C1523jg) qj).a());
            case 19:
                return new Wr((C1894qn) qj.zzb());
            case 20:
                return new C1433hs((C0738Fn) qj.zzb());
            case 21:
                return new C2002ss(((C1523jg) qj).a(), 0);
            case 22:
                return new C2002ss((Set) qj.zzb(), 1);
            case 23:
                return new Nv((P3.a) qj.zzb());
            case 24:
                C1936re c1936re16 = AbstractC1988se.f20906a;
                Cw.N0(c1936re16);
                C2003st c2003st = new C2003st(c1936re16);
                ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) qj.zzb();
                J7 j8 = Q7.f15680N3;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    Zt zt = new Zt(c2003st, ((Integer) c3099q.f26627c.a(Q7.f15688O3)).intValue(), scheduledExecutorService);
                    int i9 = AbstractC2333zA.f22134I;
                    c1194dB = new C1194dB(zt);
                } else {
                    int i10 = AbstractC2333zA.f22134I;
                    c1194dB = VA.f16965P;
                }
                Cw.N0(c1194dB);
                return c1194dB;
            case 25:
                C1936re c1936re17 = AbstractC1988se.f20906a;
                Cw.N0(c1936re17);
                return new Zt(new Dt(c1936re17), ((Integer) C3099q.f26624d.f26627c.a(Q7.xb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                C1936re c1936re18 = AbstractC1988se.f20906a;
                Cw.N0(c1936re18);
                return new Zt(new Rt(c1936re18), ((Integer) C3099q.f26624d.f26627c.a(Q7.vb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 27:
                return new C2002ss(((C1320fj) qj).f18791a.f18348c, 2);
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return new C1901qu((C2369zv) qj.zzb());
            default:
                C1936re c1936re19 = AbstractC1988se.f20906a;
                Cw.N0(c1936re19);
                ((C1523jg) qj).a();
                return new Mu(c1936re19);
        }
    }

    public /* synthetic */ C0843Mn(MJ mj, int i8) {
        this.f14795a = i8;
        this.f14796b = mj;
    }

    public /* synthetic */ C0843Mn(MJ mj, int i8, int i9) {
        this.f14795a = i8;
        this.f14796b = mj;
    }

    public /* synthetic */ C0843Mn(MJ mj, int i8, AbstractC2090uc abstractC2090uc) {
        this.f14795a = i8;
        this.f14796b = mj;
    }

    public /* synthetic */ C0843Mn(MJ mj, int i8, Object obj) {
        this.f14795a = i8;
        this.f14796b = mj;
    }
}
