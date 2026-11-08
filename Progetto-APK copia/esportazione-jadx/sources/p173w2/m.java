package p173w2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final m f31001G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ m[] f31002H;

    /* JADX INFO: Fake field, exist only in values array */
    m EF2;

    static {
        m mVar = new m("SRGB", 0);
        m mVar2 = new m("DISPLAY_P3", 1);
        f31001G = mVar2;
        f31002H = new m[]{mVar, mVar2};
    }

    public static m valueOf(String str) {
        return (m) Enum.valueOf(m.class, str);
    }

    public static m[] values() {
        return (m[]) f31002H.clone();
    }
}
