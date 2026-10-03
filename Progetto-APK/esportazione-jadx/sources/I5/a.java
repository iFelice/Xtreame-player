package I5;

import F.i;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f4016e = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f4017a = new int[929];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f4018b = new int[929];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f4019c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f4020d;

    public a() {
        int i8 = 1;
        for (int i9 = 0; i9 < 929; i9++) {
            this.f4017a[i9] = i8;
            i8 = (i8 * 3) % 929;
        }
        for (int i10 = 0; i10 < 928; i10++) {
            this.f4018b[this.f4017a[i10]] = i10;
        }
        this.f4019c = new i(this, new int[]{0});
        this.f4020d = new i(this, new int[]{1});
    }

    public final int a(int i8) {
        if (i8 == 0) {
            throw new ArithmeticException();
        }
        return this.f4017a[928 - this.f4018b[i8]];
    }

    public final int b(int i8, int i9) {
        if (i8 == 0 || i9 == 0) {
            return 0;
        }
        int[] iArr = this.f4018b;
        return this.f4017a[(iArr[i8] + iArr[i9]) % 928];
    }
}
