package Z6;

/* JADX INFO: renamed from: Z6.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0471c extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8491b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0471c(int i8, int i9) {
        super(i8);
        this.f8491b = i9;
    }

    @Override // Z6.g
    public final int c(m mVar, int i8) {
        switch (this.f8491b) {
            case 0:
                if (i8 >= 100) {
                    return i8;
                }
                int i9 = mVar.f8529J + i8;
                if (i8 < mVar.f8530K) {
                    i9 += 100;
                }
                return i9;
            case 1:
                return i8 - 1;
            case 2:
                if (i8 == 7) {
                    return 1;
                }
                return 1 + i8;
            case 3:
                if (i8 == 24) {
                    return 0;
                }
                return i8;
            default:
                if (i8 == 12) {
                    return 0;
                }
                return i8;
        }
    }
}
