package p184x5;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f31203h = new a(4201, 4096, 1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f31204i = new a(1033, 1024, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f31205j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f31206k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f31207l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f31208m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f31209n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f31210o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f31211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f31212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f31213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f31214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f31217g;

    static {
        a aVar = new a(67, 64, 1);
        f31205j = aVar;
        f31206k = new a(19, 16, 1);
        f31207l = new a(285, 256, 0);
        a aVar2 = new a(301, 256, 1);
        f31208m = aVar2;
        f31209n = aVar2;
        f31210o = aVar;
    }

    public a(int i8, int i9, int i10) {
        this.f31216f = i8;
        this.f31215e = i9;
        this.f31217g = i10;
        this.f31211a = new int[i9];
        this.f31212b = new int[i9];
        int i11 = 1;
        for (int i12 = 0; i12 < i9; i12++) {
            this.f31211a[i12] = i11;
            i11 <<= 1;
            if (i11 >= i9) {
                i11 = (i11 ^ i8) & (i9 - 1);
            }
        }
        for (int i13 = 0; i13 < i9 - 1; i13++) {
            this.f31212b[this.f31211a[i13]] = i13;
        }
        this.f31213c = new b(this, new int[]{0});
        this.f31214d = new b(this, new int[]{1});
    }

    public final b a(int i8, int i9) {
        if (i8 < 0) {
            throw new IllegalArgumentException();
        }
        if (i9 == 0) {
            return this.f31213c;
        }
        int[] iArr = new int[i8 + 1];
        iArr[0] = i9;
        return new b(this, iArr);
    }

    public final int b(int i8) {
        if (i8 == 0) {
            throw new ArithmeticException();
        }
        return this.f31211a[(this.f31215e - this.f31212b[i8]) - 1];
    }

    public final int c(int i8, int i9) {
        if (i8 == 0 || i9 == 0) {
            return 0;
        }
        int[] iArr = this.f31212b;
        return this.f31211a[(iArr[i8] + iArr[i9]) % (this.f31215e - 1)];
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f31216f) + ',' + this.f31215e + ')';
    }
}
