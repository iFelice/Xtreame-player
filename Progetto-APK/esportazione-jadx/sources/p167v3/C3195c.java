package p167v3;

import D4.b;
import S3.e;
import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.AbstractC1018Zf;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.AbstractC2252xi;
import com.google.android.gms.internal.ads.Aq;
import com.google.android.gms.internal.ads.C0679Bo;
import com.google.android.gms.internal.ads.C0693Cn;
import com.google.android.gms.internal.ads.C0746Gg;
import com.google.android.gms.internal.ads.C0776Ig;
import com.google.android.gms.internal.ads.C0917Sc;
import com.google.android.gms.internal.ads.C0941Tm;
import com.google.android.gms.internal.ads.C0968Vl;
import com.google.android.gms.internal.ads.C1376gn;
import com.google.android.gms.internal.ads.C1582kn;
import com.google.android.gms.internal.ads.C1637lq;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.C2040te;
import com.google.android.gms.internal.ads.C2064u1;
import com.google.android.gms.internal.ads.C2246xc;
import com.google.android.gms.internal.ads.C2260xq;
import com.google.android.gms.internal.ads.C2298yc;
import com.google.android.gms.internal.ads.C2357zj;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.D8;
import com.google.android.gms.internal.ads.Eq;
import com.google.android.gms.internal.ads.Hq;
import com.google.android.gms.internal.ads.InterfaceC0715Ef;
import com.google.android.gms.internal.ads.InterfaceC1195dC;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.O7;
import com.google.android.gms.internal.ads.Ov;
import com.google.android.gms.internal.ads.Pv;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Qv;
import com.google.android.gms.internal.ads.RB;
import com.google.android.gms.internal.ads.RunnableC0850Nf;
import com.google.android.gms.internal.ads.RunnableC1170co;
import com.google.android.gms.internal.ads.Rv;
import com.google.android.gms.internal.ads.Tv;
import com.google.android.gms.internal.ads.V9;
import com.google.android.gms.internal.ads.ViewTreeObserverOnScrollChangedListenerC1681mi;
import com.google.android.gms.internal.ads.Xu;
import com.google.android.gms.internal.ads.Yq;
import com.google.android.gms.internal.ads.Yv;
import com.google.android.gms.internal.pal.C2805r1;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p048g0.a;
import p083k3.l;
import p090l3.C3099q;
import p090l3.d1;
import p113o3.C3151i;
import p113o3.O;

