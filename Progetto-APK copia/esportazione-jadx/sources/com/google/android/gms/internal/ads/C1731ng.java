package com.google.android.gms.internal.ads;

import com.google.api.Service;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ng, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1731ng implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f20183b;

    public C1731ng(MJ mj) {
        this.f20182a = 24;
        this.f20183b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Object c1194dB;
        int i8 = this.f20182a;
        int i9 = 1;
        int i10 = 0;
        QJ qj = this.f20183b;
        switch (i8) {
            case 0:
                return new H4((p083k3.f) qj.zzb());
            case 1:
                C1325fo c1325fo = (C1325fo) qj.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                Set setSingleton = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15956v1)).booleanValue() ? Collections.singleton(new C0825Lk(c1325fo, c1936re)) : Collections.emptySet();
                Cw.N0(setSingleton);
                return setSingleton;
            case 2:
                return new Wq((C1894qn) qj.zzb());
            case 3:
                return new Ar((C1894qn) qj.zzb());
            case 4:
                CallableC0913Rm callableC0913Rm = (CallableC0913Rm) qj.zzb();
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                return new C1437hw(callableC0913Rm, c1936re2);
            case 5:
                return new C1439hy(((C1523jg) qj).a(), p083k3.l.f25980A.f25998r.j());
            case 6:
                return new p113o3.v(((C1523jg) qj).a());
            case 7:
                return new p120p3.k((String) qj.zzb());
            case 8:
                return new C1318fh(((C1472ig) qj).zzb(), 0);
            case 9:
                return new C1318fh(((C1472ig) qj).zzb(), 1);
            case 10:
                return new C1370gh((C1895qo) qj.zzb(), 0);
            case 11:
                return new C1473ih(new Mx(((C1523jg) ((C1793oq) qj).f20336a).a()), i10);
            case 12:
                return new C1524jh((C1895qo) qj.zzb(), 0);
            case 13:
                return new C1628lh(((C1523jg) qj).a());
            case 14:
                return new C1473ih((Nv) qj.zzb(), i9);
            case 15:
                C0848Nd c0848NdB = C0848Nd.b(((C1523jg) ((C1005Yg) qj).f17626a).a());
                return new C1524jh(new C0818Ld((P3.a) c0848NdB.f14911a, (C0803Kd) ((MJ) c0848NdB.f14917g).zzb()), 1);
            case 16:
                return new C1473ih();
            case 17:
                return new C1370gh((C1895qo) qj.zzb(), 1);
            case 18:
                return new C0971Wa(((C0887Qa) qj.zzb()).f16028a);
            case 19:
                try {
                    return new JSONObject(C0688Ci.a(((C0688Ci) qj).f12681a).f15294z);
                } catch (JSONException unused) {
                    return null;
                }
            case 20:
                return new C0825Lk(((C1164ci) qj).zzb(), AbstractC1988se.f20906a);
            case 21:
                C1423hi c1423hi = (C1423hi) qj;
                C1371gi c1371gi = new C1371gi((InterfaceC0715Ef) ((C1061ai) c1423hi.f19122a).f17908a.f21885K, (Executor) c1423hi.f19123b.zzb());
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Qb)).booleanValue()) {
                    C0825Lk c0825Lk = new C0825Lk(c1371gi, AbstractC1988se.f20906a);
                    int i11 = AbstractC2333zA.f22134I;
                    c1194dB = new C1194dB(c0825Lk);
                } else {
                    int i12 = AbstractC2333zA.f22134I;
                    c1194dB = VA.f16965P;
                }
                Cw.N0(c1194dB);
                return c1194dB;
            case 22:
                return new C0825Lk((C1733ni) qj.zzb(), AbstractC1988se.f20910e);
            case 23:
                Set setSingleton2 = Collections.singleton(new C0825Lk((C1785oi) qj.zzb(), AbstractC1988se.f20911f));
                Cw.N0(setSingleton2);
                return setSingleton2;
            case 24:
                C2096ui c2096ui = (C2096ui) qj.zzb();
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                return new C0825Lk(c2096ui, c1936re3);
            case 25:
                return new C0825Lk(new C0908Rh(((C1992si) qj).f20922a.f20602a, i10), AbstractC1988se.f20911f);
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                C1020Zh c1020Zh = (C1020Zh) qj;
                return new C2096ui(new C0862Od(((C1523jg) c1020Zh.f17787a).a(), ((C1526jj) c1020Zh.f17788b).a().f17679f));
            case 27:
                return new C2304yi(((KJ) qj).zzb());
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return new C0748Gi((C0734Fj) qj.zzb());
            default:
                C0910Rj c0910Rj = (C0910Rj) qj.zzb();
                C1936re c1936re4 = AbstractC1988se.f20906a;
                Cw.N0(c1936re4);
                return new C0825Lk(c0910Rj, c1936re4);
        }
    }

    public /* synthetic */ C1731ng(MJ mj, int i8) {
        this.f20182a = i8;
        this.f20183b = mj;
    }

    public /* synthetic */ C1731ng(MJ mj, int i8, int i9) {
        this.f20182a = i8;
        this.f20183b = mj;
    }

    public /* synthetic */ C1731ng(MJ mj, int i8, Object obj) {
        this.f20182a = i8;
        this.f20183b = mj;
    }
}
