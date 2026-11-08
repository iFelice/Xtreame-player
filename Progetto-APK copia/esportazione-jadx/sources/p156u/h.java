package p156u;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f30361a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28};

    public static /* synthetic */ boolean a(int i8, int i9) {
        if (i8 != 0) {
            return i8 == i9;
        }
        throw null;
    }

    public static /* synthetic */ int b(int i8) {
        if (i8 != 0) {
            return i8 - 1;
        }
        throw null;
    }

    public static /* synthetic */ int[] c(int i8) {
        int[] iArr = new int[i8];
        System.arraycopy(f30361a, 0, iArr, 0, i8);
        return iArr;
    }
}
