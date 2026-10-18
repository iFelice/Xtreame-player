package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.b3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1083b3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f18010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC1234e0[] f18011b;

    public C1083b3(List list) {
        this.f18010a = list;
        this.f18011b = new InterfaceC1234e0[list.size()];
    }

    public final void a(long j8, C1534jr c1534jr) {
        if (c1534jr.o() < 9) {
            return;
        }
        int iR = c1534jr.r();
        int iR2 = c1534jr.r();
        int iW = c1534jr.w();
        if (iR == 434 && iR2 == 1195456820 && iW == 3) {
            com.google.android.gms.internal.measurement.H1.H(j8, c1534jr, this.f18011b);
        }
    }

    public final void b(N n7, A1.I i8) {
        int i9 = 0;
        while (true) {
            InterfaceC1234e0[] interfaceC1234e0Arr = this.f18011b;
            if (i9 >= interfaceC1234e0Arr.length) {
                return;
            }
            i8.c();
            i8.d();
            InterfaceC1234e0 interfaceC1234e0H = n7.h(i8.f309d, 3);
            C1804p0 c1804p0 = (C1804p0) this.f18010a.get(i9);
            String str = c1804p0.f20383m;
            boolean z7 = true;
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                z7 = false;
            }
            p113o3.r.L(z7, "Invalid closed caption MIME type provided: ".concat(String.valueOf(str)));
            K k8 = new K();
            i8.d();
            k8.f14260a = i8.f310e;
            k8.f(str);
            k8.f14264e = c1804p0.f20375e;
            k8.f14263d = c1804p0.f20374d;
            k8.f14257E = c1804p0.f20367F;
            k8.f14274o = c1804p0.f20386p;
            interfaceC1234e0H.d(new C1804p0(k8));
            interfaceC1234e0Arr[i9] = interfaceC1234e0H;
            i9++;
        }
    }
}
