package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ou, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1797ou implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f20341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f20342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f20343c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f20344d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f20345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f20346f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f20347g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f20348h;

    public C1797ou(boolean z7, boolean z8, String str, boolean z9, int i8, int i9, int i10, String str2) {
        this.f20341a = z7;
        this.f20342b = z8;
        this.f20343c = str;
        this.f20344d = z9;
        this.f20345e = i8;
        this.f20346f = i9;
        this.f20347g = i10;
        this.f20348h = str2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("js", this.f20343c);
        bundle.putBoolean("is_nonagon", true);
        J7 j8 = Q7.f15965w3;
        C3099q c3099q = C3099q.f26624d;
        bundle.putString("extra_caps", (String) c3099q.f26627c.a(j8));
        bundle.putInt("target_api", this.f20345e);
        bundle.putInt("dv", this.f20346f);
        bundle.putInt("lv", this.f20347g);
        if (((Boolean) c3099q.f26627c.a(Q7.v5)).booleanValue()) {
            String str = this.f20348h;
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("ev", str);
            }
        }
        Bundle bundleZ = com.bumptech.glide.c.z("sdk_env", bundle);
        bundleZ.putBoolean("mf", ((Boolean) AbstractC1915r8.f20680c.l()).booleanValue());
        bundleZ.putBoolean("instant_app", this.f20341a);
        bundleZ.putBoolean("lite", this.f20342b);
        bundleZ.putBoolean("is_privileged_process", this.f20344d);
        bundle.putBundle("sdk_env", bundleZ);
        Bundle bundleZ2 = com.bumptech.glide.c.z("build_meta", bundleZ);
        bundleZ2.putString("cl", "679313570");
        bundleZ2.putString("rapid_rc", "dev");
        bundleZ2.putString("rapid_rollup", "HEAD");
        bundleZ.putBundle("build_meta", bundleZ2);
    }
}
