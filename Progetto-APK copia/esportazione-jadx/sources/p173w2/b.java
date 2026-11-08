package p173w2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final b f30987G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final b f30988H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final b f30989I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ b[] f30990J;

    static {
        b bVar = new b("PREFER_ARGB_8888", 0);
        f30987G = bVar;
        b bVar2 = new b("PREFER_RGB_565", 1);
        f30988H = bVar2;
        f30990J = new b[]{bVar, bVar2};
        f30989I = bVar;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f30990J.clone();
    }
}
