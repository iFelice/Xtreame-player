package W0;

/* JADX INFO: renamed from: W0.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0371d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7392f;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0371d(int i8, int i9, int i10, int i11) {
        this(i8, i9, i10, i11, 0);
        this.f7387a = 0;
    }

    public final boolean a() {
        int i8;
        int i9;
        int i10;
        int i11 = this.f7388b;
        int i12 = 2;
        if ((i11 & 7) != 0) {
            int i13 = this.f7391e;
            int i14 = this.f7389c;
            if (i13 > i14) {
                i10 = 1;
            } else {
                i10 = i13 == i14 ? 2 : 4;
            }
            if ((i10 & i11) == 0) {
                return false;
            }
        }
        if ((i11 & 112) != 0) {
            int i15 = this.f7391e;
            int i16 = this.f7390d;
            if (i15 > i16) {
                i9 = 1;
            } else {
                i9 = i15 == i16 ? 2 : 4;
            }
            if (((i9 << 4) & i11) == 0) {
                return false;
            }
        }
        if ((i11 & 1792) != 0) {
            int i17 = this.f7392f;
            int i18 = this.f7389c;
            if (i17 > i18) {
                i8 = 1;
            } else {
                i8 = i17 == i18 ? 2 : 4;
            }
            if (((i8 << 8) & i11) == 0) {
                return false;
            }
        }
        if ((i11 & 28672) != 0) {
            int i19 = this.f7392f;
            int i20 = this.f7390d;
            if (i19 > i20) {
                i12 = 1;
            } else if (i19 != i20) {
                i12 = 4;
            }
            if ((i11 & (i12 << 12)) == 0) {
                return false;
            }
        }
        return true;
    }

    public final boolean b(int i8) {
        return i8 != -1 && this.f7390d == (i8 % 3) * 3;
    }

    public final void c() {
        this.f7392f = (this.f7390d / 3) + ((this.f7391e / 30) * 3);
    }

    public final String toString() {
        switch (this.f7387a) {
            case 3:
                return this.f7392f + "|" + this.f7391e;
            default:
                return super.toString();
        }
    }

    public C0371d(int i8, int i9, int i10, int i11, int i12, int i13) {
        this.f7387a = i12;
        if (i12 != 3) {
            this.f7388b = i8;
            this.f7389c = i11;
            this.f7390d = i9;
            this.f7391e = i10;
            this.f7392f = i9 + i10;
            return;
        }
        this.f7392f = -1;
        this.f7388b = i8;
        this.f7389c = i9;
        this.f7390d = i10;
        this.f7391e = i11;
    }

    public C0371d(int i8, int i9, int i10, int i11, int i12) {
        this.f7387a = 0;
        this.f7388b = i8;
        this.f7390d = 2;
        this.f7389c = i9;
        this.f7391e = i10;
        this.f7392f = i11;
    }

    public C0371d() {
        this.f7387a = 1;
        this.f7388b = 0;
    }
}
