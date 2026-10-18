package p032e0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: e0.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2982j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final EnumC2982j f24741G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final EnumC2982j f24742H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final EnumC2982j f24743I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final EnumC2982j f24744J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final EnumC2982j f24745K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final /* synthetic */ EnumC2982j[] f24746L;

    static {
        EnumC2982j enumC2982j = new EnumC2982j("DESTROYED", 0);
        f24741G = enumC2982j;
        EnumC2982j enumC2982j2 = new EnumC2982j("INITIALIZED", 1);
        f24742H = enumC2982j2;
        EnumC2982j enumC2982j3 = new EnumC2982j("CREATED", 2);
        f24743I = enumC2982j3;
        EnumC2982j enumC2982j4 = new EnumC2982j("STARTED", 3);
        f24744J = enumC2982j4;
        EnumC2982j enumC2982j5 = new EnumC2982j("RESUMED", 4);
        f24745K = enumC2982j5;
        f24746L = new EnumC2982j[]{enumC2982j, enumC2982j2, enumC2982j3, enumC2982j4, enumC2982j5};
    }

    public static EnumC2982j valueOf(String str) {
        return (EnumC2982j) Enum.valueOf(EnumC2982j.class, str);
    }

    public static EnumC2982j[] values() {
        return (EnumC2982j[]) f24746L.clone();
    }
}
