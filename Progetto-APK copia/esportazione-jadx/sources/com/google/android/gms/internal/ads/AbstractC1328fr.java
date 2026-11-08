package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.HttpUrl;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1328fr implements InterfaceC1845pq {
    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final D4.b a(Tv tv, Ov ov) {
        String strOptString = ov.f15288v.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, HttpUrl.FRAGMENT_ENCODE_SET);
        Yv yv = (Yv) tv.f16754a.f17529H;
        Xv xv = new Xv();
        xv.f17544o.f9298H = yv.f17688o.f9298H;
        p090l3.b1 b1Var = yv.f17677d;
        xv.f17530a = b1Var;
        xv.f17531b = yv.f17678e;
        xv.f17550u = yv.f17693t;
        xv.f17532c = yv.f17679f;
        xv.f17533d = yv.f17674a;
        xv.f17535f = yv.f17680g;
        xv.f17536g = yv.f17681h;
        xv.f17537h = yv.f17682i;
        xv.f17538i = yv.f17683j;
        p067i3.a aVar = yv.f17685l;
        xv.f17539j = aVar;
        if (aVar != null) {
            xv.f17534e = aVar.f25561G;
        }
        p067i3.d dVar = yv.f17686m;
        xv.f17540k = dVar;
        if (dVar != null) {
            xv.f17534e = dVar.f25570G;
            xv.f17541l = dVar.f25571H;
        }
        xv.f17545p = yv.f17689p;
        xv.f17546q = yv.f17690q;
        xv.f17547r = yv.f17676c;
        xv.f17548s = yv.f17691r;
        xv.f17549t = yv.f17692s;
        xv.f17532c = strOptString;
        Bundle bundle = b1Var.f26529S;
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        Bundle bundle3 = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        Bundle bundle4 = bundle3 == null ? new Bundle() : new Bundle(bundle3);
        bundle4.putInt("gw", 1);
        JSONObject jSONObject = ov.f15288v;
        String strOptString2 = jSONObject.optString("mad_hac", null);
        if (strOptString2 != null) {
            bundle4.putString("mad_hac", strOptString2);
        }
        String strOptString3 = jSONObject.optString("adJson", null);
        if (strOptString3 != null) {
            bundle4.putString("_ad", strOptString3);
        }
        bundle4.putBoolean("_noRefresh", true);
        JSONObject jSONObject2 = ov.f15223D;
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString4 = jSONObject2.optString(next, null);
            if (next != null) {
                bundle4.putString(next, strOptString4);
            }
        }
        bundle2.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle4);
        xv.f17530a = new p090l3.b1(b1Var.f26517G, b1Var.f26518H, bundle4, b1Var.f26520J, b1Var.f26521K, b1Var.f26522L, b1Var.f26523M, b1Var.f26524N, b1Var.f26525O, b1Var.f26526P, b1Var.f26527Q, b1Var.f26528R, bundle2, b1Var.f26530T, b1Var.f26531U, b1Var.f26532V, b1Var.f26533W, b1Var.f26534X, b1Var.f26535Y, b1Var.f26536Z, b1Var.f26537a0, b1Var.f26538b0, b1Var.f26539c0, b1Var.f26540d0, b1Var.f26541e0, b1Var.f26542f0);
        Yv yvA = xv.a();
        Bundle bundle5 = new Bundle();
        Qv qv = (Qv) tv.f16755b.f21883I;
        Bundle bundle6 = new Bundle();
        bundle6.putStringArrayList("nofill_urls", new ArrayList<>(qv.f16149a));
        bundle6.putInt("refresh_interval", qv.f16151c);
        bundle6.putString("gws_query_id", qv.f16150b);
        bundle5.putBundle("parent_common_config", bundle6);
        Yv yv2 = (Yv) tv.f16754a.f17529H;
        Bundle bundle7 = new Bundle();
        bundle7.putString("initial_ad_unit_id", yv2.f17679f);
        bundle7.putString("allocation_id", ov.f15290w);
        bundle7.putString("ad_source_name", ov.f15225F);
        bundle7.putStringArrayList("click_urls", new ArrayList<>(ov.f15250c));
        bundle7.putStringArrayList("imp_urls", new ArrayList<>(ov.f15252d));
        bundle7.putStringArrayList("manual_tracking_urls", new ArrayList<>(ov.f15276p));
        bundle7.putStringArrayList("fill_urls", new ArrayList<>(ov.f15270m));
        bundle7.putStringArrayList("video_start_urls", new ArrayList<>(ov.f15258g));
        bundle7.putStringArrayList("video_reward_urls", new ArrayList<>(ov.f15260h));
        bundle7.putStringArrayList("video_complete_urls", new ArrayList<>(ov.f15262i));
        bundle7.putString("transaction_id", ov.f15264j);
        bundle7.putString("valid_from_timestamp", ov.f15266k);
        bundle7.putBoolean("is_closable_area_disabled", ov.f15235P);
        bundle7.putString("recursive_server_response_data", ov.f15275o0);
        C1624ld c1624ld = ov.f15268l;
        if (c1624ld != null) {
            Bundle bundle8 = new Bundle();
            bundle8.putInt("rb_amount", c1624ld.f19804H);
            bundle8.putString("rb_type", c1624ld.f19803G);
            bundle7.putParcelableArray("rewards", new Bundle[]{bundle8});
        }
        bundle5.putBundle("parent_ad_config", bundle7);
        return c(yvA, bundle5, ov, tv);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final boolean b(Tv tv, Ov ov) {
        return !TextUtils.isEmpty(ov.f15288v.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, HttpUrl.FRAGMENT_ENCODE_SET));
    }

    public abstract Fw c(Yv yv, Bundle bundle, Ov ov, Tv tv);
}
