package androidx.leanback.widget;

/* JADX INFO: renamed from: androidx.leanback.widget.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0485k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p039f.S f9300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f9301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9303e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p132r.h[] f9306h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f9299a = new Object[1];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9304f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9305g = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9307i = -1;

    public final boolean a() {
        return b(this.f9301c ? com.google.android.gms.common.api.d.API_PRIORITY_OTHER : Integer.MIN_VALUE, true);
    }

    public abstract boolean b(int i8, boolean z7);

    public final boolean c(int i8) {
        if (this.f9305g < 0) {
            return false;
        }
        if (this.f9301c) {
            if (h(true, null) > i8 + this.f9302d) {
                return false;
            }
        } else if (f(false, null) < i8 - this.f9302d) {
            return false;
        }
        return true;
    }

    public final boolean d(int i8) {
        if (this.f9305g < 0) {
            return false;
        }
        if (this.f9301c) {
            if (f(false, null) < i8 - this.f9302d) {
                return false;
            }
        } else if (h(true, null) > i8 + this.f9302d) {
            return false;
        }
        return true;
    }

    public final int f(boolean z7, int[] iArr) {
        return g(iArr, this.f9301c ? this.f9304f : this.f9305g, z7);
    }

    public abstract int g(int[] iArr, int i8, boolean z7);

    public final int h(boolean z7, int[] iArr) {
        return i(iArr, this.f9301c ? this.f9305g : this.f9304f, z7);
    }

    public abstract int i(int[] iArr, int i8, boolean z7);

    public abstract p132r.h[] j(int i8, int i9);

    public abstract C0484j k(int i8);

    public void l(int i8) {
        int i9;
        if (i8 >= 0 && (i9 = this.f9305g) >= 0) {
            if (i9 >= i8) {
                this.f9305g = i8 - 1;
            }
            if (this.f9305g < this.f9304f) {
                this.f9305g = -1;
                this.f9304f = -1;
            }
            if (this.f9304f < 0) {
                this.f9307i = i8;
            }
        }
    }

    public abstract boolean m(int i8, boolean z7);

    public final void n(int i8) {
        if (i8 <= 0) {
            throw new IllegalArgumentException();
        }
        if (this.f9303e == i8) {
            return;
        }
        this.f9303e = i8;
        this.f9306h = new p132r.h[i8];
        for (int i9 = 0; i9 < this.f9303e; i9++) {
            this.f9306h[i9] = new p132r.h(0, 0);
        }
    }

    public void e(int i8, int i9, p132r.h hVar) {
    }
}
