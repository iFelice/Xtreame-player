package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class HK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2190wN f13742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f13743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f13744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f13745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f13746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f13747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f13748g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f13749h;

    public HK(C2190wN c2190wN, long j8, long j9, long j10, long j11, boolean z7, boolean z8, boolean z9) {
        p113o3.r.J(!z9 || z7);
        p113o3.r.J(!z8 || z7);
        this.f13742a = c2190wN;
        this.f13743b = j8;
        this.f13744c = j9;
        this.f13745d = j10;
        this.f13746e = j11;
        this.f13747f = z7;
        this.f13748g = z8;
        this.f13749h = z9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && HK.class == obj.getClass()) {
            HK hk = (HK) obj;
            if (this.f13743b == hk.f13743b && this.f13744c == hk.f13744c && this.f13745d == hk.f13745d && this.f13746e == hk.f13746e && this.f13747f == hk.f13747f && this.f13748g == hk.f13748g && this.f13749h == hk.f13749h && Objects.equals(this.f13742a, hk.f13742a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.f13742a.hashCode() + 527) * 31) + ((int) this.f13743b)) * 31) + ((int) this.f13744c)) * 31) + ((int) this.f13745d)) * 31) + ((int) this.f13746e)) * 961) + (this.f13747f ? 1 : 0)) * 31) + (this.f13748g ? 1 : 0)) * 31) + (this.f13749h ? 1 : 0);
    }
}
