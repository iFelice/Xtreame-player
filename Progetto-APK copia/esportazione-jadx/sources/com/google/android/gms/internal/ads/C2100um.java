package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;
import p113o3.C3162u;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.um, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2100um {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f21368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1685mm f21369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final H4 f21370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p120p3.a f21371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p083k3.a f21372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C2173w6 f21373f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Executor f21374g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final M8 f21375h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0707Dm f21376i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C1428hn f21377j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ScheduledExecutorService f21378k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C0983Wm f21379l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C0738Fn f21380m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C1488ix f21381n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C1172cq f21382o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final BinderC1431hq f21383p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Zv f21384q;

    public C2100um(Context context, C1685mm c1685mm, H4 h8, p120p3.a aVar, p083k3.a aVar2, C2173w6 c2173w6, C1936re c1936re, Yv yv, C0707Dm c0707Dm, C1428hn c1428hn, ScheduledExecutorService scheduledExecutorService, C0738Fn c0738Fn, C1488ix c1488ix, C1172cq c1172cq, C0983Wm c0983Wm, BinderC1431hq binderC1431hq, Zv zv) {
        this.f21368a = context;
        this.f21369b = c1685mm;
        this.f21370c = h8;
        this.f21371d = aVar;
        this.f21372e = aVar2;
        this.f21373f = c2173w6;
        this.f21374g = c1936re;
        this.f21375h = yv.f17682i;
        this.f21376i = c0707Dm;
        this.f21377j = c1428hn;
        this.f21378k = scheduledExecutorService;
        this.f21380m = c0738Fn;
        this.f21381n = c1488ix;
        this.f21382o = c1172cq;
        this.f21379l = c0983Wm;
        this.f21383p = binderC1431hq;
        this.f21384q = zv;
    }

    public static Integer d(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static final p090l3.K0 e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("reason");
        String strOptString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new p090l3.K0(strOptString, strOptString2);
    }

    public final D4.b a(JSONObject jSONObject, boolean z7) {
        if (jSONObject == null) {
            return Cw.N1(null);
        }
        final String strOptString = jSONObject.optString("url");
        if (TextUtils.isEmpty(strOptString)) {
            return Cw.N1(null);
        }
        final double dOptDouble = jSONObject.optDouble("scale", 1.0d);
        final boolean zOptBoolean = jSONObject.optBoolean("is_transparent", true);
        final int iOptInt = jSONObject.optInt("width", -1);
        final int iOptInt2 = jSONObject.optInt("height", -1);
        if (z7) {
            return Cw.N1(new K8(null, Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2));
        }
        final C1685mm c1685mm = this.f21369b;
        c1685mm.f19992a.getClass();
        C2040te c2040te = new C2040te();
        p113o3.v.f28001a.c(new C3162u(strOptString, c2040te));
        KB kbB2 = Cw.b2(Cw.b2(c2040te, new InterfaceC2165vz() { // from class: com.google.android.gms.internal.ads.lm
            @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
            public final Object apply(Object obj) {
                C1685mm c1685mm2 = c1685mm;
                c1685mm2.getClass();
                byte[] bArr = ((C2066u3) obj).f21195b;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inDensity = (int) (dOptDouble * 160.0d);
                if (!zOptBoolean) {
                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                }
                J7 j8 = Q7.f15627G5;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    options.inJustDecodeBounds = true;
                    c1685mm2.a(bArr, options);
                    options.inJustDecodeBounds = false;
                    int i8 = options.outWidth * options.outHeight;
                    if (i8 > 0) {
                        options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i8 - 1) / ((Integer) c3099q.f26627c.a(Q7.f15635H5)).intValue())) / 2);
                    }
                }
                return c1685mm2.a(bArr, options);
            }
        }, c1685mm.f19994c), new InterfaceC2165vz() { // from class: com.google.android.gms.internal.ads.rm
            @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
            public final Object apply(Object obj) {
                return new K8(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2);
            }
        }, this.f21374g);
        int i8 = 2;
        return jSONObject.optBoolean("require") ? Cw.d2(kbB2, new C1996sm(i8, kbB2), AbstractC1988se.f20911f) : Cw.D1(kbB2, Exception.class, new C1422hh(i8, 0), AbstractC1988se.f20911f);
    }

    public final D4.b b(JSONArray jSONArray, boolean z7, boolean z8) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return Cw.N1(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z8 ? jSONArray.length() : 1;
        for (int i8 = 0; i8 < length; i8++) {
            arrayList.add(a(jSONArray.optJSONObject(i8), z7));
        }
        return Cw.b2(new SB(AbstractC2073uA.t(arrayList), true), new C2064u1(7), this.f21374g);
    }

    public final JB c(JSONObject jSONObject, Ov ov, Qv qv) {
        p090l3.d1 d1Var;
        String strOptString = jSONObject.optString("base_url");
        String strOptString2 = jSONObject.optString("html");
        int i8 = 0;
        int iOptInt = jSONObject.optInt("width", 0);
        int iOptInt2 = jSONObject.optInt("height", 0);
        if (iOptInt != 0) {
            d1Var = new p090l3.d1(this.f21368a, new p043f3.g(iOptInt, iOptInt2));
        } else if (iOptInt2 != 0) {
            iOptInt = 0;
            d1Var = new p090l3.d1(this.f21368a, new p043f3.g(iOptInt, iOptInt2));
        } else {
            d1Var = p090l3.d1.l();
        }
        C0707Dm c0707Dm = this.f21376i;
        c0707Dm.getClass();
        JB jbD2 = Cw.d2(Cw.N1(null), new C2048tm(c0707Dm, d1Var, ov, qv, strOptString, strOptString2, 1), c0707Dm.f12870b);
        return Cw.d2(jbD2, new C1996sm(i8, jbD2), AbstractC1988se.f20911f);
    }
}
