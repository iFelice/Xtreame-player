package R2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final c f6285G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final c f6286H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final c f6287I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ c[] f6288J;

    static {
        c cVar = new c("DEFAULT", 0);
        f6285G = cVar;
        c cVar2 = new c("VERY_LOW", 1);
        f6286H = cVar2;
        c cVar3 = new c("HIGHEST", 2);
        f6287I = cVar3;
        f6288J = new c[]{cVar, cVar2, cVar3};
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f6288J.clone();
    }
}
