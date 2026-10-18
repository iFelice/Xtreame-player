package Z5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: Z5.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC0452i {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final EnumC0452i f8456G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final EnumC0452i f8457H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ EnumC0452i[] f8458I;

    static {
        EnumC0452i enumC0452i = new EnumC0452i("PROCESSED", 0);
        f8456G = enumC0452i;
        EnumC0452i enumC0452i2 = new EnumC0452i("REFUSED", 1);
        f8457H = enumC0452i2;
        f8458I = new EnumC0452i[]{enumC0452i, enumC0452i2, new EnumC0452i("DROPPED", 2), new EnumC0452i("MISCARRIED", 3)};
    }

    public static EnumC0452i valueOf(String str) {
        return (EnumC0452i) Enum.valueOf(EnumC0452i.class, str);
    }

    public static EnumC0452i[] values() {
        return (EnumC0452i[]) f8458I.clone();
    }
}
