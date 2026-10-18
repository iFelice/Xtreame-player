package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.af, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1058af implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f17896G;

    public static int a(Context context, Map map, String str, int i8) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                p120p3.d dVar = C3097p.f26618f.f26619a;
                i8 = p120p3.d.o(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                p120p3.h.g("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        if (p113o3.I.m()) {
            StringBuilder sbQ = com.google.protobuf.U2.q("Parse pixels for ", str, ", got string ", str2, ", int ");
            sbQ.append(i8);
            sbQ.append(".");
            p113o3.I.k(sbQ.toString());
        }
        return i8;
    }

    public static void b(C0744Ge c0744Ge, Map map) {
        String str = (String) map.get("minBufferMs");
        String str2 = (String) map.get("maxBufferMs");
        String str3 = (String) map.get("bufferForPlaybackMs");
        String str4 = (String) map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = (String) map.get("socketReceiveBufferSize");
        AbstractC0699De abstractC0699De = c0744Ge.f13575M;
        if (str != null) {
            try {
                int i8 = Integer.parseInt(str);
                if (abstractC0699De != null) {
                    abstractC0699De.d(i8);
                }
            } catch (NumberFormatException unused) {
                p120p3.h.g("Could not parse buffer parameters in loadControl video GMSG: (" + str + ", " + str2 + ")");
                return;
            }
        }
        if (str2 != null) {
            int i9 = Integer.parseInt(str2);
            if (abstractC0699De != null) {
                abstractC0699De.C(i9);
            }
        }
        if (str3 != null) {
            int i10 = Integer.parseInt(str3);
            if (abstractC0699De != null) {
                abstractC0699De.A(i10);
            }
        }
        if (str4 != null) {
            int i11 = Integer.parseInt(str4);
            if (abstractC0699De != null) {
                abstractC0699De.B(i11);
            }
        }
        if (str5 != null) {
            int i12 = Integer.parseInt(str5);
            if (abstractC0699De == null) {
                return;
            }
            abstractC0699De.f(i12);
        }
    }

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        int iMin;
        int iMin2;
        int i8;
        C0744Ge c0744Ge;
        AbstractC0699De abstractC0699De;
        InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) obj;
        String str = (String) map.get("action");
        if (str == null) {
            p120p3.h.g("Action missing from video GMSG.");
            return;
        }
        Integer numValueOf = null;
        Integer numValueOf2 = map.containsKey("playerId") ? Integer.valueOf(Integer.parseInt((String) map.get("playerId"))) : null;
        Integer numZ = (interfaceC0863Oe.zzo() == null || (c0744Ge = (C0744Ge) interfaceC0863Oe.zzo().f21885K) == null || (abstractC0699De = c0744Ge.f13575M) == null) ? null : abstractC0699De.z();
        if (numValueOf2 != null && numZ != null && !numValueOf2.equals(numZ) && !str.equals("load")) {
            Locale locale = Locale.US;
            p120p3.h.f("Event intended for player " + numValueOf2 + ", but sent to player " + numZ + " - event ignored");
            return;
        }
        if (p120p3.h.j(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            p120p3.h.b("Video GMSG: " + str + " " + jSONObject.toString());
        }
        if (str.equals("background")) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                p120p3.h.g("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                interfaceC0863Oe.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                p120p3.h.g("Invalid color parameter in background video GMSG.");
                return;
            }
        }
        if (str.equals("playerBackground")) {
            String str3 = (String) map.get("color");
            if (TextUtils.isEmpty(str3)) {
                p120p3.h.g("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                interfaceC0863Oe.m(Color.parseColor(str3));
                return;
            } catch (IllegalArgumentException unused2) {
                p120p3.h.g("Invalid color parameter in playerBackground video GMSG.");
                return;
            }
        }
        int i9 = 0;
        if (str.equals("decoderProps")) {
            String str4 = (String) map.get("mimeTypes");
            if (str4 == null) {
                p120p3.h.g("No MIME types specified for decoder properties inspection.");
                HashMap map2 = new HashMap();
                map2.put("event", "decoderProps");
                map2.put("error", "missingMimeTypes");
                interfaceC0863Oe.w("onVideoEvent", map2);
                return;
            }
            HashMap map3 = new HashMap();
            String[] strArrSplit = str4.split(",");
            int length = strArrSplit.length;
            while (i9 < length) {
                String str5 = strArrSplit[i9];
                map3.put(str5, p113o3.H.a(str5.trim()));
                i9++;
            }
            HashMap map4 = new HashMap();
            map4.put("event", "decoderProps");
            map4.put("mimeTypes", map3);
            interfaceC0863Oe.w("onVideoEvent", map4);
            return;
        }
        C2246xc c2246xcZzo = interfaceC0863Oe.zzo();
        if (c2246xcZzo == null) {
            p120p3.h.g("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean zEquals = str.equals("new");
        boolean zEquals2 = str.equals("position");
        if (zEquals || zEquals2) {
            Context context = interfaceC0863Oe.getContext();
            int iA = a(context, map, "x", 0);
            int iA2 = a(context, map, "y", 0);
            int iA3 = a(context, map, "w", -1);
            J7 j8 = Q7.f15601D3;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                iMin = iA3 == -1 ? interfaceC0863Oe.zzh() : Math.min(iA3, interfaceC0863Oe.zzh());
            } else {
                if (p113o3.I.m()) {
                    StringBuilder sbD = A0.O.D("Calculate width with original width ", iA3, ", videoHost.getVideoBoundingWidth() ", interfaceC0863Oe.zzh(), ", x ");
                    sbD.append(iA);
                    sbD.append(".");
                    p113o3.I.k(sbD.toString());
                }
                iMin = Math.min(iA3, interfaceC0863Oe.zzh() - iA);
            }
            int iA4 = a(context, map, "h", -1);
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                iMin2 = iA4 == -1 ? interfaceC0863Oe.t() : Math.min(iA4, interfaceC0863Oe.t());
            } else {
                if (p113o3.I.m()) {
                    StringBuilder sbD2 = A0.O.D("Calculate height with original height ", iA4, ", videoHost.getVideoBoundingHeight() ", interfaceC0863Oe.t(), ", y ");
                    sbD2.append(iA2);
                    sbD2.append(".");
                    p113o3.I.k(sbD2.toString());
                }
                iMin2 = Math.min(iA4, interfaceC0863Oe.t() - iA2);
            }
            try {
                i8 = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused3) {
                i8 = 0;
            }
            boolean z7 = Boolean.parseBoolean((String) map.get("spherical"));
            if (!zEquals || ((C0744Ge) c2246xcZzo.f21885K) != null) {
                com.bumptech.glide.c.d("The underlay may only be modified from the UI thread.");
                C0744Ge c0744Ge2 = (C0744Ge) c2246xcZzo.f21885K;
                if (c0744Ge2 != null) {
                    c0744Ge2.a(iA, iA2, iMin, iMin2);
                    return;
                }
                return;
            }
            C0849Ne c0849Ne = new C0849Ne((String) map.get("flags"));
            if (((C0744Ge) c2246xcZzo.f21885K) == null) {
                S3.e.v((W7) ((InterfaceC0863Oe) c2246xcZzo.f21883I).zzm().f21780I, ((InterfaceC0863Oe) c2246xcZzo.f21883I).zzk(), "vpr2");
                Context context2 = (Context) c2246xcZzo.f21882H;
                InterfaceC0863Oe interfaceC0863Oe2 = (InterfaceC0863Oe) c2246xcZzo.f21883I;
                C0744Ge c0744Ge3 = new C0744Ge(context2, interfaceC0863Oe2, i8, z7, (W7) interfaceC0863Oe2.zzm().f21780I, c0849Ne);
                c2246xcZzo.f21885K = c0744Ge3;
                ((ViewGroup) c2246xcZzo.f21884J).addView(c0744Ge3, 0, new ViewGroup.LayoutParams(-1, -1));
                ((C0744Ge) c2246xcZzo.f21885K).a(iA, iA2, iMin, iMin2);
                ((InterfaceC0863Oe) c2246xcZzo.f21883I).o();
            }
            C0744Ge c0744Ge4 = (C0744Ge) c2246xcZzo.f21885K;
            if (c0744Ge4 != null) {
                b(c0744Ge4, map);
                return;
            }
            return;
        }
        BinderC0948Uf binderC0948UfZzq = interfaceC0863Oe.zzq();
        if (binderC0948UfZzq != null) {
            if (str.equals("timeupdate")) {
                String str6 = (String) map.get("currentTime");
                if (str6 == null) {
                    p120p3.h.g("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    float f8 = Float.parseFloat(str6);
                    synchronized (binderC0948UfZzq.f16858H) {
                        try {
                            binderC0948UfZzq.f16866P = f8;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (NumberFormatException unused4) {
                    p120p3.h.g("Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str6));
                    return;
                }
            }
            if (str.equals("skip")) {
                binderC0948UfZzq.n();
                return;
            }
        }
        C0744Ge c0744Ge5 = (C0744Ge) c2246xcZzo.f21885K;
        if (c0744Ge5 == null) {
            HashMap map5 = new HashMap();
            map5.put("event", "no_video_view");
            interfaceC0863Oe.w("onVideoEvent", map5);
            return;
        }
        if (str.equals("click")) {
            Context context3 = interfaceC0863Oe.getContext();
            int iA5 = a(context3, map, "x", 0);
            float fA = a(context3, map, "y", 0);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, iA5, fA, 0);
            AbstractC0699De abstractC0699De2 = c0744Ge5.f13575M;
            if (abstractC0699De2 != null) {
                abstractC0699De2.dispatchTouchEvent(motionEventObtain);
            }
            motionEventObtain.recycle();
            return;
        }
        if (str.equals("currentTime")) {
            String str7 = (String) map.get("time");
            if (str7 == null) {
                p120p3.h.g("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                int i10 = (int) (Float.parseFloat(str7) * 1000.0f);
                AbstractC0699De abstractC0699De3 = c0744Ge5.f13575M;
                if (abstractC0699De3 == null) {
                    return;
                }
                abstractC0699De3.u(i10);
                return;
            } catch (NumberFormatException unused5) {
                p120p3.h.g("Could not parse time parameter from currentTime video GMSG: ".concat(str7));
                return;
            }
        }
        if (str.equals("hide")) {
            c0744Ge5.setVisibility(4);
            return;
        }
        if (str.equals("remove")) {
            c0744Ge5.setVisibility(8);
            return;
        }
        if (str.equals("load")) {
            AbstractC0699De abstractC0699De4 = c0744Ge5.f13575M;
            if (abstractC0699De4 == null) {
                return;
            }
            if (TextUtils.isEmpty(c0744Ge5.f13582T)) {
                c0744Ge5.c("no_src", new String[0]);
                return;
            } else {
                abstractC0699De4.g(c0744Ge5.f13582T, c0744Ge5.f13583U, numValueOf2);
                return;
            }
        }
        if (str.equals("loadControl")) {
            b(c0744Ge5, map);
            return;
        }
        if (str.equals("muted")) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                AbstractC0699De abstractC0699De5 = c0744Ge5.f13575M;
                if (abstractC0699De5 == null) {
                    return;
                }
                C0905Re c0905Re = abstractC0699De5.f12836H;
                c0905Re.f16275e = true;
                c0905Re.a();
                abstractC0699De5.zzn();
                return;
            }
            AbstractC0699De abstractC0699De6 = c0744Ge5.f13575M;
            if (abstractC0699De6 == null) {
                return;
            }
            C0905Re c0905Re2 = abstractC0699De6.f12836H;
            c0905Re2.f16275e = false;
            c0905Re2.a();
            abstractC0699De6.zzn();
            return;
        }
        if (str.equals("pause")) {
            AbstractC0699De abstractC0699De7 = c0744Ge5.f13575M;
            if (abstractC0699De7 == null) {
                return;
            }
            abstractC0699De7.s();
            return;
        }
        if (str.equals("play")) {
            AbstractC0699De abstractC0699De8 = c0744Ge5.f13575M;
            if (abstractC0699De8 == null) {
                return;
            }
            abstractC0699De8.t();
            return;
        }
        if (str.equals("show")) {
            c0744Ge5.setVisibility(0);
            return;
        }
        if (str.equals("src")) {
            String str8 = (String) map.get("src");
            if (map.containsKey("periodicReportIntervalMs")) {
                try {
                    numValueOf = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                } catch (NumberFormatException unused6) {
                    p120p3.h.g("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf((String) map.get("periodicReportIntervalMs"))));
                }
            }
            String[] strArr = {str8};
            String str9 = (String) map.get("demuxed");
            if (str9 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str9);
                    String[] strArr2 = new String[jSONArray.length()];
                    while (i9 < jSONArray.length()) {
                        strArr2[i9] = jSONArray.getString(i9);
                        i9++;
                    }
                    strArr = strArr2;
                } catch (JSONException unused7) {
                    p120p3.h.g("Malformed demuxed URL list for playback: ".concat(str9));
                    strArr = new String[]{str8};
                }
            }
            if (numValueOf != null) {
                interfaceC0863Oe.v(numValueOf.intValue());
            }
            c0744Ge5.f13582T = str8;
            c0744Ge5.f13583U = strArr;
            return;
        }
        if (str.equals("touchMove")) {
            Context context4 = interfaceC0863Oe.getContext();
            int iA6 = a(context4, map, "dx", 0);
            int iA7 = a(context4, map, "dy", 0);
            float f9 = iA6;
            float f10 = iA7;
            AbstractC0699De abstractC0699De9 = c0744Ge5.f13575M;
            if (abstractC0699De9 != null) {
                abstractC0699De9.y(f9, f10);
            }
            if (this.f17896G) {
                return;
            }
            interfaceC0863Oe.n();
            this.f17896G = true;
            return;
        }
        if (!str.equals("volume")) {
            if (str.equals("watermark")) {
                c0744Ge5.k();
                return;
            } else {
                p120p3.h.g("Unknown video action: ".concat(str));
                return;
            }
        }
        String str10 = (String) map.get("volume");
        if (str10 == null) {
            p120p3.h.g("Level parameter missing from volume video GMSG.");
            return;
        }
        try {
            float f11 = Float.parseFloat(str10);
            AbstractC0699De abstractC0699De10 = c0744Ge5.f13575M;
            if (abstractC0699De10 == null) {
                return;
            }
            C0905Re c0905Re3 = abstractC0699De10.f12836H;
            c0905Re3.f16276f = f11;
            c0905Re3.a();
            abstractC0699De10.zzn();
        } catch (NumberFormatException unused8) {
            p120p3.h.g("Could not parse volume parameter from volume video GMSG: ".concat(str10));
        }
    }
}
