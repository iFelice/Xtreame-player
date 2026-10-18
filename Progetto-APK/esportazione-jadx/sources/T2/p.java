package T2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final p f6594G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ p[] f6595H;

    /* JADX INFO: Fake field, exist only in values array */
    p EF2;

    static {
        p pVar = new p("UNKNOWN", 0);
        p pVar2 = new p("ANDROID_FIREBASE", 1);
        f6594G = pVar2;
        f6595H = new p[]{pVar, pVar2};
    }

    public static p valueOf(String str) {
        return (p) Enum.valueOf(p.class, str);
    }

    public static p[] values() {
        return (p[]) f6595H.clone();
    }
}
