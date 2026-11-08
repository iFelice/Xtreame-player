package p175w4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final I f31017G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final I f31018H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final I f31019I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ I[] f31020J;

    static {
        I i8 = new I("HEADER", 0);
        f31017G = i8;
        I i9 = new I("QUERY", 1);
        f31018H = i9;
        I i10 = new I("IN_NOT_SET", 2);
        f31019I = i10;
        f31020J = new I[]{i8, i9, i10};
    }

    public static I valueOf(String str) {
        return (I) Enum.valueOf(I.class, str);
    }

    public static I[] values() {
        return (I[]) f31020J.clone();
    }
}
