package com.google.android.gms.internal.ads;

import android.os.Bundle;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ft, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1330ft implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f18822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f18823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f18824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f18825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f18826f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f18827g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f18828h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f18829i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f18830j;

    public C1330ft(int i8, boolean z7, boolean z8, int i9, int i10, int i11, int i12, int i13, float f8, boolean z9) {
        this.f18821a = i8;
        this.f18822b = z7;
        this.f18823c = z8;
        this.f18824d = i9;
        this.f18825e = i10;
        this.f18826f = i11;
        this.f18827g = i12;
        this.f18828h = i13;
        this.f18829i = f8;
        this.f18830j = z9;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putInt("am", this.f18821a);
        bundle.putBoolean("ma", this.f18822b);
        bundle.putBoolean("sp", this.f18823c);
        bundle.putInt("muv", this.f18824d);
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.ma)).booleanValue()) {
            bundle.putInt("muv_min", this.f18825e);
            bundle.putInt("muv_max", this.f18826f);
        }
        bundle.putInt("rm", this.f18827g);
        bundle.putInt("riv", this.f18828h);
        bundle.putFloat("android_app_volume", this.f18829i);
        bundle.putBoolean("android_app_muted", this.f18830j);
    }
}
