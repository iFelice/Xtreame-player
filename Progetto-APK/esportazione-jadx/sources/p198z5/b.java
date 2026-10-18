package p198z5;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final char[] f31912b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final char[] f31914d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f31911a = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char[] f31913c = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final char[] f31915e = {'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};

    static {
        char[] cArr = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_'};
        f31912b = cArr;
        f31914d = cArr;
    }

    public static void a(int i8, int i9, int[] iArr) {
        int i10 = ((i8 << 8) + i9) - 1;
        int i11 = i10 / 1600;
        iArr[0] = i11;
        int i12 = i10 - (i11 * 1600);
        int i13 = i12 / 40;
        iArr[1] = i13;
        iArr[2] = i12 - (i13 * 40);
    }

    public static int b(int i8, int i9) {
        int i10 = i8 - (((i9 * 149) % 255) + 1);
        return i10 >= 0 ? i10 : i10 + 256;
    }
}
