package com.google.android.gms.internal.ads;

import A0.C0022w;
import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0968Vl implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17102G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f17103H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f17104I;

    public /* synthetic */ C0968Vl(int i8, Object obj, Object obj2) {
        this.f17102G = i8;
        this.f17103H = obj;
        this.f17104I = obj2;
    }

    private final void a(Map map) {
        String str = (String) map.get("id");
        String str2 = (String) map.get("fail");
        String str3 = (String) map.get("fail_reason");
        String str4 = (String) map.get("fail_stack");
        String str5 = (String) map.get("result");
        if (true == TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        String strConcat = TextUtils.isEmpty(str4) ? HttpUrl.FRAGMENT_ENCODE_SET : "\n".concat(String.valueOf(str4));
        synchronized (this.f17103H) {
            try {
                W9 w9 = (W9) ((Map) this.f17104I).remove(str);
                if (w9 == null) {
                    p120p3.h.g("Received result for unexpected method invocation: " + str);
                    return;
                }
                if (!TextUtils.isEmpty(str2)) {
                    w9.c(str3 + strConcat);
                    return;
                }
                if (str5 == null) {
                    w9.a(null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (p113o3.I.m()) {
                        p113o3.I.k("Result GMSG: " + jSONObject.toString(2));
                    }
                    w9.a(jSONObject);
                } catch (JSONException e8) {
                    w9.c(e8.getMessage());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(String str, W9 w9) {
        synchronized (this.f17103H) {
            ((Map) this.f17104I).put(str, w9);
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c8  */
    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        int i8 = 0;
        switch (this.f17102G) {
            case 0:
                ViewOnClickListenerC0982Wl viewOnClickListenerC0982Wl = (ViewOnClickListenerC0982Wl) this.f17103H;
                try {
                    viewOnClickListenerC0982Wl.f17317L = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    p120p3.h.d("Failed to call parse unconfirmedClickTimestamp.");
                }
                C2332z9 c2332z9 = (C2332z9) this.f17104I;
                viewOnClickListenerC0982Wl.f17316K = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (c2332z9 == null) {
                    p120p3.h.b("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    Parcel parcelJ0 = c2332z9.j0();
                    parcelJ0.writeString(str);
                    c2332z9.O2(1, parcelJ0);
                    return;
                } catch (RemoteException e8) {
                    p120p3.h.i("#007 Could not call remote method.", e8);
                    return;
                }
                break;
            case 1:
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                M9.b(map, (InterfaceC0869Ok) this.f17103H);
                String str2 = (String) map.get("u");
                if (str2 == null) {
                    p120p3.h.g("URL missing from click GMSG.");
                    return;
                }
                C1784oh c1784oh = (C1784oh) this.f17104I;
                AbstractC1040aC abstractC1040aCR = AbstractC1040aC.r(M9.a(interfaceC0715Ef, str2));
                J9 j9 = new J9(c1784oh, str2, i8);
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.h2(Cw.d2(abstractC1040aCR, j9, c1936re), new L9(interfaceC0715Ef), c1936re);
                return;
            case 2:
                p083k3.l lVar = p083k3.l.f25980A;
                C0890Qd c0890Qd = lVar.f26003w;
                Context context = (Context) this.f17103H;
                if (c0890Qd.e(context)) {
                    String str3 = (String) map.get("eventName");
                    String str4 = (String) map.get("eventId");
                    int iHashCode = str3.hashCode();
                    if (iHashCode != 94399) {
                        if (iHashCode != 94401) {
                            if (iHashCode == 94407 && str3.equals("_ai")) {
                                i8 = 1;
                            } else {
                                i8 = -1;
                            }
                        } else if (!str3.equals("_ac")) {
                            i8 = -1;
                        }
                    } else if (str3.equals("_aa")) {
                        i8 = 2;
                    } else {
                        i8 = -1;
                    }
                    Object obj2 = this.f17104I;
                    if (i8 == 0) {
                        C0890Qd c0890Qd2 = lVar.f26003w;
                        Map map2 = (Map) ((Map) obj2).get("_ac");
                        c0890Qd2.getClass();
                        c0890Qd2.k(context, "_ac", str4, C0890Qd.f(map2));
                        return;
                    }
                    if (i8 != 1) {
                        if (i8 != 2) {
                            p120p3.h.d("logScionEvent gmsg contained unsupported eventName");
                            return;
                        } else {
                            lVar.f26003w.k(context, "_aa", str4, null);
                            return;
                        }
                    }
                    C0890Qd c0890Qd3 = lVar.f26003w;
                    Map map3 = (Map) ((Map) obj2).get("_ai");
                    c0890Qd3.getClass();
                    c0890Qd3.k(context, "_ai", str4, C0890Qd.f(map3));
                    return;
                }
                return;
            case 3:
                a(map);
                return;
            case 4:
                C1376gn c1376gn = (C1376gn) this.f17103H;
                InterfaceC0715Ef interfaceC0715Ef2 = (InterfaceC0715Ef) this.f17104I;
                C0672Bh c0672Bh = c1376gn.f18985i;
                synchronized (c0672Bh) {
                    c0672Bh.f12473I.add(interfaceC0715Ef2);
                    C2251xh c2251xh = c0672Bh.f12471G;
                    interfaceC0715Ef2.L0("/updateActiveView", c2251xh.f21910e);
                    interfaceC0715Ef2.L0("/untrackActiveViewUnit", c2251xh.f21911f);
                }
                return;
            default:
                InterfaceC0715Ef interfaceC0715Ef3 = (InterfaceC0715Ef) obj;
                String str5 = (String) map.get("u");
                if (str5 == null) {
                    p120p3.h.g("URL missing from httpTrack GMSG.");
                    return;
                } else {
                    if (!interfaceC0715Ef3.f().f15263i0) {
                        ((C1488ix) this.f17103H).a(str5, null);
                        return;
                    }
                    C1172cq c1172cq = (C1172cq) this.f17104I;
                    p083k3.l.f25980A.f25990j.getClass();
                    c1172cq.E(new C0022w(System.currentTimeMillis(), 2, interfaceC0715Ef3.U().f16150b, str5));
                    return;
                }
        }
    }

    public C0968Vl() {
        this.f17102G = 3;
        this.f17103H = new Object();
        this.f17104I = new HashMap();
    }
}
