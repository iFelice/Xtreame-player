package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1438hx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1690mr f19189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19191c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f19192d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f19193e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Uv f19194f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Vv f19195g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final P3.a f19196h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final H4 f19197i;

    public C1438hx(C1690mr c1690mr, p120p3.a aVar, String str, String str2, Context context, Uv uv, Vv vv, P3.a aVar2, H4 h8) {
        this.f19189a = c1690mr;
        this.f19190b = aVar.f28196G;
        this.f19191c = str;
        this.f19192d = str2;
        this.f19193e = context;
        this.f19194f = uv;
        this.f19195g = vv;
        this.f19196h = aVar2;
        this.f19197i = h8;
    }

    public static String c(String str, String str2, String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        return str.replaceAll(str2, str3);
    }

    public final ArrayList a(Tv tv, Ov ov, List list) {
        return b(tv, ov, false, HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, list);
    }

    public final ArrayList b(Tv tv, Ov ov, boolean z7, String str, String str2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            boolean z8 = true;
            String strC = c(c(c((String) it.next(), "@gw_adlocid@", ((Yv) tv.f16754a.f17529H).f17679f), "@gw_adnetrefresh@", true != z7 ? "0" : "1"), "@gw_sdkver@", this.f19190b);
            if (ov != null) {
                strC = com.bumptech.glide.c.D(c(c(c(strC, "@gw_qdata@", ov.f15293y), "@gw_adnetid@", ov.f15292x), "@gw_allocid@", ov.f15290w), this.f19193e, ov.f15242W, ov.f15291w0);
            }
            C1690mr c1690mr = this.f19189a;
            String strC2 = c(c(c(c(strC, "@gw_adnetstatus@", c1690mr.c()), "@gw_ttr@", Long.toString(c1690mr.a(), 10)), "@gw_seqnum@", this.f19191c), "@gw_sessid@", this.f19192d);
            boolean z9 = false;
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15879l3)).booleanValue() && !TextUtils.isEmpty(str)) {
                z9 = true;
            }
            boolean z10 = !TextUtils.isEmpty(str2);
            if (z9) {
                z8 = z10;
            } else {
                if (z10) {
                }
                arrayList.add(strC2);
            }
            if (this.f19197i.c(Uri.parse(strC2))) {
                Uri.Builder builderBuildUpon = Uri.parse(strC2).buildUpon();
                if (z9) {
                    builderBuildUpon = builderBuildUpon.appendQueryParameter("ms", str);
                }
                if (z8) {
                    builderBuildUpon = builderBuildUpon.appendQueryParameter("attok", str2);
                }
                strC2 = builderBuildUpon.build().toString();
            }
            arrayList.add(strC2);
        }
        return arrayList;
    }
}