/* JADX INFO: renamed from: v3.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3195c implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f30605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f30606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f30607d;

    public /* synthetic */ C3195c(C0941Tm c0941Tm, String str, JSONObject jSONObject) {
        this.f30604a = 2;
        this.f30605b = c0941Tm;
        this.f30607d = str;
        this.f30606c = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final b zza(Object obj) throws JSONException {
        int i8 = this.f30604a;
        Object obj2 = this.f30607d;
        Object obj3 = this.f30606c;
        Object obj4 = this.f30605b;
        switch (i8) {
            case 0:
                j jVar = (j) obj4;
                String str = (String) obj2;
                C0941Tm c0941Tm = (C0941Tm) obj;
                jVar.getClass();
                ((C0941Tm[]) obj3)[0] = c0941Tm;
                Context context = jVar.f30625I;
                C2298yc c2298yc = jVar.f30631O;
                Map map = c2298yc.f22035H;
                JSONObject jSONObjectC = e.C(context, map, map, c2298yc.f22034G, null);
                JSONObject jSONObjectF = e.F(jVar.f30625I, jVar.f30631O.f22034G);
                JSONObject jSONObjectE = e.E(jVar.f30631O.f22034G);
                JSONObject jSONObjectD = e.D(jVar.f30625I, jVar.f30631O.f22034G);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("asset_view_signal", jSONObjectC);
                jSONObject.put("ad_view_signal", jSONObjectF);
                jSONObject.put("scroll_view_signal", jSONObjectE);
                jSONObject.put("lock_screen_signal", jSONObjectD);
                if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str)) {
                    jSONObject.put("click_signal", e.B(null, jVar.f30625I, jVar.f30633Q, jVar.f30632P));
                }
                return c0941Tm.a(jSONObject, str);
            case 1:
                a aVar = (a) obj4;
                InterfaceC1195dC interfaceC1195dC = (InterfaceC1195dC) obj3;
                b bVar = (b) obj2;
                AbstractC2252xi abstractC2252xi = (AbstractC2252xi) obj;
                aVar.getClass();
                if (abstractC2252xi != null) {
                    interfaceC1195dC.mo3zzb(abstractC2252xi);
                }
                return Cw.e2(bVar, ((Long) D8.f12779a.l()).longValue(), TimeUnit.MILLISECONDS, (ScheduledExecutorService) aVar.f25294c);
            case 2:
                String str2 = (String) obj2;
                JSONObject jSONObject2 = (JSONObject) obj3;
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                C0968Vl c0968Vl = ((C0941Tm) obj4).f16733h;
                c0968Vl.getClass();
                C2040te c2040te = new C2040te();
                O o4 = l.f25980A.f25983c;
                String string = UUID.randomUUID().toString();
                c0968Vl.b(string, new V9(c2040te, 0));
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("id", string);
                    jSONObject3.put("args", jSONObject2);
                    interfaceC0715Ef.g(jSONObject3, str2);
                    break;
                } catch (Exception e8) {
                    c2040te.c(e8);
                }
                return c2040te;
            case 3:
                Eq eq = (Eq) obj4;
                Tv tv = (Tv) obj3;
                Ov ov = (Ov) obj2;
                eq.getClass();
                J7 j8 = Q7.f15749W1;
                C3099q c3099q = C3099q.f26624d;
                boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
                C0693Cn c0693Cn = eq.f13228g;
                if (zBooleanValue) {
                    p148t.a.g(l.f25980A.f25990j, c0693Cn.f12693c, "rendering-webview-creation-start");
                }
                List list = ov.f15286u;
                Context context2 = eq.f13223b;
                d1 d1VarL = U4.a.l(context2, list);
                InterfaceC0715Ef interfaceC0715EfA = eq.f13224c.a(d1VarL, ov, (Qv) tv.f16755b.f21883I);
                interfaceC0715EfA.d0(ov.f15242W);
                J7 j9 = Q7.f15856i7;
                O7 o7 = c3099q.f26627c;
                View viewA = (((Boolean) o7.a(j9)).booleanValue() && ov.f15259g0) ? ViewTreeObserverOnScrollChangedListenerC1681mi.a(context2, interfaceC0715EfA.j(), ov) : new C1582kn(context2, interfaceC0715EfA.j(), (C3151i) eq.f13227f.apply(ov));
                if (((Boolean) o7.a(j8)).booleanValue()) {
                    p148t.a.g(l.f25980A.f25990j, c0693Cn.f12693c, "rendering-webview-creation-end");
                }
                p004a3.b bVar2 = new p004a3.b(tv, ov, (String) null);
                C2246xc c2246xc = new C2246xc(viewA, interfaceC0715EfA, new C2805r1(interfaceC0715EfA, 0), d1VarL.f26556O ? new Pv(true, -3, 0) : new Pv(false, d1VarL.f26552K, d1VarL.f26549H));
                C0776Ig c0776Ig = (C0776Ig) eq.f13222a;
                C0746Gg c0746Gg = new C0746Gg(c0776Ig.f13963d, c0776Ig.f13965e, bVar2, c2246xc);
                if (((Boolean) o7.a(j8)).booleanValue()) {
                    p148t.a.g(l.f25980A.f25990j, c0693Cn.f12693c, "rendering-ad-component-creation-end");
                }
                MJ mj = c0746Gg.f13623u0;
                ((C1376gn) mj.zzb()).a(interfaceC0715EfA, false, null, c0693Cn.f12693c);
                C2357zj c2357zj = (C2357zj) c0746Gg.f13611i0.zzb();
                C2260xq c2260xq = new C2260xq(interfaceC0715EfA, 1);
                C1936re c1936re = AbstractC1988se.f20911f;
                c2357zj.Y0(c2260xq, c1936re);
                Rv rv = ov.f15282s;
                String strB = rv.f16372a;
                if (((Boolean) o7.a(Q7.f15650J4)).booleanValue() && ((C1637lq) c0746Gg.f13609g0.zzb()).c()) {
                    strB = AbstractC1018Zf.b(strB, AbstractC1018Zf.a(ov));
                }
                C2040te c2040teB = C1376gn.b(interfaceC0715EfA, rv.f16373b, strB, c0693Cn.f12693c);
                boolean z7 = ov.f15232M;
                Executor executor = eq.f13226e;
                if (z7) {
                    c2040teB.a(new RunnableC0850Nf(interfaceC0715EfA, 6), executor);
                }
                c2040teB.a(new RunnableC1170co(5, eq, interfaceC0715EfA), executor);
                return Cw.b2(c2040teB, new C0917Sc(c0746Gg, 3), c1936re);
            case 4:
                return Cw.N1(ViewTreeObserverOnScrollChangedListenerC1681mi.a(((Aq) obj4).f12045b, (View) obj3, (Ov) obj2));
            case 5:
                return Cw.N1(ViewTreeObserverOnScrollChangedListenerC1681mi.a(((Hq) obj4).f13797a, (View) obj3, (Ov) obj2));
            default:
                Yq yq = (Yq) obj4;
                Tv tv2 = (Tv) obj3;
                Ov ov2 = (Ov) obj2;
                JSONArray jSONArray = (JSONArray) obj;
                yq.getClass();
                if (jSONArray.length() == 0) {
                    return Cw.H1(new C0679Bo(3));
                }
                if (((Yv) tv2.f16754a.f17529H).f17684k <= 1) {
                    return Cw.b2(yq.c(tv2, ov2, jSONArray.getJSONObject(0)), new C2064u1(9), yq.f17650b);
                }
                int length = jSONArray.length();
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15757X1)).booleanValue()) {
                    yq.f17654f.a("nsl", String.valueOf(length));
                }
                Xu xu = tv2.f16754a;
                yq.f17652d.c(Math.min(length, ((Yv) xu.f17529H).f17684k));
                ArrayList arrayList = new ArrayList(((Yv) xu.f17529H).f17684k);
                for (int i9 = 0; i9 < ((Yv) xu.f17529H).f17684k; i9++) {
                    if (i9 < length) {
                        arrayList.add(yq.c(tv2, ov2, jSONArray.getJSONObject(i9)));
                    } else {
                        arrayList.add(Cw.H1(new C0679Bo(3)));
                    }
                }
                return Cw.N1(arrayList);
        }
    }

    public /* synthetic */ C3195c(Object obj, Object obj2, Object obj3, int i8) {
        this.f30604a = i8;
        this.f30605b = obj;
        this.f30606c = obj2;
        this.f30607d = obj3;
    }
}
