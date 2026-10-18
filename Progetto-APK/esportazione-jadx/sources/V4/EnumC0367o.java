package V4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: V4.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0367o {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final EnumC0367o f7143G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final EnumC0367o f7144H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final EnumC0367o f7145I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ EnumC0367o[] f7146J;

    static {
        EnumC0367o enumC0367o = new EnumC0367o("FIAM_TRIGGER", 0);
        f7143G = enumC0367o;
        EnumC0367o enumC0367o2 = new EnumC0367o("EVENT", 1);
        f7144H = enumC0367o2;
        EnumC0367o enumC0367o3 = new EnumC0367o("CONDITION_NOT_SET", 2);
        f7145I = enumC0367o3;
        f7146J = new EnumC0367o[]{enumC0367o, enumC0367o2, enumC0367o3};
    }

    public static EnumC0367o valueOf(String str) {
        return (EnumC0367o) Enum.valueOf(EnumC0367o.class, str);
    }

    public static EnumC0367o[] values() {
        return (EnumC0367o[]) f7146J.clone();
    }
}
