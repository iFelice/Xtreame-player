package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2295yO {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f22029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final YK[] f22030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC2087uO[] f22031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0761Hg f22032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f22033e;

    public C2295yO(YK[] ykArr, InterfaceC2087uO[] interfaceC2087uOArr, C0761Hg c0761Hg, C2139vO c2139vO) {
        int length = ykArr.length;
        p113o3.r.J(length == interfaceC2087uOArr.length);
        this.f22030b = ykArr;
        this.f22031c = (InterfaceC2087uO[]) interfaceC2087uOArr.clone();
        this.f22032d = c0761Hg;
        this.f22033e = c2139vO;
        this.f22029a = length;
    }

    public final boolean a(C2295yO c2295yO, int i8) {
        return c2295yO != null && Objects.equals(this.f22030b[i8], c2295yO.f22030b[i8]) && Objects.equals(this.f22031c[i8], c2295yO.f22031c[i8]);
    }

    public final boolean b(int i8) {
        return this.f22030b[i8] != null;
    }
}
