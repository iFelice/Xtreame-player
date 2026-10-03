package p021c4;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.AbstractC2019t8;
import com.google.android.gms.internal.ads.Ax;
import com.google.android.gms.internal.ads.Bx;
import com.google.android.gms.internal.ads.C0825Lk;
import com.google.android.gms.internal.ads.C0987Xc;
import com.google.android.gms.internal.ads.C1011Ym;
import com.google.android.gms.internal.ads.C1533jq;
import com.google.android.gms.internal.ads.C1689mq;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.C2267xx;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.Cx;
import com.google.android.gms.internal.ads.Dw;
import com.google.android.gms.internal.ads.EnumC2319yx;
import com.google.android.gms.internal.ads.Fp;
import com.google.android.gms.internal.ads.I7;
import com.google.android.gms.internal.ads.InterfaceC0715Ef;
import com.google.android.gms.internal.ads.InterfaceC0845Na;
import com.google.android.gms.internal.ads.InterfaceC0859Oa;
import com.google.android.gms.internal.ads.InterfaceC1195dC;
import com.google.android.gms.internal.ads.InterfaceC1396h6;
import com.google.android.gms.internal.ads.InterfaceC1746nv;
import com.google.android.gms.internal.ads.InterfaceC1942rk;
import com.google.android.gms.internal.ads.Jp;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.RunnableC1482iq;
import com.google.android.gms.internal.ads.RunnableC1585kq;
import com.google.android.gms.internal.ads.V7;
import com.google.android.gms.internal.measurement.C2560f4;
import com.google.android.gms.internal.measurement.C2572h4;
import com.google.android.gms.internal.measurement.C2632s3;
import com.google.android.gms.internal.measurement.C2642u3;
import com.google.android.gms.internal.measurement.K3;
import com.google.android.gms.internal.measurement.L3;
import com.google.android.gms.internal.measurement.M3;
import com.google.android.gms.internal.measurement.x4;
import com.google.android.gms.internal.measurement.y4;
import com.google.android.gms.internal.measurement.z4;
import com.google.api.Service;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p083k3.l;
import p090l3.C3097p;
import p090l3.C3099q;
import p090l3.InterfaceC3068a0;
import p090l3.InterfaceC3110w;
import p090l3.InterfaceC3116z;
import p105n3.m;
import p113o3.I;
import p120p3.a;
import p120p3.h;

