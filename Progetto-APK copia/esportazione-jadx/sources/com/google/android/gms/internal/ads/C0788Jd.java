package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.api.Service;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Jd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0788Jd implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f14171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f14172c;

    public C0788Jd(MJ mj, MJ mj2) {
        this.f14170a = 14;
        this.f14171b = mj;
        this.f14172c = mj2;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        JSONObject jSONObjectZzp;
        int i8 = this.f14170a;
        QJ qj = this.f14172c;
        QJ qj2 = this.f14171b;
        switch (i8) {
            case 0:
                return new SharedPreferencesOnSharedPreferenceChangeListenerC0773Id((Context) qj2.zzb(), (p113o3.K) qj.zzb());
            case 1:
                C0833Md c0833Md = (C0833Md) qj;
                return new C0946Ud((Context) qj2.zzb(), new C0818Ld((P3.a) c0833Md.f14711a.zzb(), (C0803Kd) c0833Md.f14712b.zzb()));
            case 2:
                return new C1836ph(C0688Ci.a(((C0688Ci) qj2).f12681a), ((C1990sg) qj).zzb());
            case 3:
                return new C2303yh(((C1523jg) qj2).a(), (E5) qj.zzb());
            case 4:
                return new C2251xh(((E5) qj2.zzb()).f12938c, (C0971Wa) qj.zzb(), C0799Jo.a());
            case 5:
                C0672Bh c0672Bh = (C0672Bh) qj2.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                Set setEmptySet = ((JSONObject) qj.zzb()) == null ? Collections.emptySet() : Collections.singleton(new C0825Lk(c0672Bh, c1936re));
                Cw.N0(setEmptySet);
                return setEmptySet;
            case 6:
                C0672Bh c0672Bh2 = (C0672Bh) qj2.zzb();
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                Set setEmptySet2 = ((JSONObject) qj.zzb()) == null ? Collections.emptySet() : Collections.singleton(new C0825Lk(c0672Bh2, c1936re2));
                Cw.N0(setEmptySet2);
                return setEmptySet2;
            case 7:
                C0672Bh c0672Bh3 = (C0672Bh) qj2.zzb();
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                Set setEmptySet3 = ((JSONObject) qj.zzb()) == null ? Collections.emptySet() : Collections.singleton(new C0825Lk(c0672Bh3, c1936re3));
                Cw.N0(setEmptySet3);
                return setEmptySet3;
            case 8:
                C0672Bh c0672Bh4 = (C0672Bh) qj2.zzb();
                C1936re c1936re4 = AbstractC1988se.f20906a;
                Cw.N0(c1936re4);
                Set setEmptySet4 = ((JSONObject) qj.zzb()) == null ? Collections.emptySet() : Collections.singleton(new C0825Lk(c0672Bh4, c1936re4));
                Cw.N0(setEmptySet4);
                return setEmptySet4;
            case 9:
                return new Zt(((C2314ys) qj2).zzb(), ((Integer) C3099q.f26624d.f26627c.a(Q7.Ib)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 10:
                C1536jt c1536jt = (C1536jt) qj2;
                c1536jt.getClass();
                Cw.N0(AbstractC1988se.f20906a);
                return new Zt(new C1434ht(((C1526jj) c1536jt.f19519a).a()), ((Integer) C3099q.f26624d.f26627c.a(Q7.Nb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 11:
                return new Zt(((Lt) qj2).zzb(), ((Integer) C3099q.f26624d.f26627c.a(Q7.Jb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 12:
                return new C0838Mi((P3.a) qj2.zzb(), (C1315fe) qj.zzb());
            case 13:
                return new C0867Oi((C0895Qi) qj2.zzb(), ((C1526jj) qj).a());
            case 14:
                return new p083k3.b((Context) qj2.zzb(), (InterfaceC0758Hd) qj.zzb());
            case 15:
                return new C0825Lk((C1269ek) qj2.zzb(), (Executor) qj.zzb());
            case 16:
                return new C0825Lk((C1269ek) qj2.zzb(), (Executor) qj.zzb());
            case 17:
                return new C0825Lk((C1269ek) qj2.zzb(), (Executor) qj.zzb());
            case 18:
                return new C0825Lk((C1269ek) qj2.zzb(), (Executor) qj.zzb());
            case 19:
                return new C0825Lk((C1269ek) qj2.zzb(), (Executor) qj.zzb());
            case 20:
                return new C0825Lk((C1269ek) qj2.zzb(), (Executor) qj.zzb());
            case 21:
                return new C0825Lk((C1269ek) qj2.zzb(), (Executor) qj.zzb());
            case 22:
                return new C0825Lk((C1269ek) qj2.zzb(), (Executor) qj.zzb());
            case 23:
                return new C1007Yi(C0688Ci.a(((C0688Ci) qj).f12681a));
            case 24:
                return new C0910Rj(((NJ) qj2).zzb(), C0688Ci.a(((C0688Ci) qj).f12681a));
            case 25:
                return new C0897Qk(C0688Ci.a(((C0688Ci) qj2).f12681a), (C1488ix) qj.zzb());
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return new C1219dl((C0896Qj) qj2.zzb(), (C0780Ik) qj.zzb());
            case 27:
                return new C0840Mk((Context) qj2.zzb(), new HashSet(), C0688Ci.a(((C0688Ci) qj).f12681a));
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                Ov ovA = C0688Ci.a(((C0688Ci) qj2).f12681a);
                C2218x c2218x = ((C2099ul) qj).f21367a;
                switch (c2218x.f21778G) {
                    case 23:
                        jSONObjectZzp = (JSONObject) c2218x.f21779H;
                        break;
                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                        jSONObjectZzp = ((InterfaceViewOnClickListenerC1220dm) c2218x.f21779H).zzp();
                        break;
                    default:
                        jSONObjectZzp = null;
                        break;
                }
                Cw.N0(jSONObjectZzp);
                return new C0796Jl(ovA, jSONObjectZzp);
            default:
                return new ViewOnClickListenerC0982Wl(C2255xl.a(((C2255xl) qj2).f21922a), (P3.a) qj.zzb());
        }
    }

    public /* synthetic */ C0788Jd(MJ mj, MJ mj2, int i8) {
        this.f14170a = i8;
        this.f14171b = mj;
        this.f14172c = mj2;
    }

    public /* synthetic */ C0788Jd(MJ mj, MJ mj2, int i8, int i9) {
        this.f14170a = i8;
        this.f14171b = mj;
        this.f14172c = mj2;
    }

    public /* synthetic */ C0788Jd(MJ mj, MJ mj2, int i8, Object obj) {
        this.f14170a = i8;
        this.f14171b = mj;
        this.f14172c = mj2;
    }
}
