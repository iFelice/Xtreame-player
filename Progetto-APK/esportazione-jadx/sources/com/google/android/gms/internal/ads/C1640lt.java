package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1640lt implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f19867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f19868b;

    public C1640lt(double d6, boolean z7) {
        this.f19867a = d6;
        this.f19868b = z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle bundleZ = com.bumptech.glide.c.z("device", bundle);
        bundle.putBundle("device", bundleZ);
        Bundle bundleZ2 = com.bumptech.glide.c.z("battery", bundleZ);
        bundleZ.putBundle("battery", bundleZ2);
        bundleZ2.putBoolean("is_charging", this.f19868b);
        bundleZ2.putDouble("battery_level", this.f19867a);
    }
}
