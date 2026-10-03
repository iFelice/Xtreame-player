package p175w4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class F {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final F f31009G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final F f31010H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final F f31011I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final F f31012J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final F f31013K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final F f31014L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final F f31015M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ F[] f31016N;

    static {
        F f8 = new F("GET", 0);
        f31009G = f8;
        F f9 = new F("PUT", 1);
        f31010H = f9;
        F f10 = new F("POST", 2);
        f31011I = f10;
        F f11 = new F("DELETE", 3);
        f31012J = f11;
        F f12 = new F("PATCH", 4);
        f31013K = f12;
        F f13 = new F("CUSTOM", 5);
        f31014L = f13;
        F f14 = new F("PATTERN_NOT_SET", 6);
        f31015M = f14;
        f31016N = new F[]{f8, f9, f10, f11, f12, f13, f14};
    }

    public static F valueOf(String str) {
        return (F) Enum.valueOf(F.class, str);
    }

    public static F[] values() {
        return (F[]) f31016N.clone();
    }
}
