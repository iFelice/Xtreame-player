package F5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final h f3250G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final h f3251H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final h f3252I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ h[] f3253J;

    static {
        h hVar = new h("NUMERIC", 0);
        f3250G = hVar;
        h hVar2 = new h("ALPHA", 1);
        f3251H = hVar2;
        h hVar3 = new h("ISO_IEC_646", 2);
        f3252I = hVar3;
        f3253J = new h[]{hVar, hVar2, hVar3};
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) f3253J.clone();
    }
}
