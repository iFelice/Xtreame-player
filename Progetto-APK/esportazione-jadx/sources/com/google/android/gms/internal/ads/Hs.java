package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class Hs implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p090l3.d1 f13802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f13803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f13804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f13805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f13806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f13807f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f13808g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f13809h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f13810i;

    public Hs(p090l3.d1 d1Var, String str, boolean z7, String str2, float f8, int i8, int i9, String str3, boolean z8) {
        this.f13802a = d1Var;
        this.f13803b = str;
        this.f13804c = z7;
        this.f13805d = str2;
        this.f13806e = f8;
        this.f13807f = i8;
        this.f13808g = i9;
        this.f13809h = str3;
        this.f13810i = z8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        p090l3.d1 d1Var = this.f13802a;
        com.bumptech.glide.c.H(bundle, "smart_w", "full", d1Var.f26552K == -1);
        com.bumptech.glide.c.H(bundle, "smart_h", "auto", d1Var.f26549H == -2);
        com.bumptech.glide.c.I(bundle, "ene", true, d1Var.f26557P);
        com.bumptech.glide.c.H(bundle, "rafmt", "102", d1Var.f26560S);
        com.bumptech.glide.c.H(bundle, "rafmt", "103", d1Var.f26561T);
        com.bumptech.glide.c.H(bundle, "rafmt", "105", d1Var.f26562U);
        com.bumptech.glide.c.I(bundle, "inline_adaptive_slot", true, this.f13810i);
        com.bumptech.glide.c.I(bundle, "interscroller_slot", true, d1Var.f26562U);
        com.bumptech.glide.c.E("format", this.f13803b, bundle);
        com.bumptech.glide.c.H(bundle, "fluid", "height", this.f13804c);
        String str = this.f13805d;
        com.bumptech.glide.c.H(bundle, "sz", str, !TextUtils.isEmpty(str));
        bundle.putFloat("u_sd", this.f13806e);
        bundle.putInt("sw", this.f13807f);
        bundle.putInt("sh", this.f13808g);
        String str2 = this.f13809h;
        com.bumptech.glide.c.H(bundle, "sc", str2, !TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        p090l3.d1[] d1VarArr = d1Var.f26554M;
        if (d1VarArr == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("height", d1Var.f26549H);
            bundle2.putInt("width", d1Var.f26552K);
            bundle2.putBoolean("is_fluid_height", d1Var.f26556O);
            arrayList.add(bundle2);
        } else {
            for (p090l3.d1 d1Var2 : d1VarArr) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("is_fluid_height", d1Var2.f26556O);
                bundle3.putInt("height", d1Var2.f26549H);
                bundle3.putInt("width", d1Var2.f26552K);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
