package p122p5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final d f28227G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final d f28228H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final d f28229I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ d[] f28230J;

    static {
        d dVar = new d("UTC_OFFSET", 0);
        f28227G = dVar;
        d dVar2 = new d("TIME_ZONE", 1);
        f28228H = dVar2;
        d dVar3 = new d("TIMEOFFSET_NOT_SET", 2);
        f28229I = dVar3;
        f28230J = new d[]{dVar, dVar2, dVar3};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f28230J.clone();
    }
}
