package Y5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class x {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final x f8175G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final x f8176H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ x[] f8177I;

    static {
        x xVar = new x("NONE", 0);
        f8175G = xVar;
        x xVar2 = new x("INTEGRITY", 1);
        x xVar3 = new x("PRIVACY_AND_INTEGRITY", 2);
        f8176H = xVar3;
        f8177I = new x[]{xVar, xVar2, xVar3};
    }

    public static x valueOf(String str) {
        return (x) Enum.valueOf(x.class, str);
    }

    public static x[] values() {
        return (x[]) f8177I.clone();
    }
}
