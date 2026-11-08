package p167v3;

import J2.t;
import P3.a;
import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.internal.ads.AbstractC1216di;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.Aq;
import com.google.android.gms.internal.ads.BinderC0767Hm;
import com.google.android.gms.internal.ads.BinderC0782Im;
import com.google.android.gms.internal.ads.BinderC2258xo;
import com.google.android.gms.internal.ads.C0688Ci;
import com.google.android.gms.internal.ads.C0693Cn;
import com.google.android.gms.internal.ads.C0703Di;
import com.google.android.gms.internal.ads.C0721El;
import com.google.android.gms.internal.ads.C0728Fd;
import com.google.android.gms.internal.ads.C0743Gd;
import com.google.android.gms.internal.ads.C0768Hn;
import com.google.android.gms.internal.ads.C0781Il;
import com.google.android.gms.internal.ads.C0796Jl;
import com.google.android.gms.internal.ads.C0803Kd;
import com.google.android.gms.internal.ads.C0825Lk;
import com.google.android.gms.internal.ads.C0840Mk;
import com.google.android.gms.internal.ads.C0851Ng;
import com.google.android.gms.internal.ads.C0854Nj;
import com.google.android.gms.internal.ads.C0884Pl;
import com.google.android.gms.internal.ads.C0893Qg;
import com.google.android.gms.internal.ads.C0923Si;
import com.google.android.gms.internal.ads.C0965Vi;
import com.google.android.gms.internal.ads.C1242e8;
import com.google.android.gms.internal.ads.C1271em;
import com.google.android.gms.internal.ads.C1315fe;
import com.google.android.gms.internal.ads.C1319fi;
import com.google.android.gms.internal.ads.C1472ig;
import com.google.android.gms.internal.ads.C1480io;
import com.google.android.gms.internal.ads.C1483ir;
import com.google.android.gms.internal.ads.C1523jg;
import com.google.android.gms.internal.ads.C1526jj;
import com.google.android.gms.internal.ads.C1575kg;
import com.google.android.gms.internal.ads.C1625le;
import com.google.android.gms.internal.ads.C1729ne;
import com.google.android.gms.internal.ads.C1781oe;
import com.google.android.gms.internal.ads.C1785oi;
import com.google.android.gms.internal.ads.C1895qo;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.C1938rg;
import com.google.android.gms.internal.ads.C1990sg;
import com.google.android.gms.internal.ads.C1998so;
import com.google.android.gms.internal.ads.C2094ug;
import com.google.android.gms.internal.ads.C2105ur;
import com.google.android.gms.internal.ads.C2149vj;
import com.google.android.gms.internal.ads.C2151vl;
import com.google.android.gms.internal.ads.C2173w6;
import com.google.android.gms.internal.ads.C2201wj;
import com.google.android.gms.internal.ads.C2205wn;
import com.google.android.gms.internal.ads.C2253xj;
import com.google.android.gms.internal.ads.C2357zj;
import com.google.android.gms.internal.ads.C7;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.D7;
import com.google.android.gms.internal.ads.E5;
import com.google.android.gms.internal.ads.Fq;
import com.google.android.gms.internal.ads.IJ;
import com.google.android.gms.internal.ads.KJ;
import com.google.android.gms.internal.ads.Lr;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.Mq;
import com.google.android.gms.internal.ads.NJ;
import com.google.android.gms.internal.ads.Ov;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.QJ;
import com.google.android.gms.internal.ads.Rv;
import com.google.android.gms.internal.ads.Sq;
import com.google.android.gms.internal.ads.Ss;
import com.google.android.gms.internal.ads.Uw;
import com.google.android.gms.internal.ads.Ws;
import com.google.api.Service;
import java.lang.ref.WeakReference;
import java.math.BigInteger;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
import p083k3.l;
import p090l3.C3099q;
import p113o3.K;
import p113o3.O;

