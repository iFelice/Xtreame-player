package F2;

/* JADX INFO: loaded from: classes.dex */
public final class m extends n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f3143h;

    public m(int i8) {
        this.f3143h = i8;
    }

    @Override // F2.n
    public final int a(int i8, int i9, int i10, int i11) {
        switch (this.f3143h) {
            case 2:
                if (b(i8, i9, i10, i11) == 1.0f) {
                    return 2;
                }
                return n.f3144a.a(i8, i9, i10, i11);
            case 3:
            default:
                return 2;
            case 4:
                return n.f3150g ? 2 : 1;
        }
    }

    @Override // F2.n
    public final float b(int i8, int i9, int i10, int i11) {
        switch (this.f3143h) {
            case 2:
                return Math.min(1.0f, n.f3144a.b(i8, i9, i10, i11));
            case 3:
                return Math.max(i10 / i8, i11 / i9);
            case 4:
                if (n.f3150g) {
                    return Math.min(i10 / i8, i11 / i9);
                }
                int iMax = Math.max(i9 / i11, i8 / i10);
                return iMax != 0 ? 1.0f / Integer.highestOneBit(iMax) : 1.0f;
            default:
                return 1.0f;
        }
    }
}
