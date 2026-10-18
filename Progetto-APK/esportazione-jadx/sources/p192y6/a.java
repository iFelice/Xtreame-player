package p192y6;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final a f31454G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ a[] f31455H;

    static {
        a aVar = new a("COROUTINE_SUSPENDED", 0);
        f31454G = aVar;
        f31455H = new a[]{aVar, new a("UNDECIDED", 1), new a("RESUMED", 2)};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f31455H.clone();
    }
}
