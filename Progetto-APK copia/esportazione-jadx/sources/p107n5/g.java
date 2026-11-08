package p107n5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final g f27567G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final g f27568H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final g f27569I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ g[] f27570J;

    static {
        g gVar = new g("ERROR", 0);
        f27567G = gVar;
        g gVar2 = new g("RESPONSE", 1);
        f27568H = gVar2;
        g gVar3 = new g("RESULT_NOT_SET", 2);
        f27569I = gVar3;
        f27570J = new g[]{gVar, gVar2, gVar3};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f27570J.clone();
    }
}