/* JADX INFO: renamed from: c4.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0621y implements C, InterfaceC1942rk, InterfaceC1195dC, Dw, InterfaceC0845Na, InterfaceC0859Oa, InterfaceC1746nv {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11407G;

    public C0621y() {
        this.f11407G = 2;
    }

    public static C1689mq a(String str, WebView webView, String str2, int i8, int i9, String str3) {
        Object objA = null;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15626G4)).booleanValue() || !Cw.f12720d.f3280H) {
            return null;
        }
        try {
            objA = new C1533jq(str, i9, str2, webView, str3, i8).a();
        } catch (RuntimeException e8) {
            l.f25980A.f25987g.h("omid exception", e8);
        }
        return (C1689mq) objA;
    }

    public static Bx b(a aVar, WebView webView) {
        try {
            return new Bx(V7.a("Google", aVar.f28197H + "." + aVar.f28198I), webView);
        } catch (RuntimeException e8) {
            l.f25980A.f25987g.h("omid exception", e8);
            return null;
        }
    }

    public static final Set c(Object obj, C1936re c1936re) {
        return ((Boolean) AbstractC2019t8.f21041a.l()).booleanValue() ? Collections.singleton(new C0825Lk(obj, c1936re)) : Collections.emptySet();
    }

    public static void e(C2267xx c2267xx, View view) {
        k(new RunnableC1482iq(c2267xx, view, 1));
    }

    public static void f(C2267xx c2267xx) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15626G4)).booleanValue() && Cw.f12720d.f3280H) {
            Objects.requireNonNull(c2267xx);
            k(new RunnableC1585kq(c2267xx, 0));
        }
    }

    public static boolean g(Context context) {
        Object objB;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15626G4)).booleanValue()) {
            h.g("Omid flag is disabled");
            return false;
        }
        try {
            objB = new I7(context, 5).b();
        } catch (RuntimeException e8) {
            l.f25980A.f25987g.h("omid exception", e8);
            objB = null;
        }
        Boolean bool = (Boolean) objB;
        return bool != null && bool.booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    public static EnumC2319yx h(String str) {
        byte b8;
        int iHashCode = str.hashCode();
        if (iHashCode != -382745961) {
            if (iHashCode != 112202875) {
                if (iHashCode == 714893483 && str.equals("nativeDisplay")) {
                    b8 = 1;
                } else {
                    b8 = -1;
                }
            } else if (str.equals("video")) {
                b8 = 2;
            } else {
                b8 = -1;
            }
        } else if (str.equals("htmlDisplay")) {
            b8 = 0;
        } else {
            b8 = -1;
        }
        if (b8 == 0) {
            return EnumC2319yx.HTML_DISPLAY;
        }
        if (b8 == 1) {
            return EnumC2319yx.NATIVE_DISPLAY;
        }
        if (b8 != 2) {
            return null;
        }
        return EnumC2319yx.VIDEO;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    public static Ax i(String str) {
        byte b8;
        int iHashCode = str.hashCode();
        if (iHashCode != -1104128070) {
            if (iHashCode != 1318088141) {
                if (iHashCode == 1988248512 && str.equals("onePixel")) {
                    b8 = 2;
                } else {
                    b8 = -1;
                }
            } else if (str.equals("definedByJavascript")) {
                b8 = 1;
            } else {
                b8 = -1;
            }
        } else if (str.equals("beginToRender")) {
            b8 = 0;
        } else {
            b8 = -1;
        }
        if (b8 == 0) {
            return Ax.BEGIN_TO_RENDER;
        }
        if (b8 != 1) {
            return b8 != 2 ? Ax.UNSPECIFIED : Ax.ONE_PIXEL;
        }
        return Ax.DEFINED_BY_JAVASCRIPT;
    }

    public static Cx j(String str) {
        if ("native".equals(str)) {
            return Cx.NATIVE;
        }
        return "javascript".equals(str) ? Cx.JAVASCRIPT : Cx.NONE;
    }

    public static final void k(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e8) {
            l.f25980A.f25987g.h("omid exception", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0845Na
    public Object d(JSONObject jSONObject) {
        switch (this.f11407G) {
            case 8:
                break;
        }
        return new C0987Xc(jSONObject);
    }

    @Override // p021c4.C
    public Object zza() {
        switch (this.f11407G) {
            case 0:
                List list = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l4 = (Long) C2642u3.f23301e0.b();
                l4.getClass();
                return l4;
            case 1:
                List list2 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l8 = (Long) C2642u3.f23268C.b();
                l8.getClass();
                return l8;
            case 2:
                List list3 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l9 = (Long) C2642u3.f23306h.b();
                l9.getClass();
                return l9;
            case 3:
                List list4 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l10 = (Long) C2642u3.f23335x.b();
                l10.getClass();
                return l10;
            case 4:
                List list5 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l11 = (Long) C2642u3.f23334w.b();
                l11.getClass();
                return l11;
            case 5:
                List list6 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l12 = (Long) C2642u3.f23284S.b();
                l12.getClass();
                return l12;
            case 6:
                List list7 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l13 = (Long) C2642u3.f23269D.b();
                l13.getClass();
                return l13;
            case 7:
                List list8 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l14 = (Long) C2642u3.f23299d0.b();
                l14.getClass();
                return l14;
            case 8:
                List list9 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l15 = (Long) C2642u3.f23300e.b();
                l15.getClass();
                return l15;
            case 9:
                List list10 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l16 = (Long) C2642u3.f23325q0.b();
                l16.getClass();
                return l16;
            case 10:
                ((z4) ((y4) x4.f23410H.f23411G.f31450G)).getClass();
                Boolean bool = (Boolean) z4.f23418a.b();
                bool.getClass();
                return bool;
            case 11:
                List list11 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23323p0.b()).longValue());
            case 12:
                List list12 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l17 = (Long) C2642u3.f23317m0.b();
                l17.getClass();
                return l17;
            case 13:
                List list13 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l18 = (Long) C2642u3.f23312k.b();
                l18.getClass();
                return l18;
            case 14:
                List list14 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23316m.b()).longValue());
            case 15:
                List list15 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23326r.b()).longValue());
            case 16:
                List list16 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l19 = (Long) C2642u3.f23270E.b();
                l19.getClass();
                return l19;
            case 17:
                List list17 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l20 = (Long) C2642u3.f23271F.b();
                l20.getClass();
                return l20;
            case 18:
                List list18 = E.f10764a;
                ((C2572h4) C2560f4.f23128H.get()).getClass();
                Boolean bool2 = (Boolean) C2572h4.f23153a.b();
                bool2.getClass();
                return bool2;
            case 19:
                List list19 = E.f10764a;
                ((C2572h4) C2560f4.f23128H.get()).getClass();
                return (String) C2572h4.f23158f.b();
            case 20:
                List list20 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return (String) C2642u3.f23304g.b();
            case 21:
                List list21 = E.f10764a;
                ((M3) ((L3) K3.f22952H.f22953G.f31450G)).getClass();
                Boolean bool3 = (Boolean) M3.f22969a.b();
                bool3.getClass();
                return bool3;
            case 22:
                List list22 = E.f10764a;
                ((C2572h4) C2560f4.f23128H.get()).getClass();
                Long l21 = (Long) C2572h4.f23157e.b();
                l21.getClass();
                return l21;
            case 23:
                List list23 = E.f10764a;
                ((C2572h4) C2560f4.f23128H.get()).getClass();
                Long l22 = (Long) C2572h4.f23154b.b();
                l22.getClass();
                return l22;
            case 24:
                List list24 = E.f10764a;
                ((C2572h4) C2560f4.f23128H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2572h4.f23156d.b()).longValue());
            case 25:
                List list25 = E.f10764a;
                ((C2572h4) C2560f4.f23128H.get()).getClass();
                Double d6 = (Double) C2572h4.f23155c.b();
                d6.getClass();
                return d6;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                List list26 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23324q.b()).longValue());
            case 27:
                List list27 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23328s.b()).longValue());
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                List list28 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23320o.b()).longValue());
            default:
                List list29 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23298d.b()).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0859Oa
    public JSONObject zzb(Object obj) throws JSONException {
        Fp fp = (Fp) obj;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.A8)).booleanValue()) {
            jSONObject2.put("ad_request_url", fp.f13420c.f17438f);
            jSONObject2.put("ad_request_post_body", fp.f13420c.f17435c);
        }
        jSONObject2.put("base_url", fp.f13420c.f17434b);
        jSONObject2.put("signals", fp.f13419b);
        Jp jp = fp.f13418a;
        jSONObject3.put("body", jp.f14216c);
        jSONObject3.put("headers", C3097p.f26618f.f26619a.i(jp.f14215b));
        jSONObject3.put("response_code", jp.f14214a);
        jSONObject3.put("latency", jp.f14217d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", fp.f13420c.f17440h);
        return jSONObject;
    }

    public /* synthetic */ C0621y(int i8) {
        this.f11407G = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb, reason: collision with other method in class */
    public /* synthetic */ void mo3zzb(Object obj) {
        ((InterfaceC0715Ef) obj).destroy();
    }

    @Override // com.google.android.gms.internal.ads.Dw
    public Object zza(Object obj) {
        switch (this.f11407G) {
            case 7:
                return HttpUrl.FRAGMENT_ENCODE_SET;
            case 8:
            default:
                JSONObject jSONObject = (JSONObject) obj;
                I.k("GMS AdRequest Signals: ");
                I.k(jSONObject.toString(2));
                return jSONObject;
            case 9:
                JSONObject jSONObject2 = (JSONObject) obj;
                I.k("Ad request signals:");
                I.k(jSONObject2.toString(2));
                return jSONObject2;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public void mo0zza(Object obj) {
        switch (this.f11407G) {
            case 0:
                ((C1011Ym) obj).c();
                break;
            case 1:
                ((C1011Ym) obj).getClass();
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            default:
                ((m) obj).Y();
                break;
            case 15:
                ((InterfaceC3110w) obj).zzg();
                break;
            case 16:
                ((InterfaceC3110w) obj).zzd();
                break;
            case 17:
                ((InterfaceC3068a0) obj).zzc();
                break;
            case 18:
                ((InterfaceC3068a0) obj).zzb();
                break;
            case 19:
                ((InterfaceC3110w) obj).zzi();
                break;
            case 20:
                ((InterfaceC3116z) obj).zzc();
                break;
            case 21:
                ((InterfaceC3110w) obj).zzh();
                break;
            case 22:
                ((InterfaceC3110w) obj).zzk();
                break;
            case 23:
                ((InterfaceC3110w) obj).zzj();
                break;
            case 24:
                ((InterfaceC3068a0) obj).a();
                break;
            case 25:
                ((InterfaceC3068a0) obj).b();
                break;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                ((InterfaceC3110w) obj).zzc();
                break;
            case 27:
                ((InterfaceC1396h6) obj).a();
                break;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                ((InterfaceC1396h6) obj).b();
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public void zza(Throwable th) {
    }
}
