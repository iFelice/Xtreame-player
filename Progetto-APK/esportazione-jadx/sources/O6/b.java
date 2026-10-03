package O6;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final b f5654G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final b f5655H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final b f5656I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final b f5657J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final b f5658K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final /* synthetic */ b[] f5659L;

    static {
        b bVar = new b("CPU_ACQUIRED", 0);
        f5654G = bVar;
        b bVar2 = new b("BLOCKING", 1);
        f5655H = bVar2;
        b bVar3 = new b("PARKING", 2);
        f5656I = bVar3;
        b bVar4 = new b("DORMANT", 3);
        f5657J = bVar4;
        b bVar5 = new b("TERMINATED", 4);
        f5658K = bVar5;
        f5659L = new b[]{bVar, bVar2, bVar3, bVar4, bVar5};
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f5659L.clone();
    }
}
