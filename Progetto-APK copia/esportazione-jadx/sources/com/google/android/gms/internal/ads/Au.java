package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Au implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f12053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f12054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12055c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f12056d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f12057e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f12058f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f12059g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f12060h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f12061i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f12062j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f12063k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f12064l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f12065m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f12066n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f12067o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f12068p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f12069q;

    public Au(boolean z7, boolean z8, String str, boolean z9, boolean z10, boolean z11, String str2, ArrayList arrayList, String str3, String str4, String str5, boolean z12, String str6, long j8, boolean z13, String str7, int i8) {
        this.f12053a = z7;
        this.f12054b = z8;
        this.f12055c = str;
        this.f12056d = z9;
        this.f12057e = z10;
        this.f12058f = z11;
        this.f12059g = str2;
        this.f12060h = arrayList;
        this.f12061i = str3;
        this.f12062j = str4;
        this.f12063k = str5;
        this.f12064l = z12;
        this.f12065m = str6;
        this.f12066n = j8;
        this.f12067o = z13;
        this.f12068p = str7;
        this.f12069q = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putBoolean("cog", this.f12053a);
        bundle.putBoolean("coh", this.f12054b);
        bundle.putString("gl", this.f12055c);
        bundle.putBoolean("simulator", this.f12056d);
        bundle.putBoolean("is_latchsky", this.f12057e);
        bundle.putInt("build_api_level", this.f12069q);
        J7 j8 = Q7.pa;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            bundle.putBoolean("is_sidewinder", this.f12058f);
        }
        bundle.putString("hl", this.f12059g);
        ArrayList<String> arrayList = this.f12060h;
        if (!arrayList.isEmpty()) {
            bundle.putStringArrayList("hl_list", arrayList);
        }
        bundle.putString("mv", this.f12061i);
        bundle.putString("submodel", this.f12065m);
        Bundle bundleZ = com.bumptech.glide.c.z("device", bundle);
        bundle.putBundle("device", bundleZ);
        bundleZ.putString("build", this.f12063k);
        bundleZ.putLong("remaining_data_partition_space", this.f12066n);
        Bundle bundleZ2 = com.bumptech.glide.c.z("browser", bundleZ);
        bundleZ.putBundle("browser", bundleZ2);
        bundleZ2.putBoolean("is_browser_custom_tabs_capable", this.f12064l);
        String str = this.f12062j;
        if (!TextUtils.isEmpty(str)) {
            Bundle bundleZ3 = com.bumptech.glide.c.z("play_store", bundleZ);
            bundleZ.putBundle("play_store", bundleZ3);
            bundleZ3.putString("package_version", str);
        }
        J7 j9 = Q7.Ga;
        O7 o7 = c3099q.f26627c;
        if (((Boolean) o7.a(j9)).booleanValue()) {
            bundle.putBoolean("is_bstar", this.f12067o);
        }
        String str2 = this.f12068p;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("v_unity", str2);
        }
        if (((Boolean) o7.a(Q7.Aa)).booleanValue()) {
            com.bumptech.glide.c.I(bundle, "gotmt_l", true, ((Boolean) o7.a(Q7.xa)).booleanValue());
            com.bumptech.glide.c.I(bundle, "gotmt_i", true, ((Boolean) o7.a(Q7.wa)).booleanValue());
        }
    }
}
