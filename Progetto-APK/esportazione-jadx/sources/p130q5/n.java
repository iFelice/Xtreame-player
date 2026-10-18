package p130q5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final n f29634G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final n f29635H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final n f29636I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final n f29637J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final n f29638K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final n f29639L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final n f29640M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final n f29641N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final n f29642O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final n f29643P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final /* synthetic */ n[] f29644Q;

    /* JADX INFO: Fake field, exist only in values array */
    n EF11;

    static {
        n nVar = new n("OTHER", 0);
        n nVar2 = new n("ORIENTATION", 1);
        f29634G = nVar2;
        n nVar3 = new n("BYTE_SEGMENTS", 2);
        f29635H = nVar3;
        n nVar4 = new n("ERROR_CORRECTION_LEVEL", 3);
        f29636I = nVar4;
        n nVar5 = new n("ISSUE_NUMBER", 4);
        f29637J = nVar5;
        n nVar6 = new n("SUGGESTED_PRICE", 5);
        f29638K = nVar6;
        n nVar7 = new n("POSSIBLE_COUNTRY", 6);
        f29639L = nVar7;
        n nVar8 = new n("UPC_EAN_EXTENSION", 7);
        f29640M = nVar8;
        n nVar9 = new n("PDF417_EXTRA_METADATA", 8);
        f29641N = nVar9;
        n nVar10 = new n("STRUCTURED_APPEND_SEQUENCE", 9);
        f29642O = nVar10;
        n nVar11 = new n("STRUCTURED_APPEND_PARITY", 10);
        f29643P = nVar11;
        f29644Q = new n[]{nVar, nVar2, nVar3, nVar4, nVar5, nVar6, nVar7, nVar8, nVar9, nVar10, nVar11};
    }

    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    public static n[] values() {
        return (n[]) f29644Q.clone();
    }
}
