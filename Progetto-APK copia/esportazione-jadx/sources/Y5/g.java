package Y5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final g f8156G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final g f8157H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final g f8158I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final g f8159J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final g f8160K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final /* synthetic */ g[] f8161L;

    static {
        g gVar = new g("CONNECTING", 0);
        f8156G = gVar;
        g gVar2 = new g("READY", 1);
        f8157H = gVar2;
        g gVar3 = new g("TRANSIENT_FAILURE", 2);
        f8158I = gVar3;
        g gVar4 = new g("IDLE", 3);
        f8159J = gVar4;
        g gVar5 = new g("SHUTDOWN", 4);
        f8160K = gVar5;
        f8161L = new g[]{gVar, gVar2, gVar3, gVar4, gVar5};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f8161L.clone();
    }
}
