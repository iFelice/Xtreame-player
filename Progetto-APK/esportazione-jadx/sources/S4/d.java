package S4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final d f6437G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ d[] f6438H;

    static {
        d dVar = new d("DEFAULT", 0);
        f6437G = dVar;
        f6438H = new d[]{dVar, new d("SIGNED", 1), new d("FIXED", 2)};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f6438H.clone();
    }
}
