package p004a3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final e f8659G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final e f8660H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final e f8661I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ e[] f8662J;

    static {
        e eVar = new e("NETWORK_UNMETERED", 0);
        f8659G = eVar;
        e eVar2 = new e("DEVICE_IDLE", 1);
        f8660H = eVar2;
        e eVar3 = new e("DEVICE_CHARGING", 2);
        f8661I = eVar3;
        f8662J = new e[]{eVar, eVar2, eVar3};
    }

    public static e valueOf(String str) {
        return (e) Enum.valueOf(e.class, str);
    }

    public static e[] values() {
        return (e[]) f8662J.clone();
    }
}
