package V4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: V4.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0354b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final EnumC0354b f7131G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final EnumC0354b f7132H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final EnumC0354b f7133I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final EnumC0354b f7134J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final EnumC0354b f7135K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final /* synthetic */ EnumC0354b[] f7136L;

    static {
        EnumC0354b enumC0354b = new EnumC0354b("EVENT_TYPE", 0);
        f7131G = enumC0354b;
        EnumC0354b enumC0354b2 = new EnumC0354b("DISMISS_TYPE", 1);
        f7132H = enumC0354b2;
        EnumC0354b enumC0354b3 = new EnumC0354b("RENDER_ERROR_REASON", 2);
        f7133I = enumC0354b3;
        EnumC0354b enumC0354b4 = new EnumC0354b("FETCH_ERROR_REASON", 3);
        f7134J = enumC0354b4;
        EnumC0354b enumC0354b5 = new EnumC0354b("EVENT_NOT_SET", 4);
        f7135K = enumC0354b5;
        f7136L = new EnumC0354b[]{enumC0354b, enumC0354b2, enumC0354b3, enumC0354b4, enumC0354b5};
    }

    public static EnumC0354b valueOf(String str) {
        return (EnumC0354b) Enum.valueOf(EnumC0354b.class, str);
    }

    public static EnumC0354b[] values() {
        return (EnumC0354b[]) f7136L.clone();
    }
}
