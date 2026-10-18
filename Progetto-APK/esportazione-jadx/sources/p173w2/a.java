package p173w2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final a f30981G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final a f30982H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final a f30983I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final a f30984J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final a f30985K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final /* synthetic */ a[] f30986L;

    static {
        a aVar = new a("LOCAL", 0);
        f30981G = aVar;
        a aVar2 = new a("REMOTE", 1);
        f30982H = aVar2;
        a aVar3 = new a("DATA_DISK_CACHE", 2);
        f30983I = aVar3;
        a aVar4 = new a("RESOURCE_DISK_CACHE", 3);
        f30984J = aVar4;
        a aVar5 = new a("MEMORY_CACHE", 4);
        f30985K = aVar5;
        f30986L = new a[]{aVar, aVar2, aVar3, aVar4, aVar5};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f30986L.clone();
    }
}
