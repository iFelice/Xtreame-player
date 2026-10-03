package p043f3;

import A0.O;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final g f25164h = new g(320, 50, "320x50_mb");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final g f25165i = new g(468, 60, "468x60_as");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final g f25166j = new g(320, 100, "320x100_as");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final g f25167k = new g(728, 90, "728x90_as");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final g f25168l = new g(300, 250, "300x250_as");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final g f25169m = new g(160, 600, "160x600_as");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final g f25170n = new g(-1, -2, "smart_banner");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final g f25171o = new g(-3, -4, "fluid");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final g f25172p = new g(0, 0, "invalid");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final g f25173q = new g(50, 50, "50x50_mb");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f25174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f25177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f25178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f25179f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f25180g;

    static {
        new g(-3, 0, "search_v2");
    }

    public g(int i8, int i9) {
        this(i8, i9, O.B(i8 == -1 ? "FULL" : String.valueOf(i8), "x", i9 == -2 ? "AUTO" : String.valueOf(i9), "_as"));
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f25174a == gVar.f25174a && this.f25175b == gVar.f25175b && this.f25176c.equals(gVar.f25176c);
    }

    public final int hashCode() {
        return this.f25176c.hashCode();
    }

    public final String toString() {
        return this.f25176c;
    }

    public g(int i8, int i9, String str) {
        if (i8 < 0 && i8 != -1 && i8 != -3) {
            throw new IllegalArgumentException(r.f("Invalid width for AdSize: ", i8));
        }
        if (i9 < 0 && i9 != -2 && i9 != -4) {
            throw new IllegalArgumentException(r.f("Invalid height for AdSize: ", i9));
        }
        this.f25174a = i8;
        this.f25175b = i9;
        this.f25176c = str;
    }
}
