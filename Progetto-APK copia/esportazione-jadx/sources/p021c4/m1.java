package p021c4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class m1 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final m1 f11290G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final m1 f11291H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ m1[] f11292I;

    static {
        m1 m1Var = new m1("CONSENT", 0);
        f11290G = m1Var;
        m1 m1Var2 = new m1("LEGITIMATE_INTEREST", 1);
        m1 m1Var3 = new m1("FLEXIBLE_CONSENT", 2);
        m1 m1Var4 = new m1("FLEXIBLE_LEGITIMATE_INTEREST", 3);
        f11291H = m1Var4;
        f11292I = new m1[]{m1Var, m1Var2, m1Var3, m1Var4};
    }

    public static m1[] values() {
        return (m1[]) f11292I.clone();
    }
}
