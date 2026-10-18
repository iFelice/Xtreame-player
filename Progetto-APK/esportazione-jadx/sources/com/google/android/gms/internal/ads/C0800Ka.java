package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ka, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0800Ka extends IOException {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f14377G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f14378H;

    public C0800Ka(String str, RuntimeException runtimeException, boolean z7, int i8) {
        super(str, runtimeException);
        this.f14377G = z7;
        this.f14378H = i8;
    }

    public static C0800Ka a(String str, RuntimeException runtimeException) {
        return new C0800Ka(str, runtimeException, true, 1);
    }

    public static C0800Ka b(String str) {
        return new C0800Ka(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sbL = p000a.r.l(super.getMessage(), "{contentIsMalformed=");
        sbL.append(this.f14377G);
        sbL.append(", dataType=");
        return p000a.r.h(sbL, this.f14378H, "}");
    }
}
