package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2263xt implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f21944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f21945c;

    public /* synthetic */ C2263xt(MJ mj, IJ ij, int i8) {
        this.f21943a = i8;
        this.f21944b = mj;
        this.f21945c = ij;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x02c0  */
    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Object c1194dB;
        int i8 = this.f21943a;
        QJ qj = this.f21945c;
        QJ qj2 = this.f21944b;
        switch (i8) {
            case 0:
                return new Zt((C1951rt) qj2.zzb(), ((Integer) C3099q.f26624d.f26627c.a(Q7.Bb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 1:
                return new Zt(new C1796ot((C1590kv) ((C1848pt) qj2).f20497a.zzb()), ((Integer) C3099q.f26624d.f26627c.a(Q7.Ab)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 2:
                return new Zt(((C2211wt) qj2).zzb(), ((Integer) C3099q.f26624d.f26627c.a(Q7.Hb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 3:
                Context contextA = ((C1523jg) ((C2367zt) qj2).f22227a).a();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new Zt(new C2315yt(contextA, c1936re), ((Integer) C3099q.f26624d.f26627c.a(Q7.zb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 4:
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                return new Zt(new At(c1936re2), ((Integer) C3099q.f26624d.f26627c.a(Q7.yb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 5:
                Gt gt = (Gt) qj2;
                gt.getClass();
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                Ft ft = new Ft(((C1523jg) gt.f13650a).a(), c1936re3);
                Context contextA2 = ((C1523jg) qj).a();
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Ha)).booleanValue()) {
                    p113o3.O o4 = p083k3.l.f25980A.f25983c;
                    if (p113o3.O.b(contextA2)) {
                        int i9 = AbstractC2333zA.f22134I;
                        c1194dB = new C1194dB(ft);
                    } else {
                        int i10 = AbstractC2333zA.f22134I;
                        c1194dB = VA.f16965P;
                    }
                } else {
                    int i11 = AbstractC2333zA.f22134I;
                    c1194dB = VA.f16965P;
                }
                Cw.N0(c1194dB);
                return c1194dB;
            case 6:
                It it = (It) qj2;
                it.getClass();
                C1936re c1936re4 = AbstractC1988se.f20906a;
                Cw.N0(c1936re4);
                return new Zt(new Ht(c1936re4, ((C1526jj) it.f14063a).a()), ((Integer) C3099q.f26624d.f26627c.a(Q7.Lb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 7:
                Nt nt = (Nt) qj2;
                return new Zt(new Mt(((C1523jg) nt.f15096a).a(), (Intent) nt.f15097b.zzb()), ((Integer) C3099q.f26624d.f26627c.a(Q7.cc)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 8:
                Qt qt = (Qt) qj2;
                qt.getClass();
                C1936re c1936re5 = AbstractC1988se.f20906a;
                Cw.N0(c1936re5);
                return new Zt(new Ot(c1936re5, (C1895qo) qt.f16147a.zzb()), ((Integer) C3099q.f26624d.f26627c.a(Q7.wb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 9:
                return new Zt(new St((Nv) ((Tt) qj2).f16752a.zzb()), ((Integer) C3099q.f26624d.f26627c.a(Q7.Mb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 10:
                Yt yt = (Yt) qj2;
                yt.getClass();
                C1936re c1936re6 = AbstractC1988se.f20906a;
                Cw.N0(c1936re6);
                return new Zt(new Xt(c1936re6, ((C1523jg) yt.f17666a).a(), (Set) yt.f17667b.zzb()), ((Integer) C3099q.f26624d.f26627c.a(Q7.ub)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 11:
                return new Zt(((C1227du) qj2).zzb(), ((Integer) C3099q.f26624d.f26627c.a(Q7.sb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 12:
                C1693mu c1693mu = (C1693mu) qj2;
                C0890Qd c0890Qd = (C0890Qd) c1693mu.f20016a.zzb();
                C1936re c1936re7 = AbstractC1988se.f20906a;
                Cw.N0(c1936re7);
                return new Zt(new C1589ku(c0890Qd, c1936re7, ((C1523jg) c1693mu.f20017b).a()), ((Integer) C3099q.f26624d.f26627c.a(Q7.rb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 13:
                return new Zt(((C1849pu) qj2).zzb(), ((Integer) C3099q.f26624d.f26627c.a(Q7.qb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 14:
                C2004su c2004su = (C2004su) qj2;
                c2004su.getClass();
                C1936re c1936re8 = AbstractC1988se.f20906a;
                Cw.N0(c1936re8);
                return new Zt(new C1952ru(((C1523jg) c2004su.f21011a).a(), c1936re8), ((Integer) C3099q.f26624d.f26627c.a(Q7.pb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 15:
                return new Zt((C1951rt) qj2.zzb(), ((Integer) C3099q.f26624d.f26627c.a(Q7.ob)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 16:
                Fu fu = (Fu) qj2;
                fu.getClass();
                C1936re c1936re9 = AbstractC1988se.f20906a;
                Cw.N0(c1936re9);
                return new Zt(new Eu(((C1523jg) fu.f13436a).a(), c1936re9), ((Integer) C3099q.f26624d.f26627c.a(Q7.nb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 17:
                return new C2366zs(1, (String) qj2.zzb(), (String) qj.zzb());
            case 18:
                ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) qj2.zzb();
                ((C1523jg) qj).a();
                return new C2002ss(scheduledExecutorService);
            case 19:
                return new C1539jw(((C1523jg) qj2).a(), ((C1990sg) qj).zzb());
            case 20:
                C1936re c1936re10 = AbstractC1988se.f20906a;
                Cw.N0(c1936re10);
                return new Kw(c1936re10, (ScheduledExecutorService) qj2.zzb(), new C0720Ek(((NJ) ((Mw) qj).f14831a).zzb()));
            default:
                return new Nw(((C1523jg) qj2).a(), (Tw) qj.zzb());
        }
    }

    public /* synthetic */ C2263xt(MJ mj, MJ mj2, int i8) {
        this.f21943a = i8;
        this.f21944b = mj;
        this.f21945c = mj2;
    }
}
