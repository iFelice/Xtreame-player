package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.x6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2225x6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f21835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1239e5 f21836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final A4 f21837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1451i9 f21838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final F3 f21839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final J5 f21840f;

    static {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        PA pa = PA.f15340K;
        Collections.emptyList();
        J5 j8 = J5.f14124a;
        new F3();
        C1451i9 c1451i9 = C1451i9.f19243y;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    public /* synthetic */ C2225x6(String str, F3 f8, C1239e5 c1239e5, A4 a8, C1451i9 c1451i9, J5 j8) {
        this.f21835a = str;
        this.f21836b = c1239e5;
        this.f21837c = a8;
        this.f21838d = c1451i9;
        this.f21839e = f8;
        this.f21840f = j8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2225x6)) {
            return false;
        }
        C2225x6 c2225x6 = (C2225x6) obj;
        return Objects.equals(this.f21835a, c2225x6.f21835a) && this.f21839e.equals(c2225x6.f21839e) && Objects.equals(this.f21836b, c2225x6.f21836b) && Objects.equals(this.f21837c, c2225x6.f21837c) && Objects.equals(this.f21838d, c2225x6.f21838d) && Objects.equals(this.f21840f, c2225x6.f21840f);
    }

    public final int hashCode() {
        int iHashCode = this.f21835a.hashCode() * 31;
        C1239e5 c1239e5 = this.f21836b;
        return (this.f21838d.hashCode() + ((this.f21839e.hashCode() + ((this.f21837c.hashCode() + ((iHashCode + (c1239e5 != null ? c1239e5.hashCode() : 0)) * 31)) * 31)) * 31)) * 31;
    }
}
