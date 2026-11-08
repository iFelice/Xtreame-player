package Z;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final a f8197G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final a f8198H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final a f8199I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final a f8200J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final a f8201K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final a f8202L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final a f8203M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ a[] f8204N;

    static {
        a aVar = new a("PENALTY_LOG", 0);
        f8197G = aVar;
        a aVar2 = new a("PENALTY_DEATH", 1);
        f8198H = aVar2;
        a aVar3 = new a("DETECT_FRAGMENT_REUSE", 2);
        f8199I = aVar3;
        a aVar4 = new a("DETECT_FRAGMENT_TAG_USAGE", 3);
        f8200J = aVar4;
        a aVar5 = new a("DETECT_RETAIN_INSTANCE_USAGE", 4);
        f8201K = aVar5;
        a aVar6 = new a("DETECT_SET_USER_VISIBLE_HINT", 5);
        f8202L = aVar6;
        a aVar7 = new a("DETECT_TARGET_FRAGMENT_USAGE", 6);
        a aVar8 = new a("DETECT_WRONG_FRAGMENT_CONTAINER", 7);
        f8203M = aVar8;
        f8204N = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f8204N.clone();
    }
}
