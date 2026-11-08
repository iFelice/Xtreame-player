package p175w4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: w4.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC3214k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final EnumC3214k f31057G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final EnumC3214k f31058H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final EnumC3214k f31059I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ EnumC3214k[] f31060J;

    static {
        EnumC3214k enumC3214k = new EnumC3214k("JWT_AUDIENCE", 0);
        f31057G = enumC3214k;
        EnumC3214k enumC3214k2 = new EnumC3214k("DISABLE_AUTH", 1);
        f31058H = enumC3214k2;
        EnumC3214k enumC3214k3 = new EnumC3214k("AUTHENTICATION_NOT_SET", 2);
        f31059I = enumC3214k3;
        f31060J = new EnumC3214k[]{enumC3214k, enumC3214k2, enumC3214k3};
    }

    public static EnumC3214k valueOf(String str) {
        return (EnumC3214k) Enum.valueOf(EnumC3214k.class, str);
    }

    public static EnumC3214k[] values() {
        return (EnumC3214k[]) f31060J.clone();
    }
}
