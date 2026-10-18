package p084k5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final e f26011G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final e f26012H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final e f26013I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ e[] f26014J;

    static {
        e eVar = new e("VANILLA_PAYLOAD", 0);
        f26011G = eVar;
        e eVar2 = new e("EXPERIMENTAL_PAYLOAD", 1);
        f26012H = eVar2;
        e eVar3 = new e("PAYLOAD_NOT_SET", 2);
        f26013I = eVar3;
        f26014J = new e[]{eVar, eVar2, eVar3};
    }

    public static e valueOf(String str) {
        return (e) Enum.valueOf(e.class, str);
    }

    public static e[] values() {
        return (e[]) f26014J.clone();
    }
}
