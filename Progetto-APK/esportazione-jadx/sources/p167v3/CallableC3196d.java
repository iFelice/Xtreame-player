package p167v3;

import C2.C0091g;
import R3.a;
import R3.b;
import Z3.J;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.internal.ads.AbstractC1717nH;
import com.google.android.gms.internal.ads.C0688Ci;
import com.google.android.gms.internal.ads.C0703Di;
import com.google.android.gms.internal.ads.C0718Ei;
import com.google.android.gms.internal.ads.C0733Fi;
import com.google.android.gms.internal.ads.C0762Hh;
import com.google.android.gms.internal.ads.C0776Ig;
import com.google.android.gms.internal.ads.C0781Il;
import com.google.android.gms.internal.ads.C0809Kj;
import com.google.android.gms.internal.ads.C0909Ri;
import com.google.android.gms.internal.ads.C0973Wc;
import com.google.android.gms.internal.ads.C0987Xc;
import com.google.android.gms.internal.ads.C1062aj;
import com.google.android.gms.internal.ads.C1212de;
import com.google.android.gms.internal.ads.C1525ji;
import com.google.android.gms.internal.ads.C1577ki;
import com.google.android.gms.internal.ads.C1629li;
import com.google.android.gms.internal.ads.C1682mj;
import com.google.android.gms.internal.ads.C1898qr;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.E4;
import com.google.android.gms.internal.ads.HJ;
import com.google.android.gms.internal.ads.I4;
import com.google.android.gms.internal.ads.Kp;
import com.google.android.gms.internal.ads.Lq;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.NJ;
import com.google.android.gms.internal.ads.Ov;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Tv;
import com.google.android.gms.internal.ads.Yv;
import com.google.android.gms.internal.ads.Zv;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import okhttp3.HttpUrl;
import org.json.JSONObject;
import p000a.r;
import p021c4.A1;
import p021c4.BinderC0608r0;
import p021c4.C0613u;
import p021c4.O0;
import p043f3.f;
import p083k3.l;
import p090l3.C3099q;
import p113o3.L;
import p113o3.O;
import p120p3.h;
import pe.hf.black20.R;

