package V4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final B f7108G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final B f7109H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final B f7110I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final B f7111J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final /* synthetic */ B[] f7112K;

    static {
        B b8 = new B("UNKNOWN_DISMISS_TYPE", 0);
        f7108G = b8;
        B b9 = new B("AUTO", 1);
        f7109H = b9;
        B b10 = new B("CLICK", 2);
        f7110I = b10;
        B b11 = new B("SWIPE", 3);
        f7111J = b11;
        f7112K = new B[]{b8, b9, b10, b11};
    }

    public static B valueOf(String str) {
        return (B) Enum.valueOf(B.class, str);
    }

    public static B[] values() {
        return (B[]) f7112K.clone();
    }
}
