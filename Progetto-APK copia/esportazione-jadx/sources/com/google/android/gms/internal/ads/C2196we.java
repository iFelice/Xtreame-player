package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.we, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2196we {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Object f21706m = new Object();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final C2225x6 f21707n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f21708a = f21706m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C2225x6 f21709b = f21707n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f21710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f21711d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f21712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f21713f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f21714g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public A4 f21715h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f21716i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f21717j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f21718k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f21719l;

    static {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        PA pa = PA.f15340K;
        List listEmptyList = Collections.emptyList();
        PA pa2 = PA.f15340K;
        J5 j8 = J5.f14124a;
        Uri uri = Uri.EMPTY;
        f21707n = new C2225x6("androidx.media3.common.Timeline", new F3(), uri != null ? new C1239e5(uri, listEmptyList, pa2) : null, new A4(), C1451i9.f19243y, j8);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
    }

    public final void a(C2225x6 c2225x6, boolean z7, boolean z8, A4 a8, long j8) {
        this.f21708a = f21706m;
        if (c2225x6 == null) {
            c2225x6 = f21707n;
        }
        this.f21709b = c2225x6;
        this.f21710c = -9223372036854775807L;
        this.f21711d = -9223372036854775807L;
        this.f21712e = -9223372036854775807L;
        this.f21713f = z7;
        this.f21714g = z8;
        this.f21715h = a8;
        this.f21717j = j8;
        this.f21718k = 0;
        this.f21719l = 0;
        this.f21716i = false;
    }

    public final boolean b() {
        return this.f21715h != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2196we.class.equals(obj.getClass())) {
            C2196we c2196we = (C2196we) obj;
            if (Objects.equals(this.f21708a, c2196we.f21708a) && Objects.equals(this.f21709b, c2196we.f21709b) && Objects.equals(this.f21715h, c2196we.f21715h) && this.f21710c == c2196we.f21710c && this.f21711d == c2196we.f21711d && this.f21712e == c2196we.f21712e && this.f21713f == c2196we.f21713f && this.f21714g == c2196we.f21714g && this.f21716i == c2196we.f21716i && this.f21717j == c2196we.f21717j && this.f21718k == c2196we.f21718k && this.f21719l == c2196we.f21719l) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.f21708a.hashCode() + 217) * 31) + this.f21709b.hashCode();
        A4 a8 = this.f21715h;
        int iHashCode2 = ((iHashCode * 961) + (a8 == null ? 0 : a8.hashCode())) * 31;
        long j8 = this.f21710c;
        int i8 = (iHashCode2 + ((int) (j8 ^ (j8 >>> 32)))) * 31;
        long j9 = this.f21711d;
        int i9 = (i8 + ((int) (j9 ^ (j9 >>> 32)))) * 31;
        long j10 = this.f21712e;
        int i10 = ((((((i9 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (this.f21713f ? 1 : 0)) * 31) + (this.f21714g ? 1 : 0)) * 31) + (this.f21716i ? 1 : 0);
        long j11 = this.f21717j;
        return ((((((i10 * 961) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f21718k) * 31) + this.f21719l) * 31;
    }
}
