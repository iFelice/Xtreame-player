package V4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class C {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final C f7113G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C f7114H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C f7115I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C f7116J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final /* synthetic */ C[] f7117K;

    static {
        C c8 = new C("UNSPECIFIED_RENDER_ERROR", 0);
        f7113G = c8;
        C c9 = new C("IMAGE_FETCH_ERROR", 1);
        f7114H = c9;
        C c10 = new C("IMAGE_DISPLAY_ERROR", 2);
        f7115I = c10;
        C c11 = new C("IMAGE_UNSUPPORTED_FORMAT", 3);
        f7116J = c11;
        f7117K = new C[]{c8, c9, c10, c11};
    }

    public static C valueOf(String str) {
        return (C) Enum.valueOf(C.class, str);
    }

    public static C[] values() {
        return (C[]) f7117K.clone();
    }
}