/* JADX INFO: renamed from: v3.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CallableC3196d implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f30609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f30610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f30611d;

    public CallableC3196d(BinderC0608r0 binderC0608r0, C0613u c0613u, String str) {
        this.f30608a = 13;
        this.f30609b = c0613u;
        this.f30610c = str;
        this.f30611d = binderC0608r0;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        Zv zv;
        C0973Wc c0973Wc;
        Bundle bundle;
        switch (this.f30608a) {
            case 0:
                j jVar = (j) this.f30609b;
                Uri uriA = (Uri) this.f30610c;
                a aVar = (a) this.f30611d;
                jVar.getClass();
                try {
                    uriA = (!((Boolean) C3099q.f26624d.f26627c.a(Q7.lb)).booleanValue() || (zv = jVar.f30627K) == null) ? jVar.f30626J.a(uriA, jVar.f30625I, (View) b.v0(aVar), null) : zv.a(uriA, jVar.f30625I, (View) b.v0(aVar), null);
                    break;
                } catch (I4 e8) {
                    h.h(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                }
                if (uriA.getQueryParameter("ms") != null) {
                    return uriA;
                }
                throw new Exception("Failed to append spam signals to click url.");
            case 1:
                j jVar2 = (j) this.f30609b;
                C1212de c1212de = (C1212de) this.f30610c;
                return jVar2.z3(jVar2.f30625I, c1212de.f18337G, c1212de.f18338H, c1212de.f18339I, c1212de.f18340J, (Bundle) this.f30611d);
            case 2:
                j jVar3 = (j) this.f30609b;
                List<Uri> list = (List) this.f30610c;
                a aVar2 = (a) this.f30611d;
                E4 e9 = jVar3.f30626J.f13700b;
                String strZzh = e9 != null ? e9.zzh(jVar3.f30625I, (View) b.v0(aVar2), null) : HttpUrl.FRAGMENT_ENCODE_SET;
                if (TextUtils.isEmpty(strZzh)) {
                    throw new Exception("Failed to get view signals.");
                }
                ArrayList arrayList = new ArrayList();
                for (Uri uri : list) {
                    if (j.F3(uri, jVar3.f30648f0, jVar3.f30649g0)) {
                        arrayList.add(j.G3(uri, "ms", strZzh));
                    } else {
                        h.g("Not a Google URL: ".concat(String.valueOf(uri)));
                        arrayList.add(uri);
                    }
                }
                if (arrayList.isEmpty()) {
                    throw new Exception("Empty impression URLs result.");
                }
                return arrayList;
            case 3:
                C0091g.s(((x) this.f30609b).f30704c, (f) this.f30610c, (y) this.f30611d);
                return Boolean.TRUE;
            case 4:
                return Boolean.valueOf(((SharedPreferences) this.f30609b).getBoolean((String) this.f30610c, ((Boolean) this.f30611d).booleanValue()));
            case 5:
                return Integer.valueOf(((SharedPreferences) this.f30609b).getInt((String) this.f30610c, ((Integer) this.f30611d).intValue()));
            case 6:
                return Long.valueOf(((SharedPreferences) this.f30609b).getLong((String) this.f30610c, ((Long) this.f30611d).longValue()));
            case 7:
                return ((SharedPreferences) this.f30609b).getString((String) this.f30610c, (String) this.f30611d);
            case 8:
                C1062aj c1062aj = (C1062aj) this.f30609b;
                D4.b bVar = (D4.b) this.f30610c;
                Bundle bundle2 = (Bundle) this.f30611d;
                c1062aj.getClass();
                return new C0973Wc((Bundle) bVar.get(), c1062aj.f17910b, c1062aj.f17911c, c1062aj.f17912d, c1062aj.f17913e, c1062aj.f17914f, (String) ((D4.b) c1062aj.f17915g.zzb()).get(), c1062aj.f17916h, null, null, ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15596C6)).booleanValue() && ((L) c1062aj.f17918j).r(), c1062aj.f17919k.b(), bundle2);
            case 9:
                C0781Il c0781Il = new C0781Il();
                JSONObject jSONObject = (JSONObject) this.f30611d;
                int iOptInt = jSONObject.optInt("template_id", -1);
                synchronized (c0781Il) {
                    c0781Il.f14021a = iOptInt;
                }
                c0781Il.i(jSONObject.optString("custom_template_id"));
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("omid_settings");
                String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("omid_partner_name") : null;
                Tv tv = (Tv) this.f30609b;
                c0781Il.r(strOptString);
                Yv yv = (Yv) tv.f16754a.f17529H;
                if (!yv.f17680g.contains(Integer.toString(c0781Il.D()))) {
                    throw new C1898qr(1, r.f("Invalid template ID: ", c0781Il.D()));
                }
                if (c0781Il.D() == 3) {
                    if (c0781Il.a() == null) {
                        throw new C1898qr(1, "No custom template id for custom template ad response.");
                    }
                    if (!yv.f17681h.contains(c0781Il.a())) {
                        throw new C1898qr(1, "Unexpected custom template id in the response.");
                    }
                }
                Ov ov = (Ov) this.f30610c;
                c0781Il.t(jSONObject.optDouble("rating", -1.0d));
                String strOptString2 = jSONObject.optString("headline", null);
                if (ov.f15232M) {
                    l lVar = l.f25980A;
                    O o4 = lVar.f25983c;
                    Resources resourcesB = lVar.f25987g.b();
                    strOptString2 = U2.l(resourcesB != null ? resourcesB.getString(R.string.s7) : "Test Ad", " : ", strOptString2);
                }
                c0781Il.u("headline", strOptString2);
                c0781Il.u("body", jSONObject.optString("body", null));
                c0781Il.u("call_to_action", jSONObject.optString("call_to_action", null));
                c0781Il.u("store", jSONObject.optString("store", null));
                c0781Il.u("price", jSONObject.optString("price", null));
                c0781Il.u("advertiser", jSONObject.optString("advertiser", null));
                return c0781Il;
            case 10:
                C0987Xc c0987Xc = (C0987Xc) ((D4.b) this.f30609b).get();
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue() && (bundle = (c0973Wc = (C0973Wc) this.f30610c).f17262S) != null) {
                    bundle.putLong("get-ad-dictionary-sdkcore-start", c0987Xc.f17442j);
                    c0973Wc.f17262S.putLong("get-ad-dictionary-sdkcore-end", c0987Xc.f17443k);
                }
                return new Kp((JSONObject) ((D4.b) this.f30611d).get(), c0987Xc);
            case 11:
                Lq lq = (Lq) this.f30609b;
                Tv tv2 = (Tv) this.f30610c;
                Ov ov2 = (Ov) this.f30611d;
                lq.getClass();
                p004a3.b bVar2 = new p004a3.b(tv2, ov2, (String) null);
                C2218x c2218x = new C2218x(21, ((Yv) tv2.f16754a.f17529H).a(), new K.a(lq, tv2, ov2, 22, 0));
                C0776Ig c0776Ig = (C0776Ig) lq.f14559a;
                C0776Ig c0776Ig2 = c0776Ig.f13965e;
                C0733Fi c0733Fi = new C0733Fi(bVar2);
                C0688Ci c0688Ci = new C0688Ci(bVar2);
                int i8 = NJ.f14896c;
                List listEmptyList = Collections.emptyList();
                ArrayList arrayList2 = new ArrayList(2);
                arrayList2.add(c0776Ig2.f13976j0);
                arrayList2.add(c0776Ig2.f13978k0);
                MJ mjB = p148t.a.b(new NJ(listEmptyList, arrayList2), 2);
                ArrayList arrayList3 = new ArrayList(4);
                ArrayList arrayList4 = new ArrayList(4);
                arrayList3.add(c0776Ig2.f13910B0);
                arrayList4.add(c0776Ig2.f13912C0);
                arrayList3.add(c0776Ig2.f13914D0);
                arrayList3.add(c0776Ig2.f13916E0);
                arrayList4.add(c0776Ig2.f13936O0);
                arrayList4.add(c0776Ig2.f13938P0);
                arrayList4.add(c0776Ig2.f13940Q0);
                arrayList3.add(c0776Ig2.f13918F0);
                MJ mjB2 = p148t.a.b(new NJ(arrayList3, arrayList4), 4);
                C1682mj c1682mj = new C1682mj(c0688Ci, new C0703Di(bVar2), c0776Ig2.f13964d0, new C0718Ei(bVar2), c0776Ig2.f13985o);
                MJ mjB3 = HJ.b(AbstractC1717nH.f20139p0);
                ArrayList arrayList5 = new ArrayList(1);
                ArrayList arrayList6 = new ArrayList(1);
                arrayList6.add(c0776Ig2.f13944S0);
                arrayList5.add(c0776Ig2.f13946T0);
                C0809Kj c0809Kj = new C0809Kj(new NJ(arrayList5, arrayList6));
                List listEmptyList2 = Collections.emptyList();
                ArrayList arrayList7 = new ArrayList(1);
                arrayList7.add(c0776Ig2.f14006y0);
                C1525ji c1525ji = (C1525ji) HJ.b(new C0762Hh(new C0909Ri(c0733Fi, c0688Ci, mjB, mjB2, c0776Ig2.f13942R0, c1682mj, mjB3, c0809Kj, p148t.a.b(new NJ(listEmptyList2, arrayList7), 14)), new C1629li(c2218x), new C1577ki(c2218x), c0776Ig.f13963d.f12434d, 2)).zzb();
                Cw.N0(c1525ji);
                return c1525ji;
            case 12:
                return Boolean.valueOf(((J) this.f30609b).a((JSONObject) this.f30611d, (String) this.f30610c));
            default:
                BinderC0608r0 binderC0608r0 = (BinderC0608r0) this.f30611d;
                binderC0608r0.f11346G.i();
                O0 o7 = binderC0608r0.f11346G.f10659N;
                A1.I(o7);
                o7.m();
                throw new IllegalStateException("Unexpected call on client side");
        }
    }

    public /* synthetic */ CallableC3196d(Tv tv, Ov ov, JSONObject jSONObject) {
        this.f30608a = 9;
        this.f30609b = tv;
        this.f30610c = ov;
        this.f30611d = jSONObject;
    }

    public /* synthetic */ CallableC3196d(Object obj, Object obj2, Object obj3, int i8) {
        this.f30608a = i8;
        this.f30609b = obj;
        this.f30610c = obj2;
        this.f30611d = obj3;
    }
}
