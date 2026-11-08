package com.google.android.gms.internal.ads;

import D0.C0129t;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.Base64;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Va, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0957Va implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f17065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f17066c;

    public /* synthetic */ C0957Va(int i8, Object obj, Object obj2) {
        this.f17064a = i8;
        this.f17065b = obj;
        this.f17066c = obj2;
    }

    private final C1298fC a(Object obj) {
        int i8;
        int i9;
        C1851pw c1851pw;
        C1694mv c1694mv = (C1694mv) this.f17065b;
        InterfaceC1165cj interfaceC1165cj = (InterfaceC1165cj) this.f17066c;
        C1953rv c1953rv = (C1953rv) obj;
        p004a3.b bVar = c1694mv.f20018a;
        InterfaceC1954rw interfaceC1954rw = c1953rv.f20808b;
        C0973Wc c0973Wc = c1953rv.f20807a;
        synchronized (bVar) {
            try {
                C1643lw c1643lw = (C1643lw) ((ConcurrentHashMap) bVar.f8650H).get(interfaceC1954rw);
                i8 = 0;
                i9 = 1;
                c1851pw = null;
                if (c1643lw != null) {
                    C2370zw c2370zw = c1643lw.f19880d;
                    c2370zw.getClass();
                    p083k3.l.f25980A.f25990j.getClass();
                    c2370zw.f22231c = System.currentTimeMillis();
                    c2370zw.f22232d++;
                    c1643lw.a();
                    LinkedList linkedList = c1643lw.f19877a;
                    if (!linkedList.isEmpty() && (c1851pw = (C1851pw) linkedList.remove()) != null) {
                        c2370zw.f22233e++;
                        c2370zw.f22230b.f22090G = true;
                    }
                    if (c1851pw == null) {
                        ((E1.h0) bVar.f8652J).f2750e++;
                    }
                    C2318yw c2318yw = c1643lw.f19880d.f22230b;
                    C2318yw c2318ywClone = c2318yw.clone();
                    c2318yw.f22090G = false;
                    c2318yw.f22091H = 0;
                    if (c1851pw != null) {
                        C1087b7 c1087b7A = C1397h7.A();
                        Z6 z6C = C1035a7.C();
                        z6C.d();
                        C1035a7.D((C1035a7) z6C.f20255H);
                        C1190d7 c1190d7A = C1241e7.A();
                        boolean z7 = c2318ywClone.f22090G;
                        c1190d7A.d();
                        C1241e7.C((C1241e7) c1190d7A.f20255H, z7);
                        int i10 = c2318ywClone.f22091H;
                        c1190d7A.d();
                        C1241e7.D((C1241e7) c1190d7A.f20255H, i10);
                        z6C.d();
                        C1035a7.A((C1035a7) z6C.f20255H, (C1241e7) c1190d7A.b());
                        c1087b7A.d();
                        C1397h7.B((C1397h7) c1087b7A.f20255H, (C1035a7) z6C.b());
                        c1851pw.f20503a.zzb().f14536f.t((C1397h7) c1087b7A.b());
                    }
                    bVar.x();
                } else {
                    ((E1.h0) bVar.f8652J).f2749d++;
                    bVar.x();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c1851pw != null && c0973Wc != null) {
            C0823Li c0823LiZzb = interfaceC1165cj.zzb();
            Iw iw = Iw.NOTIFY_CACHE_HIT;
            C1481ip c1481ip = c0823LiZzb.f14538h;
            c1481ip.getClass();
            Fw fwC = c0823LiZzb.f14533c.b(c1481ip.a(c0973Wc, new C1378gp(c1481ip, i8), new C1378gp(c1481ip, i9), new C1422hh(5)), iw).c();
            Cw.h2(fwC, new C0793Ji(c0823LiZzb, 2), c0823LiZzb.f14540j);
            Cw.h2(fwC, c1694mv.f20020c, c1694mv.f20019b);
        }
        return Cw.N1(new C1642lv(interfaceC1954rw, c0973Wc, c1851pw));
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) throws JSONException, C0129t, C0835Mf {
        int i8;
        switch (this.f17064a) {
            case 0:
                InterfaceC0815La interfaceC0815La = (InterfaceC0815La) obj;
                interfaceC0815La.C((String) this.f17065b, (N9) this.f17066c);
                return Cw.N1(interfaceC0815La);
            case 1:
                C0957Va c0957Va = (C0957Va) this.f17065b;
                c0957Va.getClass();
                C2040te c2040te = new C2040te();
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                String string = UUID.randomUUID().toString();
                M9.f14671o.b(string, new V9(c2040te, 1));
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", string);
                jSONObject.put("args", (JSONObject) this.f17066c);
                ((InterfaceC0815La) obj).g(jSONObject, (String) c0957Va.f17065b);
                return c2040te;
            case 2:
                return Cw.d2((D4.b) this.f17066c, new C0957Va(1, this, obj), AbstractC1988se.f20911f);
            case 3:
                C1784oh c1784oh = (C1784oh) this.f17065b;
                Uri.Builder builder = (Uri.Builder) this.f17066c;
                c1784oh.getClass();
                ((IB) c1784oh.f20307e).a(new RunnableC1732nh(c1784oh, (Throwable) obj, 0));
                builder.appendQueryParameter((String) C3099q.f26624d.f26627c.a(Q7.y9), "9");
                return Cw.N1(builder.toString());
            case 4:
                C0823Li c0823Li = (C0823Li) this.f17065b;
                C1799ow c1799ow = (C1799ow) this.f17066c;
                C0973Wc c0973Wc = (C0973Wc) obj;
                c0823Li.getClass();
                c0973Wc.f17258O = c1799ow;
                C1481ip c1481ip = c0823Li.f14538h;
                c1481ip.getClass();
                int i9 = 2;
                C0694Co c0694Co = new C0694Co(c0973Wc, i9);
                Wo wo = c1481ip.f19352b;
                Objects.requireNonNull(wo);
                return c1481ip.a(c0973Wc, new C0864Of(wo, 17), new C1378gp(c1481ip, i9), c0694Co);
            case 5:
                C2100um c2100um = (C2100um) this.f17066c;
                String str = (String) this.f17065b;
                c2100um.getClass();
                C2272y1 c2272y1 = p083k3.l.f25980A.f25984d;
                InterfaceC0715Ef interfaceC0715EfE = C2272y1.e(c2100um.f21368a, new A2.i(0, 0, 0, 5), c2100um.f21371d, c2100um.f21372e, null, c2100um.f21370c, c2100um.f21373f, null, c2100um.f21383p, null, null, c2100um.f21384q, "native-omid", false, false);
                C1862q6 c1862q6 = new C1862q6(interfaceC0715EfE);
                interfaceC0715EfE.zzN().f17463M = new C0790Jf(c1862q6, 2);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15673M4)).booleanValue()) {
                    interfaceC0715EfE.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
                } else {
                    interfaceC0715EfE.loadData(str, "text/html", "UTF-8");
                }
                return c1862q6;
            case 6:
                C0707Dm c0707Dm = (C0707Dm) this.f17065b;
                JSONObject jSONObject2 = (JSONObject) this.f17066c;
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                C1621la c1621la = c0707Dm.f12869a.f17675b;
                C1862q6 c1862q7 = new C1862q6(interfaceC0715Ef);
                if (c1621la != null) {
                    i8 = 0;
                    interfaceC0715Ef.n0(new A2.i(5, 0, 0, 5));
                } else {
                    i8 = 0;
                    interfaceC0715Ef.n0(new A2.i(4, 0, 0, 5));
                }
                interfaceC0715Ef.zzN().f17463M = new C2360zm(c0707Dm, interfaceC0715Ef, c1862q7, i8);
                interfaceC0715Ef.g(jSONObject2, "google.afma.nativeAds.renderVideo");
                return c1862q7;
            case 7:
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                JSONObject jSONObject5 = new JSONObject();
                String str2 = (String) this.f17065b;
                String str3 = (String) this.f17066c;
                try {
                    jSONObject5.put("headers", new JSONObject());
                    jSONObject5.put("body", str2);
                    jSONObject4.put("base_url", HttpUrl.FRAGMENT_ENCODE_SET);
                    jSONObject4.put("signals", new JSONObject(str3));
                    jSONObject3.put("request", jSONObject4);
                    jSONObject3.put("response", jSONObject5);
                    jSONObject3.put("flags", new JSONObject());
                    return Cw.N1(jSONObject3);
                } catch (JSONException e8) {
                    throw new JSONException("Preloaded loader: ".concat(String.valueOf(e8.getCause())));
                }
            case 8:
                return ((InterfaceC1222dp) ((QJ) this.f17065b).zzb()).a((C0973Wc) this.f17066c);
            case 9:
                return Cw.N1(new Tv(new Xu(((C1999sp) this.f17065b).f20987d, 7), C2246xc.i(new InputStreamReader((InputStream) obj), (C0973Wc) this.f17066c)));
            case 10:
                C2146vg c2146vg = (C2146vg) this.f17065b;
                C0671Bg c0671Bg = c2146vg.f21550b;
                Context context = c0671Bg.f12430b.f19118b;
                Cw.N0(context);
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                K.k kVar = c2146vg.f21549a;
                Qu.a(kVar);
                Wt wt = new Wt();
                MJ mj = c0671Bg.f12436e;
                Zt zt = new Zt(wt, 0L, (ScheduledExecutorService) mj.zzb());
                ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) mj.zzb();
                C1421hg c1421hg = c0671Bg.f12430b;
                Cw.N0(c1421hg.f19118b);
                Zt zt2 = new Zt(new C2002ss(scheduledExecutorService), ((Long) C3099q.f26624d.f26627c.a(Q7.f15712R3)).longValue(), (ScheduledExecutorService) mj.zzb());
                C2272y1 c2272y2 = new C2272y1();
                Context context2 = c1421hg.f19118b;
                Cw.N0(context2);
                ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) mj.zzb();
                int i10 = kVar.f4294H;
                Object obj2 = kVar.f4295I;
                Zt zt3 = new Zt(new Ju(c2272y2, context2, scheduledExecutorService2, c1936re, i10, ((C0973Wc) obj2).f17261R, ((C0973Wc) obj2).f17260Q), 0L, (ScheduledExecutorService) mj.zzb());
                Zt zt4 = new Zt(new Mu(c1936re, 0), 0L, (ScheduledExecutorService) mj.zzb());
                Wt wt2 = new Wt(2);
                Cw.N0(c1421hg.f19118b);
                Mu mu = new Mu(c1936re);
                Cw.N0(c1936re);
                List list = ((C0973Wc) c2146vg.f21549a.f4295I).f17254K;
                Cw.N0(list);
                C2366zs c2366zs = new C2366zs(c1936re, list);
                C2366zs c2366zsA = c2146vg.a();
                Cw.N0(c1421hg.f19118b);
                MJ mj2 = c0671Bg.f12417O;
                C1625le c1625le = (C1625le) mj2.zzb();
                ScheduledExecutorService scheduledExecutorService3 = (ScheduledExecutorService) mj.zzb();
                Qu.a(kVar);
                Fs fs = new Fs(c1625le, scheduledExecutorService3, c1936re);
                InterfaceC2108uu interfaceC2108uu = (InterfaceC2108uu) c0671Bg.f12461q0.zzb();
                Qu.a(kVar);
                return new C2160vu(context, c1936re, AbstractC2333zA.t(zt, zt2, zt3, zt4, wt2, mu, c2366zs, c2366zsA, fs, interfaceC2108uu, new Fs((C1625le) mj2.zzb(), (ScheduledExecutorService) mj.zzb(), c1936re, 0)), (Tw) c2146vg.f21551c.zzb(), (C0738Fn) c0671Bg.f12469y.zzb()).a(((C0973Wc) this.f17066c).f17262S, C3097p.f26618f.f26619a.h((Bundle) obj));
            case 11:
                return ((C2160vu) this.f17065b).a(((C0973Wc) this.f17066c).f17262S, C3097p.f26618f.f26619a.h((Bundle) obj));
            case 12:
                Yq yq = (Yq) this.f17065b;
                C0941Tm c0941Tm = (C0941Tm) this.f17066c;
                JSONObject jSONObject6 = (JSONObject) obj;
                yq.getClass();
                yq.f17652d.b(Cw.N1(c0941Tm));
                if (jSONObject6.optBoolean("success")) {
                    return Cw.N1(jSONObject6.getJSONObject("json").getJSONArray("ads"));
                }
                throw new C0129t("process json failed");
            case 13:
                Yq yq2 = (Yq) this.f17065b;
                Ov ov = (Ov) this.f17066c;
                C0941Tm c0941Tm2 = (C0941Tm) obj;
                yq2.getClass();
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put("isNonagon", true);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.U7)).booleanValue() && U2.m.b()) {
                    jSONObject7.put("skipDeepLinkValidation", true);
                }
                JSONObject jSONObject8 = new JSONObject();
                jSONObject8.put("response", ov.f15282s.f16374c);
                jSONObject8.put("sdk_params", jSONObject7);
                return Cw.d2(c0941Tm2.a(jSONObject8, "google.afma.nativeAds.preProcessJson"), new C0957Va(12, yq2, c0941Tm2), yq2.f17650b);
            case 14:
                Tv tv = (Tv) obj;
                ((C1851pw) this.f17065b).f20504b = tv;
                Iterator it = ((List) tv.f16755b.f21882H).iterator();
                boolean z7 = false;
                while (it.hasNext()) {
                    Iterator it2 = ((Ov) it.next()).f15246a.iterator();
                    while (it2.hasNext()) {
                        if (!((String) it2.next()).contains("FirstPartyRenderer")) {
                            return Cw.N1(null);
                        }
                        z7 = true;
                    }
                }
                if (z7) {
                    return ((C0823Li) this.f17066c).a(Cw.N1(tv));
                }
                return Cw.N1(null);
            case 15:
                return a(obj);
            default:
                Aw aw = (Aw) this.f17065b;
                Exception exc = (Exception) obj;
                synchronized (aw) {
                    try {
                        aw.f12074d = true;
                        throw exc;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }

    public C0957Va(D4.b bVar) {
        this.f17064a = 2;
        this.f17066c = bVar;
        this.f17065b = "google.afma.activeView.handleUpdate";
    }

    public /* synthetic */ C0957Va(C2100um c2100um, String str) {
        this.f17064a = 5;
        this.f17066c = c2100um;
        this.f17065b = str;
    }

    public /* synthetic */ C0957Va(Object obj, Object obj2, int i8) {
        this.f17064a = i8;
        this.f17065b = obj;
        this.f17066c = obj2;
    }
}
