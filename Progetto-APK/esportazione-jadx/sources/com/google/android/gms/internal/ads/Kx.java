package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class Kx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1077ay f14436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f14437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EnumC2371zx f14438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f14439d = "Ad overlay";

    public Kx(View view, EnumC2371zx enumC2371zx) {
        this.f14436a = new C1077ay(view);
        this.f14437b = view.getClass().getCanonicalName();
        this.f14438c = enumC2371zx;
    }
}
