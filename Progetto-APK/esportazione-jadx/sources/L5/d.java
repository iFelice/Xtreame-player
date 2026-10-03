package L5;

/* JADX INFO: loaded from: classes2.dex */
public enum d {
    TERMINATOR(new int[]{0, 0, 0}, 0),
    NUMERIC(new int[]{10, 12, 14}, 1),
    ALPHANUMERIC(new int[]{9, 11, 13}, 2),
    STRUCTURED_APPEND(new int[]{0, 0, 0}, 3),
    BYTE(new int[]{8, 16, 16}, 4),
    ECI(new int[]{0, 0, 0}, 7),
    KANJI(new int[]{8, 10, 12}, 8),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}, 5),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}, 9),
    HANZI(new int[]{8, 10, 12}, 13);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int[] f4722G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f4723H;

    d(int[] iArr, int i8) {
        this.f4722G = iArr;
        this.f4723H = i8;
    }

    public final int a(f fVar) {
        char c8;
        int i8 = fVar.f4726a;
        if (i8 <= 9) {
            c8 = 0;
        } else {
            c8 = i8 <= 26 ? (char) 1 : (char) 2;
        }
        return this.f4722G[c8];
    }
}
