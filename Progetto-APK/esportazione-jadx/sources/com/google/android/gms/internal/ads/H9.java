package com.google.android.gms.internal.ads;

import C2.C0091g;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.IBinder;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.api.Service;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class H9 implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13728G;

    public /* synthetic */ H9(int i8) {
        this.f13728G = i8;
    }

    private static void a(Object obj, Map map) {
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
        String str = (String) map.get("action");
        if (!"tick".equals(str)) {
            if ("experiment".equals(str)) {
                String str2 = (String) map.get("value");
                if (TextUtils.isEmpty(str2)) {
                    p120p3.h.g("No value given for CSI experiment.");
                    return;
                } else {
                    ((W7) interfaceC0715Ef.zzm().f21780I).b("e", str2);
                    return;
                }
            }
            if ("extra".equals(str)) {
                String str3 = (String) map.get("name");
                String str4 = (String) map.get("value");
                if (TextUtils.isEmpty(str4)) {
                    p120p3.h.g("No value given for CSI extra.");
                    return;
                } else if (TextUtils.isEmpty(str3)) {
                    p120p3.h.g("No name given for CSI extra.");
                    return;
                } else {
                    ((W7) interfaceC0715Ef.zzm().f21780I).b(str3, str4);
                    return;
                }
            }
            return;
        }
        String str5 = (String) map.get("label");
        String str6 = (String) map.get("start_label");
        String str7 = (String) map.get("timestamp");
        if (TextUtils.isEmpty(str5)) {
            p120p3.h.g("No label given for CSI tick.");
            return;
        }
        if (TextUtils.isEmpty(str7)) {
            p120p3.h.g("No timestamp given for CSI tick.");
            return;
        }
        try {
            long j8 = Long.parseLong(str7);
            p083k3.l lVar = p083k3.l.f25980A;
            lVar.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            lVar.f25990j.getClass();
            long jElapsedRealtime = (j8 - jCurrentTimeMillis) + SystemClock.elapsedRealtime();
            if (true == TextUtils.isEmpty(str6)) {
                str6 = "native:view_load";
            }
            C2218x c2218xZzm = interfaceC0715Ef.zzm();
            U7 u7 = (U7) ((Map) c2218xZzm.f21779H).get(str6);
            String[] strArr = {str5};
            if (u7 != null) {
                ((W7) c2218xZzm.f21780I).c(u7, jElapsedRealtime, strArr);
            }
            ((Map) c2218xZzm.f21779H).put(str5, new U7(jElapsedRealtime, null, null));
        } catch (NumberFormatException e8) {
            p120p3.h.h("Malformed timestamp for CSI tick.", e8);
        }
    }

    private static void b(Object obj) {
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
        p000a.x xVar = p083k3.l.f25980A.f25997q;
        Context context = interfaceC0715Ef.getContext();
        synchronized (xVar) {
            xVar.f8622d = interfaceC0715Ef;
            if (!xVar.g(context)) {
                xVar.e("Unable to bind", "on_play_store_bind");
                return;
            }
            HashMap map = new HashMap();
            map.put("action", "fetch_completed");
            xVar.d("on_play_store_bind", map);
        }
    }

    public static final Integer c(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt((String) map.get(str)));
        } catch (NumberFormatException unused) {
            p120p3.h.g("Precache invalid numeric parameter '" + str + "': " + ((String) map.get(str)));
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:84:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:97:0x022f  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        Intent uri;
        ResolveInfo resolveInfoResolveActivity;
        Xu xu;
        Xu xu2;
        Xu xu3;
        String str;
        BinderC0948Uf binderC0948Uf;
        AbstractC1522jf abstractC1522jf;
        C1110bf c1110bf;
        C1574kf c1574kf;
        AbstractC1522jf c1678mf;
        JSONObject jSONObjectZzo = null;
        C1110bf c1110bf2 = null;
        str = null;
        String str2 = null;
        JSONObject jSONObjectZzp = null;
        int i8 = 0;
        switch (this.f13728G) {
            case 0:
                a(obj, map);
                return;
            case 1:
                InterfaceC0976Wf interfaceC0976Wf = (InterfaceC0976Wf) obj;
                H9 h9 = M9.f14657a;
                String str3 = (String) map.get("urls");
                if (TextUtils.isEmpty(str3)) {
                    p120p3.h.g("URLs missing in canOpenURLs GMSG.");
                    return;
                }
                String[] strArrSplit = str3.split(",");
                HashMap map2 = new HashMap();
                PackageManager packageManager = interfaceC0976Wf.getContext().getPackageManager();
                for (String str4 : strArrSplit) {
                    String[] strArrSplit2 = str4.split(";", 2);
                    Boolean boolValueOf = Boolean.valueOf(packageManager.resolveActivity(new Intent(strArrSplit2.length > 1 ? strArrSplit2[1].trim() : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0].trim())), 65536) != null);
                    map2.put(str4, boolValueOf);
                    p113o3.I.k("/canOpenURLs;" + str4 + ";" + boolValueOf);
                }
                ((InterfaceC1984sa) interfaceC0976Wf).w("openableURLs", map2);
                return;
            case 2:
                InterfaceC0976Wf interfaceC0976Wf2 = (InterfaceC0976Wf) obj;
                H9 h10 = M9.f14657a;
                if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.A7)).booleanValue()) {
                    p120p3.h.g("canOpenAppGmsgHandler disabled.");
                    return;
                }
                String str5 = (String) map.get("package_name");
                if (TextUtils.isEmpty(str5)) {
                    p120p3.h.g("Package name missing in canOpenApp GMSG.");
                    return;
                }
                HashMap map3 = new HashMap();
                Boolean boolValueOf2 = Boolean.valueOf(interfaceC0976Wf2.getContext().getPackageManager().getLaunchIntentForPackage(str5) != null);
                map3.put(str5, boolValueOf2);
                p113o3.I.k("/canOpenApp;" + str5 + ";" + boolValueOf2);
                ((InterfaceC1984sa) interfaceC0976Wf2).w("openableApp", map3);
                return;
            case 3:
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                H9 h11 = M9.f14657a;
                String str6 = (String) map.get("tx");
                String str7 = (String) map.get("ty");
                String str8 = (String) map.get("td");
                try {
                    int i9 = Integer.parseInt(str6);
                    int i10 = Integer.parseInt(str7);
                    int i11 = Integer.parseInt(str8);
                    H4 h4T = interfaceC0715Ef.T();
                    if (h4T != null) {
                        h4T.f13700b.zzl(i9, i10, i11);
                        return;
                    }
                    return;
                } catch (NumberFormatException unused) {
                    p120p3.h.g("Could not parse touch parameters from gmsg.");
                    return;
                }
            case 4:
                InterfaceC0976Wf interfaceC0976Wf3 = (InterfaceC0976Wf) obj;
                PackageManager packageManager2 = interfaceC0976Wf3.getContext().getPackageManager();
                try {
                    try {
                        JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                        JSONObject jSONObject = new JSONObject();
                        int i12 = 0;
                        while (i12 < jSONArray.length()) {
                            try {
                                JSONObject jSONObject2 = jSONArray.getJSONObject(i12);
                                String strOptString = jSONObject2.optString("id");
                                String strOptString2 = jSONObject2.optString("u");
                                String strOptString3 = jSONObject2.optString("i");
                                String strOptString4 = jSONObject2.optString("m");
                                String strOptString5 = jSONObject2.optString("p");
                                String strOptString6 = jSONObject2.optString("c");
                                String strOptString7 = jSONObject2.optString("intent_url");
                                if (TextUtils.isEmpty(strOptString7)) {
                                    uri = null;
                                } else {
                                    try {
                                        uri = Intent.parseUri(strOptString7, i8);
                                    } catch (URISyntaxException e8) {
                                        p120p3.h.e("Error parsing the url: ".concat(String.valueOf(strOptString7)), e8);
                                        uri = null;
                                    }
                                }
                                if (uri == null) {
                                    uri = new Intent();
                                    if (!TextUtils.isEmpty(strOptString2)) {
                                        uri.setData(Uri.parse(strOptString2));
                                    }
                                    if (!TextUtils.isEmpty(strOptString3)) {
                                        uri.setAction(strOptString3);
                                    }
                                    if (!TextUtils.isEmpty(strOptString4)) {
                                        uri.setType(strOptString4);
                                    }
                                    if (!TextUtils.isEmpty(strOptString5)) {
                                        uri.setPackage(strOptString5);
                                    }
                                    if (!TextUtils.isEmpty(strOptString6)) {
                                        String[] strArrSplit3 = strOptString6.split(MqttTopic.TOPIC_LEVEL_SEPARATOR, 2);
                                        if (strArrSplit3.length == 2) {
                                            uri.setComponent(new ComponentName(strArrSplit3[0], strArrSplit3[1]));
                                        }
                                    }
                                }
                                Intent intent = uri;
                                try {
                                    resolveInfoResolveActivity = packageManager2.resolveActivity(intent, 65536);
                                } catch (NullPointerException e9) {
                                    p083k3.l.f25980A.f25987g.i(intent.toString(), e9);
                                    resolveInfoResolveActivity = null;
                                }
                                try {
                                    jSONObject.put(strOptString, resolveInfoResolveActivity != null);
                                } catch (JSONException e10) {
                                    p120p3.h.e("Error constructing openable urls response.", e10);
                                }
                            } catch (JSONException e11) {
                                p120p3.h.e("Error parsing the intent data.", e11);
                            }
                            i12++;
                            i8 = 0;
                            break;
                        }
                        ((InterfaceC1984sa) interfaceC0976Wf3).b(jSONObject, "openableIntents");
                        return;
                    } catch (JSONException unused2) {
                        ((InterfaceC1984sa) interfaceC0976Wf3).b(new JSONObject(), "openableIntents");
                        return;
                    }
                } catch (JSONException unused3) {
                    ((InterfaceC1984sa) interfaceC0976Wf3).b(new JSONObject(), "openableIntents");
                    return;
                }
            case 5:
                InterfaceC0976Wf interfaceC0976Wf4 = (InterfaceC0976Wf) obj;
                H9 h12 = M9.f14657a;
                String str9 = (String) map.get("u");
                if (str9 == null) {
                    p120p3.h.g("URL missing from httpTrack GMSG.");
                    return;
                } else {
                    new p113o3.y(interfaceC0976Wf4.getContext(), ((InterfaceC0715Ef) interfaceC0976Wf4).zzn().f28196G, str9).b();
                    return;
                }
            case 6:
                InterfaceC0715Ef interfaceC0715Ef2 = (InterfaceC0715Ef) obj;
                WindowManager windowManager = (WindowManager) interfaceC0715Ef2.getContext().getSystemService("window");
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                int i13 = displayMetrics.widthPixels;
                int i14 = displayMetrics.heightPixels;
                int[] iArr = new int[2];
                HashMap map4 = new HashMap();
                ((View) interfaceC0715Ef2).getLocationInWindow(iArr);
                map4.put("xInPixels", Integer.valueOf(iArr[0]));
                com.google.protobuf.U2.s(iArr[1], map4, "yInPixels", i13, "windowWidthInPixels");
                map4.put("windowHeightInPixels", Integer.valueOf(i14));
                interfaceC0715Ef2.w("locationReady", map4);
                p120p3.h.g("GET LOCATION COMPILED");
                return;
            case 7:
                InterfaceC0715Ef interfaceC0715Ef3 = (InterfaceC0715Ef) obj;
                L8 l8I = interfaceC0715Ef3.I();
                if (l8I != null) {
                    C2218x c2218x = (C2218x) l8I;
                    switch (c2218x.f21778G) {
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            jSONObjectZzo = ((InterfaceViewOnClickListenerC1220dm) c2218x.f21779H).zzo();
                            break;
                    }
                    if (jSONObjectZzo != null) {
                        interfaceC0715Ef3.b(jSONObjectZzo, "nativeAdViewSignalsReady");
                        return;
                    }
                }
                interfaceC0715Ef3.b(new JSONObject(), "nativeAdViewSignalsReady");
                return;
            case 8:
                InterfaceC0715Ef interfaceC0715Ef4 = (InterfaceC0715Ef) obj;
                L8 l8I2 = interfaceC0715Ef4.I();
                if (l8I2 != null) {
                    C2218x c2218x2 = (C2218x) l8I2;
                    switch (c2218x2.f21778G) {
                        case 23:
                            jSONObjectZzp = (JSONObject) c2218x2.f21779H;
                            break;
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            jSONObjectZzp = ((InterfaceViewOnClickListenerC1220dm) c2218x2.f21779H).zzp();
                            break;
                    }
                    if (jSONObjectZzp != null) {
                        interfaceC0715Ef4.b(jSONObjectZzp, "nativeClickMetaReady");
                        return;
                    }
                }
                interfaceC0715Ef4.b(new JSONObject(), "nativeClickMetaReady");
                return;
            case 9:
                b(obj);
                return;
            case 10:
                InterfaceC0715Ef interfaceC0715Ef5 = (InterfaceC0715Ef) obj;
                if (TextUtils.isEmpty((CharSequence) map.get("appId"))) {
                    p113o3.I.k("Missing App Id, cannot show LMD Overlay without it");
                    return;
                }
                C1181cz c1181cz = new C1181cz();
                c1181cz.f18283c = 8388691;
                byte b8 = (byte) (c1181cz.f18287g | 1);
                c1181cz.f18284d = -1.0f;
                c1181cz.f18287g = (byte) (((byte) (((byte) (b8 | 2)) | 4)) | 8);
                c1181cz.f18282b = (String) map.get("appId");
                c1181cz.f18285e = interfaceC0715Ef5.getWidth();
                c1181cz.f18287g = (byte) (c1181cz.f18287g | 16);
                IBinder windowToken = interfaceC0715Ef5.j().getWindowToken();
                if (windowToken == null) {
                    throw new NullPointerException("Null windowToken");
                }
                c1181cz.f18281a = windowToken;
                if (map.containsKey("gravityX") && map.containsKey("gravityY")) {
                    c1181cz.f18283c = Integer.parseInt((String) map.get("gravityX")) | Integer.parseInt((String) map.get("gravityY"));
                    c1181cz.f18287g = (byte) (c1181cz.f18287g | 1);
                } else {
                    c1181cz.f18283c = 81;
                    c1181cz.f18287g = (byte) (c1181cz.f18287g | 1);
                }
                if (map.containsKey("verticalMargin")) {
                    c1181cz.f18284d = Float.parseFloat((String) map.get("verticalMargin"));
                    c1181cz.f18287g = (byte) (c1181cz.f18287g | 2);
                } else {
                    c1181cz.f18284d = 0.02f;
                    c1181cz.f18287g = (byte) (c1181cz.f18287g | 2);
                }
                if (map.containsKey("enifd")) {
                    c1181cz.f18286f = (String) map.get("enifd");
                }
                try {
                    p083k3.l.f25980A.f25997q.f(interfaceC0715Ef5, c1181cz.a());
                    return;
                } catch (NullPointerException e12) {
                    p083k3.l.f25980A.f25987g.i("DefaultGmsgHandlers.ShowLMDOverlay", e12);
                    p113o3.I.k("Missing parameters for LMD Overlay show request");
                    return;
                }
            case 11:
                p000a.x xVar = p083k3.l.f25980A.f25997q;
                if (!xVar.f8619a || (xu = (Xu) xVar.f8623e) == null) {
                    p113o3.I.k("LastMileDelivery not connected");
                    return;
                } else {
                    ((C1542jz) xu.f17529H).a(1, (C0091g) xVar.f8624f, xVar.h());
                    xVar.d("onLMDOverlayExpand", new HashMap());
                    return;
                }
            case 12:
                p000a.x xVar2 = p083k3.l.f25980A.f25997q;
                if (!xVar2.f8619a || (xu2 = (Xu) xVar2.f8623e) == null) {
                    p113o3.I.k("LastMileDelivery not connected");
                    return;
                } else {
                    ((C1542jz) xu2.f17529H).a(2, (C0091g) xVar2.f8624f, xVar2.h());
                    xVar2.d("onLMDOverlayCollapse", new HashMap());
                    return;
                }
            case 13:
                p000a.x xVar3 = p083k3.l.f25980A.f25997q;
                if (!xVar3.f8619a || (xu3 = (Xu) xVar3.f8623e) == null) {
                    p113o3.I.k("LastMileDelivery not connected");
                    return;
                }
                if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.Na)).booleanValue() || TextUtils.isEmpty((String) xVar3.f8621c)) {
                    String str10 = (String) xVar3.f8620b;
                    if (str10 != null) {
                        str2 = str10;
                        str = null;
                    } else {
                        xVar3.e("Missing session token and/or appId", "onLMDupdate");
                        str = null;
                    }
                } else {
                    str = (String) xVar3.f8621c;
                }
                C1129bz c1129bz = new C1129bz(str2, str);
                C0091g c0091g = (C0091g) xVar3.f8624f;
                C1542jz c1542jz = (C1542jz) xu3.f17529H;
                C1854pz c1854pz = c1542jz.f19540a;
                if (c1854pz == null) {
                    C1542jz.f19538c.b("error: %s", "Play Store not found.");
                    return;
                } else {
                    if (C1542jz.c(c0091g, "Failed to apply OverlayDisplayDismissRequest: missing appId and sessionToken.", Arrays.asList(str2, str))) {
                        c1854pz.a(new RunnableC1698mz(c1854pz, new K.a(c1542jz, c1129bz, c0091g, 24, 0), 1));
                        return;
                    }
                    return;
                }
            case 14:
                InterfaceC0715Ef interfaceC0715Ef6 = (InterfaceC0715Ef) obj;
                try {
                    Ty.f(interfaceC0715Ef6.getContext()).g();
                    Uy.g(interfaceC0715Ef6.getContext()).h();
                    return;
                } catch (IOException e13) {
                    p083k3.l.f25980A.f25987g.i("DefaultGmsgHandlers.ResetPaid", e13);
                    return;
                }
            case 15:
                InterfaceC0715Ef interfaceC0715Ef7 = (InterfaceC0715Ef) obj;
                try {
                    String str11 = (String) map.get("enabled");
                    if (!p113o3.r.F("true", str11) && !p113o3.r.F("false", str11)) {
                        return;
                    }
                    Uy.g(interfaceC0715Ef7.getContext()).f16568f.a(Boolean.valueOf(Boolean.parseBoolean(str11)), "paidv2_user_option");
                    return;
                } catch (IOException e14) {
                    p083k3.l.f25980A.f25987g.i("DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled", e14);
                    return;
                }
            case 16:
                InterfaceC0715Ef interfaceC0715Ef8 = (InterfaceC0715Ef) obj;
                try {
                    JSONObject jSONObject3 = new JSONObject((String) map.get("args"));
                    Iterator<String> itKeys = jSONObject3.keys();
                    SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(interfaceC0715Ef8.getContext()).edit();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        Object obj2 = jSONObject3.get(next);
                        if (obj2 instanceof Integer) {
                            editorEdit.putInt(next, ((Integer) obj2).intValue());
                        } else if (obj2 instanceof Long) {
                            editorEdit.putLong(next, ((Long) obj2).longValue());
                        } else if (obj2 instanceof Double) {
                            editorEdit.putFloat(next, ((Double) obj2).floatValue());
                        } else if (obj2 instanceof Float) {
                            editorEdit.putFloat(next, ((Float) obj2).floatValue());
                        } else if (obj2 instanceof Boolean) {
                            editorEdit.putBoolean(next, ((Boolean) obj2).booleanValue());
                        } else if (obj2 instanceof String) {
                            editorEdit.putString(next, (String) obj2);
                        }
                    }
                    editorEdit.apply();
                    return;
                } catch (JSONException e15) {
                    p083k3.l.f25980A.f25987g.i("GMSG write local storage KV pairs handler", e15);
                    return;
                }
            case 17:
                InterfaceC0715Ef interfaceC0715Ef9 = (InterfaceC0715Ef) obj;
                try {
                    JSONArray jSONArray2 = new JSONArray((String) map.get("args"));
                    SharedPreferences.Editor editorEdit2 = PreferenceManager.getDefaultSharedPreferences(interfaceC0715Ef9.getContext()).edit();
                    while (i8 < jSONArray2.length()) {
                        editorEdit2.remove(jSONArray2.getString(i8));
                        i8++;
                    }
                    editorEdit2.apply();
                    return;
                } catch (JSONException e16) {
                    p083k3.l.f25980A.f25987g.i("GMSG clear local storage keys handler", e16);
                    return;
                }
            case 18:
                InterfaceC0715Ef interfaceC0715Ef10 = (InterfaceC0715Ef) obj;
                if (interfaceC0715Ef10.y0() != null) {
                    ((BinderC1228dv) interfaceC0715Ef10.y0()).z3(3);
                }
                p105n3.k kVarB = interfaceC0715Ef10.B();
                if (kVarB != null) {
                    kVarB.zzb();
                    return;
                }
                p105n3.k kVarR = interfaceC0715Ef10.r();
                if (kVarR != null) {
                    kVarR.zzb();
                    return;
                } else {
                    p120p3.h.g("A GMSG tried to close something that wasn't an overlay.");
                    return;
                }
            case 19:
                ((InterfaceC0715Ef) obj).O0("1".equals(map.get("custom_close")));
                return;
            case 20:
                p120p3.h.f("Received log message: ".concat(String.valueOf((String) map.get("string"))));
                return;
            case 21:
                L8 l8I3 = ((InterfaceC0715Ef) obj).I();
                if (l8I3 != null) {
                    l8I3.zzc();
                    return;
                }
                return;
            case 22:
                ((InterfaceC0715Ef) obj).W(!Boolean.parseBoolean((String) map.get("disabled")));
                return;
            case 23:
                InterfaceC0715Ef interfaceC0715Ef11 = (InterfaceC0715Ef) obj;
                String str12 = (String) map.get("action");
                if ("pause".equals(str12)) {
                    interfaceC0715Ef11.i();
                    return;
                } else {
                    if ("resume".equals(str12)) {
                        interfaceC0715Ef11.a();
                        return;
                    }
                    return;
                }
            case 24:
                InterfaceC0715Ef interfaceC0715Ef12 = (InterfaceC0715Ef) obj;
                if (map.keySet().contains("start")) {
                    AbstractC0990Xf abstractC0990XfZzN = interfaceC0715Ef12.zzN();
                    synchronized (abstractC0990XfZzN.f17460J) {
                        break;
                    }
                    abstractC0990XfZzN.f17483g0++;
                    abstractC0990XfZzN.M();
                    return;
                }
                if (map.keySet().contains("stop")) {
                    AbstractC0990Xf abstractC0990XfZzN2 = interfaceC0715Ef12.zzN();
                    abstractC0990XfZzN2.f17483g0--;
                    abstractC0990XfZzN2.M();
                    return;
                } else {
                    if (map.keySet().contains("cancel")) {
                        AbstractC0990Xf abstractC0990XfZzN3 = interfaceC0715Ef12.zzN();
                        C2173w6 c2173w6 = abstractC0990XfZzN3.f17458H;
                        if (c2173w6 != null) {
                            c2173w6.b(10005);
                        }
                        abstractC0990XfZzN3.f17482f0 = true;
                        abstractC0990XfZzN3.f17470T = 10004;
                        abstractC0990XfZzN3.f17471U = "Page loaded delay cancel.";
                        abstractC0990XfZzN3.M();
                        abstractC0990XfZzN3.f17457G.destroy();
                        return;
                    }
                    return;
                }
            case 25:
                InterfaceC0715Ef interfaceC0715Ef13 = (InterfaceC0715Ef) obj;
                if (map.keySet().contains("start")) {
                    interfaceC0715Ef13.K0(true);
                }
                if (map.keySet().contains("stop")) {
                    interfaceC0715Ef13.K0(false);
                    return;
                }
                return;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) obj;
                BinderC0948Uf binderC0948UfZzq = interfaceC0863Oe.zzq();
                if (binderC0948UfZzq == null) {
                    try {
                        BinderC0948Uf binderC0948Uf2 = new BinderC0948Uf(interfaceC0863Oe, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                        interfaceC0863Oe.k(binderC0948Uf2);
                        binderC0948Uf = binderC0948Uf2;
                    } catch (NullPointerException e17) {
                        e = e17;
                        p120p3.h.e("Unable to parse videoMeta message.", e);
                        p083k3.l.f25980A.f25987g.i("VideoMetaGmsgHandler.onGmsg", e);
                        return;
                    } catch (NumberFormatException e18) {
                        e = e18;
                        p120p3.h.e("Unable to parse videoMeta message.", e);
                        p083k3.l.f25980A.f25987g.i("VideoMetaGmsgHandler.onGmsg", e);
                        return;
                    }
                } else {
                    binderC0948Uf = binderC0948UfZzq;
                }
                float f8 = Float.parseFloat((String) map.get("duration"));
                boolean zEquals = "1".equals(map.get("muted"));
                float f9 = Float.parseFloat((String) map.get("currentTime"));
                int i15 = Integer.parseInt((String) map.get("playbackState"));
                int i16 = (i15 < 0 || i15 > 3) ? 0 : i15;
                String str13 = (String) map.get("aspectRatio");
                float f10 = TextUtils.isEmpty(str13) ? 0.0f : Float.parseFloat(str13);
                if (p120p3.h.j(3)) {
                    p120p3.h.b("Video Meta GMSG: currentTime : " + f9 + " , duration : " + f8 + " , isMuted : " + zEquals + " , playbackState : " + i16 + " , aspectRatio : " + str13);
                }
                binderC0948Uf.A3(f9, f8, i16, zEquals, f10);
                return;
            case 27:
                InterfaceC0863Oe interfaceC0863Oe2 = (InterfaceC0863Oe) obj;
                if (p120p3.h.j(3)) {
                    JSONObject jSONObject4 = new JSONObject(map);
                    jSONObject4.remove("google.afma.Notify_dt");
                    p120p3.h.b("Precache GMSG: ".concat(jSONObject4.toString()));
                }
                C1161cf c1161cf = p083k3.l.f25980A.f26005y;
                if (map.containsKey("abort")) {
                    if (c1161cf.b(interfaceC0863Oe2)) {
                        return;
                    }
                    p120p3.h.g("Precache abort but no precache task running.");
                    return;
                }
                String str14 = (String) map.get("src");
                Integer numC = c("periodicReportIntervalMs", map);
                c("exoPlayerRenderingIntervalMs", map);
                c("exoPlayerIdleIntervalMs", map);
                C0849Ne c0849Ne = new C0849Ne((String) map.get("flags"));
                if (str14 != null) {
                    String[] strArr = {str14};
                    String str15 = (String) map.get("demuxed");
                    if (str15 != null) {
                        try {
                            JSONArray jSONArray3 = new JSONArray(str15);
                            String[] strArr2 = new String[jSONArray3.length()];
                            for (int i17 = 0; i17 < jSONArray3.length(); i17++) {
                                strArr2[i17] = jSONArray3.getString(i17);
                            }
                            strArr = strArr2;
                        } catch (JSONException unused4) {
                            p120p3.h.g("Malformed demuxed URL list for precache: ".concat(str15));
                            strArr = null;
                        }
                    }
                    if (strArr == null) {
                        strArr = new String[]{str14};
                    }
                    if (c0849Ne.f14930k) {
                        Iterator it = c1161cf.f18228G.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                c1110bf = (C1110bf) it.next();
                                if (c1110bf.f18058b != interfaceC0863Oe2 || !str14.equals(c1110bf.f18060d)) {
                                }
                            }
                        }
                    } else {
                        Iterator it2 = c1161cf.f18228G.iterator();
                        do {
                            c1110bf = it2.hasNext() ? (C1110bf) it2.next() : null;
                        } while (c1110bf.f18058b != interfaceC0863Oe2);
                    }
                    if (c1110bf != null) {
                        p120p3.h.g("Precache task is already running.");
                        return;
                    }
                    if (interfaceC0863Oe2.zzj() == null) {
                        p120p3.h.g("Precache requires a dependency provider.");
                        return;
                    }
                    Integer numC2 = c("player", map);
                    if (numC2 == null) {
                        numC2 = 0;
                    }
                    if (numC != null) {
                        interfaceC0863Oe2.v(numC.intValue());
                    }
                    int iIntValue = numC2.intValue();
                    C0650Aa c0650Aa = interfaceC0863Oe2.zzj().f25934b;
                    if (iIntValue > 0) {
                        int i18 = C2145vf.f21528b0.get();
                        if (i18 < c0849Ne.f14926g) {
                            C1730nf c1730nf = new C1730nf(interfaceC0863Oe2);
                            C2145vf c2145vf = new C2145vf(interfaceC0863Oe2.getContext(), c0849Ne, (InterfaceC0863Oe) c1730nf.f19473I.get(), null);
                            p120p3.h.f("ExoPlayerAdapter initialized.");
                            c1730nf.f20175J = c2145vf;
                            c2145vf.f21538P = c1730nf;
                            c1678mf = c1730nf;
                        } else {
                            c1678mf = i18 < c0849Ne.f14921b ? new C1678mf(interfaceC0863Oe2, c0849Ne) : new C1626lf(interfaceC0863Oe2);
                        }
                    } else {
                        c1574kf = new C1574kf(interfaceC0863Oe2);
                        File cacheDir = c1574kf.f19471G.getCacheDir();
                        if (cacheDir == null) {
                            p120p3.h.g("Context.getCacheDir() returned null");
                            c1678mf = c1574kf;
                        } else {
                            int i19 = Ly.f14592d;
                            File file = new File(new File(cacheDir, "admobVideoStreams").getPath());
                            c1574kf.f19623J = file;
                            if (!file.isDirectory() && !file.mkdirs()) {
                                p120p3.h.g("Could not create preload cache directory at ".concat(String.valueOf(file.getAbsolutePath())));
                                c1574kf.f19623J = null;
                                c1678mf = c1574kf;
                            } else if (!file.setReadable(true, false) || !file.setExecutable(true, false)) {
                                c1678mf = c1574kf;
                                p120p3.h.g("Could not set cache file permissions at ".concat(String.valueOf(file.getAbsolutePath())));
                                c1574kf.f19623J = null;
                                c1678mf = c1574kf;
                            }
                        }
                    }
                    c1678mf = c1574kf;
                    new C1110bf(interfaceC0863Oe2, c1678mf, str14, strArr).b();
                    abstractC1522jf = c1678mf;
                } else {
                    for (C1110bf c1110bf3 : c1161cf.f18228G) {
                        if (c1110bf3.f18058b == interfaceC0863Oe2) {
                            c1110bf2 = c1110bf3;
                            if (c1110bf2 != null) {
                                p120p3.h.g("Precache must specify a source.");
                                return;
                            }
                            abstractC1522jf = c1110bf2.f18059c;
                        }
                    }
                    if (c1110bf2 != null) {
                        p120p3.h.g("Precache must specify a source.");
                        return;
                    }
                    abstractC1522jf = c1110bf2.f18059c;
                }
                Integer numC3 = c("minBufferMs", map);
                if (numC3 != null) {
                    abstractC1522jf.q(numC3.intValue());
                }
                Integer numC4 = c("maxBufferMs", map);
                if (numC4 != null) {
                    abstractC1522jf.p(numC4.intValue());
                }
                Integer numC5 = c("bufferForPlaybackMs", map);
                if (numC5 != null) {
                    abstractC1522jf.n(numC5.intValue());
                }
                Integer numC6 = c("bufferForPlaybackAfterRebufferMs", map);
                if (numC6 != null) {
                    abstractC1522jf.o(numC6.intValue());
                    return;
                }
                return;
            default:
                p120p3.h.b("Show native ad policy validator overlay.");
                ((InterfaceC0715Ef) obj).j().setVisibility(0);
                return;
        }
    }
}
