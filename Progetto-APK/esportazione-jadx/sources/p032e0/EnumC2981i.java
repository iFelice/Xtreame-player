package p032e0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: e0.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2981i {
    private static final /* synthetic */ EnumC2981i[] $VALUES;
    public static final C2979g Companion;
    public static final EnumC2981i ON_ANY;
    public static final EnumC2981i ON_CREATE;
    public static final EnumC2981i ON_DESTROY;
    public static final EnumC2981i ON_PAUSE;
    public static final EnumC2981i ON_RESUME;
    public static final EnumC2981i ON_START;
    public static final EnumC2981i ON_STOP;

    static {
        EnumC2981i enumC2981i = new EnumC2981i("ON_CREATE", 0);
        ON_CREATE = enumC2981i;
        EnumC2981i enumC2981i2 = new EnumC2981i("ON_START", 1);
        ON_START = enumC2981i2;
        EnumC2981i enumC2981i3 = new EnumC2981i("ON_RESUME", 2);
        ON_RESUME = enumC2981i3;
        EnumC2981i enumC2981i4 = new EnumC2981i("ON_PAUSE", 3);
        ON_PAUSE = enumC2981i4;
        EnumC2981i enumC2981i5 = new EnumC2981i("ON_STOP", 4);
        ON_STOP = enumC2981i5;
        EnumC2981i enumC2981i6 = new EnumC2981i("ON_DESTROY", 5);
        ON_DESTROY = enumC2981i6;
        EnumC2981i enumC2981i7 = new EnumC2981i("ON_ANY", 6);
        ON_ANY = enumC2981i7;
        $VALUES = new EnumC2981i[]{enumC2981i, enumC2981i2, enumC2981i3, enumC2981i4, enumC2981i5, enumC2981i6, enumC2981i7};
        Companion = new C2979g();
    }

    public static EnumC2981i valueOf(String str) {
        return (EnumC2981i) Enum.valueOf(EnumC2981i.class, str);
    }

    public static EnumC2981i[] values() {
        return (EnumC2981i[]) $VALUES.clone();
    }

    public final EnumC2982j a() {
        switch (AbstractC2980h.f24740a[ordinal()]) {
            case 1:
            case 2:
                return EnumC2982j.f24743I;
            case 3:
            case 4:
                return EnumC2982j.f24744J;
            case 5:
                return EnumC2982j.f24745K;
            case 6:
                return EnumC2982j.f24741G;
            default:
                throw new IllegalArgumentException(this + " has no target state");
        }
    }
}
