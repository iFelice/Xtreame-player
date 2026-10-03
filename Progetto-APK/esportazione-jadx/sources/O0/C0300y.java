package O0;

/* JADX INFO: renamed from: O0.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0300y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f5257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f5260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5261e;

    public C0300y(Object obj) {
        this(obj, -1L);
    }

    public final C0300y a(Object obj) {
        if (this.f5257a.equals(obj)) {
            return this;
        }
        return new C0300y(obj, this.f5258b, this.f5259c, this.f5260d, this.f5261e);
    }

    public final boolean b() {
        return this.f5258b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0300y)) {
            return false;
        }
        C0300y c0300y = (C0300y) obj;
        return this.f5257a.equals(c0300y.f5257a) && this.f5258b == c0300y.f5258b && this.f5259c == c0300y.f5259c && this.f5260d == c0300y.f5260d && this.f5261e == c0300y.f5261e;
    }

    public final int hashCode() {
        return ((((((((this.f5257a.hashCode() + 527) * 31) + this.f5258b) * 31) + this.f5259c) * 31) + ((int) this.f5260d)) * 31) + this.f5261e;
    }

    public C0300y(Object obj, int i8, long j8) {
        this(obj, -1, -1, j8, i8);
    }

    public C0300y(Object obj, long j8) {
        this(obj, -1, -1, j8, -1);
    }

    public C0300y(Object obj, int i8, int i9, long j8, int i10) {
        this.f5257a = obj;
        this.f5258b = i8;
        this.f5259c = i9;
        this.f5260d = j8;
        this.f5261e = i10;
    }
}
