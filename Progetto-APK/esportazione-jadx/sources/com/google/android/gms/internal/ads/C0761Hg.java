package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Hg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0761Hg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0761Hg f13767b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC2073uA f13768a;

    static {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        f13767b = new C0761Hg(PA.f15340K);
        Integer.toString(0, 36);
    }

    public C0761Hg(PA pa) {
        this.f13768a = AbstractC2073uA.t(pa);
    }

    public final boolean a(int i8) {
        int i9 = 0;
        while (true) {
            AbstractC2073uA abstractC2073uA = this.f13768a;
            if (i9 >= abstractC2073uA.size()) {
                return false;
            }
            C2198wg c2198wg = (C2198wg) abstractC2073uA.get(i9);
            if (c2198wg.b() && c2198wg.a() == i8) {
                return true;
            }
            i9++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0761Hg.class != obj.getClass()) {
            return false;
        }
        return this.f13768a.equals(((C0761Hg) obj).f13768a);
    }

    public final int hashCode() {
        return this.f13768a.hashCode();
    }
}
