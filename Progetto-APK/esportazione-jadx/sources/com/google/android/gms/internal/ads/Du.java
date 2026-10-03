package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class Du implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f12891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f12894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f12895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f12896f;

    public Du(String str, int i8, int i9, int i10, boolean z7, int i11) {
        this.f12891a = str;
        this.f12892b = i8;
        this.f12893c = i9;
        this.f12894d = i10;
        this.f12895e = z7;
        this.f12896f = i11;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.f12891a;
        com.bumptech.glide.c.H(bundle, "carrier", str, !TextUtils.isEmpty(str));
        int i8 = this.f12892b;
        if (i8 != -2) {
            bundle.putInt("cnt", i8);
        }
        bundle.putInt("gnt", this.f12893c);
        bundle.putInt("pt", this.f12894d);
        Bundle bundleZ = com.bumptech.glide.c.z("device", bundle);
        bundle.putBundle("device", bundleZ);
        Bundle bundleZ2 = com.bumptech.glide.c.z("network", bundleZ);
        bundleZ.putBundle("network", bundleZ2);
        bundleZ2.putInt("active_network_state", this.f12896f);
        bundleZ2.putBoolean("active_network_metered", this.f12895e);
    }
}
