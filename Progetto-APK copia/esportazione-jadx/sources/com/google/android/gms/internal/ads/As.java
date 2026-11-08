package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class As implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Yv f12050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f12051b;

    public As(Yv yv, long j8) {
        com.bumptech.glide.c.i(yv, "the targeting must not be null");
        this.f12050a = yv;
        this.f12051b = j8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        Yv yv = this.f12050a;
        p090l3.b1 b1Var = yv.f17677d;
        bundle.putInt("http_timeout_millis", b1Var.f26539c0);
        bundle.putString("slotname", yv.f17679f);
        int i8 = yv.f17688o.f9298H;
        if (i8 == 0) {
            throw null;
        }
        int i9 = i8 - 1;
        if (i9 == 1) {
            bundle.putBoolean("is_new_rewarded", true);
        } else if (i9 == 2) {
            bundle.putBoolean("is_rewarded_interstitial", true);
        }
        bundle.putLong("start_signals_timestamp", this.f12051b);
        Bundle bundle2 = b1Var.f26519I;
        com.bumptech.glide.c.I(bundle, "is_sdk_preload", true, bundle2.getBoolean("is_sdk_preload", false));
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
        long j8 = b1Var.f26518H;
        com.bumptech.glide.c.H(bundle, "cust_age", simpleDateFormat.format(new Date(j8)), j8 != -1);
        if (bundle2 != null) {
            bundle.putBundle("extras", bundle2);
        }
        int i10 = b1Var.f26520J;
        if (i10 != -1) {
            bundle.putInt("cust_gender", i10);
        }
        List list = b1Var.f26521K;
        if (list != null) {
            bundle.putStringArrayList("kw", new ArrayList<>(list));
        }
        int i11 = b1Var.f26523M;
        if (i11 != -1) {
            bundle.putInt("tag_for_child_directed_treatment", i11);
        }
        if (b1Var.f26522L) {
            bundle.putBoolean("test_request", true);
        }
        bundle.putInt("ppt_p13n", b1Var.f26541e0);
        int i12 = b1Var.f26517G;
        if (i12 >= 2 && b1Var.f26524N) {
            bundle.putInt("d_imp_hdr", 1);
        }
        String str = b1Var.f26525O;
        com.bumptech.glide.c.H(bundle, "ppid", str, i12 >= 2 && !TextUtils.isEmpty(str));
        Location location = b1Var.f26527Q;
        if (location != null) {
            float accuracy = location.getAccuracy() * 1000.0f;
            long time = location.getTime() * 1000;
            double latitude = location.getLatitude() * 1.0E7d;
            double longitude = 1.0E7d * location.getLongitude();
            Bundle bundle3 = new Bundle();
            bundle3.putFloat("radius", accuracy);
            bundle3.putLong("lat", (long) latitude);
            bundle3.putLong("long", (long) longitude);
            bundle3.putLong("time", time);
            bundle.putBundle("uule", bundle3);
        }
        com.bumptech.glide.c.E("url", b1Var.f26528R, bundle);
        List list2 = b1Var.f26538b0;
        if (list2 != null) {
            bundle.putStringArrayList("neighboring_content_urls", new ArrayList<>(list2));
        }
        Bundle bundle4 = b1Var.f26530T;
        if (bundle4 != null) {
            bundle.putBundle("custom_targeting", bundle4);
        }
        List list3 = b1Var.f26531U;
        if (list3 != null) {
            bundle.putStringArrayList("category_exclusions", new ArrayList<>(list3));
        }
        com.bumptech.glide.c.E("request_agent", b1Var.f26532V, bundle);
        com.bumptech.glide.c.E("request_pkg", b1Var.f26533W, bundle);
        com.bumptech.glide.c.I(bundle, "is_designed_for_families", b1Var.f26534X, i12 >= 7);
        if (i12 >= 8) {
            int i13 = b1Var.f26536Z;
            if (i13 != -1) {
                bundle.putInt("tag_for_under_age_of_consent", i13);
            }
            com.bumptech.glide.c.E("max_ad_content_rating", b1Var.f26537a0, bundle);
        }
    }
}