/* JADX INFO: loaded from: classes.dex */
public final class E implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f30580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f30581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f30582d;

    public E(C1523jg c1523jg, C1575kg c1575kg, MJ mj) {
        this.f30579a = 20;
        this.f30580b = c1523jg;
        this.f30581c = c1575kg;
        this.f30582d = mj;
    }

    private final C1315fe a() {
        String string;
        a aVar = (a) this.f30580b.zzb();
        C1781oe c1781oeZzb = ((C1990sg) this.f30581c).zzb();
        String str = ((C1526jj) this.f30582d).a().f17679f;
        C1729ne c1729ne = c1781oeZzb.f20295c;
        synchronized (c1729ne) {
            string = c1729ne.f20173a.toString();
            c1729ne.f20173a = c1729ne.f20173a.add(BigInteger.ONE);
            c1729ne.f20174b = string;
        }
        return new C1315fe(aVar, c1781oeZzb, string, str);
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Set setEmptySet;
        int i8 = 1;
        switch (this.f30579a) {
            case 0:
                return new D((C0693Cn) this.f30580b.zzb(), (C) this.f30581c.zzb(), (String) this.f30582d.zzb());
            case 1:
                ((C1523jg) this.f30580b).a();
                ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f30581c.zzb();
                return new C1242e8(scheduledExecutorService);
            case 2:
                K k8 = (K) this.f30581c.zzb();
                return new C0803Kd(k8);
            case 3:
                p120p3.a aVarA = ((C1938rg) this.f30580b).a();
                JSONObject jSONObject = (JSONObject) this.f30581c.zzb();
                String str = (String) this.f30582d.zzb();
                boolean zEquals = "native".equals(str);
                O o4 = l.f25980A.f25983c;
                return new E5(UUID.randomUUID().toString(), aVarA, str, jSONObject, zEquals);
            case 4:
                return ((C1526jj) this.f30580b).a().a() != null ? ((Mq) this.f30581c).zzb() : ((Fq) this.f30582d).zzb();
            case 5:
                return true == ((C1319fi) this.f30580b).zzb().booleanValue() ? ((C1483ir) this.f30581c).zzb() : ((Lr) this.f30582d).zzb();
            case 6:
                return new C1785oi(C0688Ci.a(((C0688Ci) this.f30580b).f12681a), (C2357zj) this.f30581c.zzb(), (C0854Nj) this.f30582d.zzb());
            case 7:
                return a();
            case 8:
                Context contextA = ((C1523jg) this.f30580b).a();
                Uw uw = (Uw) this.f30581c.zzb();
                p120p3.a aVarA2 = ((C1938rg) this.f30582d).a();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C0923Si(contextA, uw, aVarA2, c1936re);
            case 9:
                return new C0965Vi((Context) this.f30580b.zzb(), ((C1938rg) this.f30581c).a(), ((C1526jj) this.f30582d).a());
            case 10:
                Context context = (Context) this.f30580b.zzb();
                p120p3.a aVarA3 = ((C1938rg) this.f30581c).a();
                Ov ovA = C0688Ci.a(((C0688Ci) this.f30582d).f12681a);
                C0743Gd c0743Gd = ovA.f15220A;
                if (c0743Gd == null) {
                    return null;
                }
                Rv rv = ovA.f15282s;
                return new C0728Fd(context, aVarA3, c0743Gd, rv != null ? rv.f16373b : null);
            case 11:
                C2149vj c2149vj = new C2149vj(((NJ) ((C2253xj) this.f30580b).f21921a).zzb());
                Set setZzb = ((NJ) this.f30581c).zzb();
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                return new C2201wj(c2149vj, setZzb, c1936re2, (ScheduledExecutorService) this.f30582d.zzb());
            case 12:
                return new C0840Mk((Context) this.f30580b.zzb(), ((NJ) this.f30581c).zzb(), C0688Ci.a(((C0688Ci) this.f30582d).f12681a));
            case 13:
                C0781Il c0781IlA = C0884Pl.a(((C0884Pl) this.f30580b).f15466a);
                C0796Jl c0796Jl = (C0796Jl) ((C2151vl) this.f30581c).f21577a.zzb();
                Cw.N0(c0796Jl);
                Executor executor = (Executor) this.f30582d.zzb();
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                return new C1271em(c0781IlA, c0796Jl, executor, c1936re3);
            case 14:
                return new BinderC0767Hm((String) ((C0703Di) this.f30580b).f12851a.f8652J, (C0721El) this.f30581c.zzb(), C0884Pl.a(((C0884Pl) this.f30582d).f15466a));
            case 15:
                return new BinderC0782Im((String) ((C0703Di) this.f30580b).f12851a.f8652J, (C0721El) this.f30581c.zzb(), C0884Pl.a(((C0884Pl) this.f30582d).f15466a));
            case 16:
                int i9 = ((C1526jj) this.f30582d).a().f17688o.f9298H;
                if (i9 != 0) {
                    return i9 + (-1) != 0 ? ((Lr) this.f30581c).zzb() : ((Lr) this.f30580b).zzb();
                }
                throw null;
            case 17:
                String str2 = (String) this.f30580b.zzb();
                Context contextA2 = ((C1523jg) this.f30581c).a();
                C1936re c1936re4 = AbstractC1988se.f20906a;
                Cw.N0(c1936re4);
                Map mapZzb = ((KJ) this.f30582d).zzb();
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15578A4)).booleanValue()) {
                    C2173w6 c2173w6 = new C2173w6(new t(contextA2, 6));
                    synchronized (c2173w6) {
                        if (c2173w6.f21642c) {
                            try {
                                C7 c8 = c2173w6.f21641b;
                                c8.d();
                                D7.A((D7) c8.f20255H, str2);
                            } catch (NullPointerException e8) {
                                l.f25980A.f25987g.i("AdMobClearcutLogger.modify", e8);
                            }
                        }
                        break;
                    }
                    setEmptySet = Collections.singleton(new C0825Lk(new C2205wn(c2173w6, mapZzb), c1936re4));
                } else {
                    setEmptySet = Collections.emptySet();
                }
                Cw.N0(setEmptySet);
                return setEmptySet;
            case 18:
                return new C0768Hn((C0693Cn) this.f30580b.zzb(), ((NJ) this.f30581c).zzb(), (a) this.f30582d.zzb());
            case 19:
                return new C1480io((C1895qo) this.f30580b.zzb(), ((C1526jj) this.f30581c).a(), (String) this.f30582d.zzb());
            case 20:
                Context contextA3 = ((C1523jg) this.f30580b).a();
                WeakReference weakReference = ((C1575kg) this.f30581c).f19625a.f19120d;
                Cw.N0(weakReference);
                C1998so c1998so = (C1998so) this.f30582d.zzb();
                C1936re c1936re5 = AbstractC1988se.f20906a;
                Cw.N0(c1936re5);
                return new BinderC2258xo(contextA3, weakReference, c1998so, c1936re5);
            case 21:
                return new Aq((Context) this.f30580b.zzb(), (AbstractC1216di) this.f30581c.zzb(), (Executor) this.f30582d.zzb(), i8);
            case 22:
                Context context2 = (Context) this.f30580b.zzb();
                p120p3.a aVarA4 = ((C1938rg) this.f30581c).a();
                C0851Ng c0851Ng = (C0851Ng) this.f30582d.zzb();
                C1936re c1936re6 = AbstractC1988se.f20906a;
                Cw.N0(c1936re6);
                return new Sq(context2, aVarA4, c0851Ng, c1936re6);
            case 23:
                return new Aq((Context) this.f30580b.zzb(), (C2094ug) this.f30581c.zzb(), (Executor) this.f30582d.zzb(), 2);
            case 24:
                return new Sq((Context) this.f30580b.zzb(), (C2094ug) this.f30581c.zzb(), ((C1938rg) this.f30582d).a());
            case 25:
                return new C2105ur((Context) this.f30580b.zzb(), (Executor) this.f30581c.zzb(), (C0893Qg) this.f30582d.zzb(), 0);
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return new C2105ur((Context) this.f30580b.zzb(), (Executor) this.f30581c.zzb(), (C0893Qg) this.f30582d.zzb(), 1);
            case 27:
                C1936re c1936re7 = AbstractC1988se.f20906a;
                Cw.N0(c1936re7);
                return new Ss(c1936re7, ((C1526jj) this.f30580b).a(), ((C1938rg) this.f30581c).a(), ((C1990sg) this.f30582d).zzb(), 0);
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                Context contextA4 = ((C1523jg) this.f30580b).a();
                C1625le c1625le = (C1625le) this.f30581c.zzb();
                ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) this.f30582d.zzb();
                C1936re c1936re8 = AbstractC1988se.f20906a;
                Cw.N0(c1936re8);
                return new Ws(contextA4, c1625le, scheduledExecutorService2, c1936re8);
            default:
                C1936re c1936re9 = AbstractC1988se.f20906a;
                Cw.N0(c1936re9);
                return new Ss(c1936re9, ((C1526jj) this.f30580b).a(), (PackageInfo) this.f30581c.zzb(), ((C1472ig) this.f30582d).zzb(), 1);
        }
    }

    public /* synthetic */ E(IJ ij, MJ mj, MJ mj2, int i8) {
        this.f30579a = i8;
        this.f30580b = ij;
        this.f30581c = mj;
        this.f30582d = mj2;
    }

    public E(MJ mj, C1938rg c1938rg, MJ mj2) {
        this.f30579a = 10;
        this.f30580b = mj;
        this.f30581c = c1938rg;
        this.f30582d = mj2;
    }

    public /* synthetic */ E(MJ mj, MJ mj2, IJ ij, int i8) {
        this.f30579a = i8;
        this.f30580b = mj;
        this.f30581c = mj2;
        this.f30582d = ij;
    }

    public /* synthetic */ E(MJ mj, MJ mj2, MJ mj3, int i8) {
        this.f30579a = i8;
        this.f30580b = mj;
        this.f30581c = mj2;
        this.f30582d = mj3;
    }

    public /* synthetic */ E(MJ mj, MJ mj2, MJ mj3, int i8, int i9) {
        this.f30579a = i8;
        this.f30580b = mj;
        this.f30581c = mj2;
        this.f30582d = mj3;
    }
}
