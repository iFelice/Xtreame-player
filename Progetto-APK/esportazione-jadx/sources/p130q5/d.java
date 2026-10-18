package p130q5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final d f29609G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final d f29610H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final d f29611I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final d f29612J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final d f29613K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final d f29614L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final /* synthetic */ d[] f29615M;

    static {
        d dVar = new d("ERROR_CORRECTION", 0);
        f29609G = dVar;
        d dVar2 = new d("CHARACTER_SET", 1);
        f29610H = dVar2;
        d dVar3 = new d("DATA_MATRIX_SHAPE", 2);
        d dVar4 = new d("MIN_SIZE", 3);
        d dVar5 = new d("MAX_SIZE", 4);
        d dVar6 = new d("MARGIN", 5);
        f29611I = dVar6;
        d dVar7 = new d("PDF417_COMPACT", 6);
        d dVar8 = new d("PDF417_COMPACTION", 7);
        d dVar9 = new d("PDF417_DIMENSIONS", 8);
        d dVar10 = new d("AZTEC_LAYERS", 9);
        d dVar11 = new d("QR_VERSION", 10);
        f29612J = dVar11;
        d dVar12 = new d("QR_MASK_PATTERN", 11);
        f29613K = dVar12;
        d dVar13 = new d("GS1_FORMAT", 12);
        f29614L = dVar13;
        f29615M = new d[]{dVar, dVar2, dVar3, dVar4, dVar5, dVar6, dVar7, dVar8, dVar9, dVar10, dVar11, dVar12, dVar13};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f29615M.clone();
    }
}
