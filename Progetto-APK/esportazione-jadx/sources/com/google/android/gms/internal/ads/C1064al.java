package com.google.android.gms.internal.ads;

import com.google.api.Service;
import java.util.Collections;
import java.util.Set;
import java.util.UUID;
import org.json.JSONObject;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.al, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1064al implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f17955b;

    public C1064al(MJ mj) {
        this.f17954a = 29;
        this.f17955b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f17954a;
        QJ qj = this.f17955b;
        switch (i8) {
            case 0:
                Set setSingleton = Collections.singleton(new C0825Lk((C1477il) qj.zzb(), AbstractC1988se.f20911f));
                Cw.N0(setSingleton);
                return setSingleton;
            case 1:
                return new C0825Lk((C0750Gk) qj.zzb(), AbstractC1988se.f20911f);
            case 2:
                return new C1477il((C0689Cj) qj.zzb());
            case 3:
                C0856Nl c0856Nl = ((C1788ol) qj).f20319a.f19838a;
                Cw.N0(c0856Nl);
                Set setSingleton2 = c0856Nl.f15078d != null ? Collections.singleton("banner") : Collections.emptySet();
                Cw.N0(setSingleton2);
                return setSingleton2;
            case 4:
                C0796Jl c0796Jl = (C0796Jl) ((C2151vl) qj).f21577a.zzb();
                Cw.N0(c0796Jl);
                return c0796Jl.g();
            case 5:
                p120p3.a aVarA = ((C1938rg) qj).a();
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                return new E5(UUID.randomUUID().toString(), aVarA, "native", new JSONObject(), true);
            case 6:
                return new C0825Lk((C1271em) qj.zzb(), AbstractC1988se.f20906a);
            case 7:
                BinderC2307yl binderC2307yl = new BinderC2307yl(C0884Pl.a(((C0884Pl) ((C2359zl) qj).f22185a).f15466a));
                C0751Gl c0751Gl = new C0751Gl();
                c0751Gl.f13627a = binderC2307yl;
                return c0751Gl;
            case 8:
                return new C0811Kl(C0688Ci.a(((C0688Ci) qj).f12681a));
            case 9:
                C1484is c1484is = (C1484is) qj.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C0825Lk(c1484is, c1936re);
            case 10:
                C1323fm c1323fm = (C1323fm) qj.zzb();
                Cw.N0(c1323fm);
                return c1323fm;
            case 11:
                return new C0825Lk((C0750Gk) qj.zzb(), AbstractC1988se.f20911f);
            case 12:
                return ((C1526jj) qj).a().f17688o.f9298H == 3 ? EnumC2329z6.REWARDED_INTERSTITIAL : EnumC2329z6.REWARD_BASED_VIDEO_AD;
            case 13:
                return ((C1526jj) qj).a().f17688o.f9298H == 3 ? "rewarded_interstitial" : "rewarded";
            case 14:
                return new C0825Lk(new C1686mn((InterfaceC0715Ef) ((C1738nn) qj).f20196a.zzb()), AbstractC1988se.f20910e);
            case 15:
                C2049tn c2049tn = (C2049tn) qj.zzb();
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                return new C0825Lk(c2049tn, c1936re2);
            case 16:
                C2049tn c2049tn2 = (C2049tn) qj.zzb();
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                return new C0825Lk(c2049tn2, c1936re3);
            case 17:
                C2049tn c2049tn3 = (C2049tn) qj.zzb();
                C1936re c1936re4 = AbstractC1988se.f20906a;
                Cw.N0(c1936re4);
                return new C0825Lk(c2049tn3, c1936re4);
            case 18:
                C2049tn c2049tn4 = (C2049tn) qj.zzb();
                C1936re c1936re5 = AbstractC1988se.f20906a;
                Cw.N0(c1936re5);
                return new C0825Lk(c2049tn4, c1936re5);
            case 19:
                C2049tn c2049tn5 = (C2049tn) qj.zzb();
                C1936re c1936re6 = AbstractC1988se.f20906a;
                Cw.N0(c1936re6);
                return new C0825Lk(c2049tn5, c1936re6);
            case 20:
                C2049tn c2049tn6 = (C2049tn) qj.zzb();
                C1936re c1936re7 = AbstractC1988se.f20906a;
                Cw.N0(c1936re7);
                return new C0825Lk(c2049tn6, c1936re7);
            case 21:
                C1936re c1936re8 = AbstractC1988se.f20906a;
                Cw.N0(c1936re8);
                C2257xn c2257xn = (C2257xn) qj;
                Set setSingleton3 = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15578A4)).booleanValue() ? Collections.singleton(new C0825Lk(new C2205wn((C2173w6) c2257xn.f21925a.zzb(), ((KJ) c2257xn.f21926b).zzb()), c1936re8)) : Collections.emptySet();
                Cw.N0(setSingleton3);
                return setSingleton3;
            case 22:
                C0663An c0663An = (C0663An) qj.zzb();
                C1936re c1936re9 = AbstractC1988se.f20906a;
                Cw.N0(c1936re9);
                return new C0825Lk(c0663An, c1936re9);
            case 23:
                C0663An c0663An2 = (C0663An) qj.zzb();
                C1936re c1936re10 = AbstractC1988se.f20906a;
                Cw.N0(c1936re10);
                return new C0825Lk(c0663An2, c1936re10);
            case 24:
                C0663An c0663An3 = (C0663An) qj.zzb();
                C1936re c1936re11 = AbstractC1988se.f20906a;
                Cw.N0(c1936re11);
                return new C0825Lk(c0663An3, c1936re11);
            case 25:
                C0663An c0663An4 = (C0663An) qj.zzb();
                C1936re c1936re12 = AbstractC1988se.f20906a;
                Cw.N0(c1936re12);
                return new C0825Lk(c0663An4, c1936re12);
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                C0768Hn c0768Hn = (C0768Hn) qj.zzb();
                C1936re c1936re13 = AbstractC1988se.f20906a;
                Cw.N0(c1936re13);
                return new C0825Lk(c0768Hn, c1936re13);
            case 27:
                C0783In c0783In = (C0783In) qj.zzb();
                C1936re c1936re14 = AbstractC1988se.f20906a;
                Cw.N0(c1936re14);
                return new C0738Fn(c0783In, c1936re14);
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return new C0828Ln((P3.a) qj.zzb());
            default:
                C0872On c0872On = (C0872On) qj.zzb();
                C1936re c1936re15 = AbstractC1988se.f20906a;
                Cw.N0(c1936re15);
                Set setC = C0621y.c(c0872On, c1936re15);
                Cw.N0(setC);
                return setC;
        }
    }

    public /* synthetic */ C1064al(MJ mj, int i8) {
        this.f17954a = i8;
        this.f17955b = mj;
    }

    public /* synthetic */ C1064al(MJ mj, int i8, int i9) {
        this.f17954a = i8;
        this.f17955b = mj;
    }

    public /* synthetic */ C1064al(MJ mj, int i8, Object obj) {
        this.f17954a = i8;
        this.f17955b = mj;
    }
}
