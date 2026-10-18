package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1902qv implements InterfaceC2165vz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C2246xc f20653b;

    public /* synthetic */ C1902qv(C2246xc c2246xc, int i8) {
        this.f20652a = i8;
        this.f20653b = c2246xc;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        int i8 = this.f20652a;
        C2246xc c2246xc = this.f20653b;
        switch (i8) {
            case 0:
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, (C1274ep) obj);
                p113o3.I.k("Failed to get a cache key, reverting to legacy flow.");
                C1953rv c1953rv = new C1953rv(null, c2246xc.E());
                c2246xc.f21885K = c1953rv;
                return c1953rv;
            default:
                C0973Wc c0973Wc = (C0973Wc) obj;
                C1953rv c1953rv2 = new C1953rv(c0973Wc, new C2058tw(c0973Wc.f17259P));
                c2246xc.f21885K = c1953rv2;
                return c1953rv2;
        }
    }
}
