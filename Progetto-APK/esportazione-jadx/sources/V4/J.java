package V4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class J {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final J f7118G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final J f7119H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final J f7120I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final J f7121J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final J f7122K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final /* synthetic */ J[] f7123L;

    static {
        J j8 = new J("BANNER", 0);
        f7118G = j8;
        J j9 = new J("MODAL", 1);
        f7119H = j9;
        J j10 = new J("IMAGE_ONLY", 2);
        f7120I = j10;
        J j11 = new J("CARD", 3);
        f7121J = j11;
        J j12 = new J("MESSAGEDETAILS_NOT_SET", 4);
        f7122K = j12;
        f7123L = new J[]{j8, j9, j10, j11, j12};
    }

    public static J valueOf(String str) {
        return (J) Enum.valueOf(J.class, str);
    }

    public static J[] values() {
        return (J[]) f7123L.clone();
    }
}
