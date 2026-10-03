package A0;

import android.content.Context;
import android.graphics.Matrix;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class S implements P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f79b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f80c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f81d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f82e = 9729;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f83f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f84g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f85h = -1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Matrix f86i = new Matrix();

    public S(int i8, int i9) {
        this.f78a = i8;
        this.f79b = i9;
    }

    public static S f(int i8, int i9) {
        H1.c("width " + i8 + " must be positive", i8 > 0);
        H1.c("height " + i9 + " must be positive", i9 > 0);
        return new S(i8, i9);
    }

    @Override // A0.P
    public final Matrix a() {
        Matrix matrix = this.f86i;
        H1.k(matrix, "configure must be called first");
        return matrix;
    }

    @Override // A0.P
    public final /* synthetic */ float[] b(long j8) {
        return O.a(this, j8);
    }

    @Override // A0.P
    public final int c() {
        return this.f82e;
    }

    @Override // A0.P
    public final p117p0.F d(int i8, int i9) {
        H1.c("inputWidth must be positive", i8 > 0);
        H1.c("inputHeight must be positive", i9 > 0);
        Matrix matrix = new Matrix();
        this.f86i = matrix;
        float f8 = i8;
        this.f84g = f8;
        float f9 = i9;
        this.f85h = f9;
        int i10 = this.f79b;
        int i11 = this.f78a;
        if (i11 != -1 && i10 != -1) {
            this.f80c = i11 / i10;
        }
        float f10 = this.f80c;
        if (f10 != -1.0f) {
            float f11 = f8 / f9;
            int i12 = this.f81d;
            if (i12 == 0) {
                if (f10 > f11) {
                    matrix.setScale(f11 / f10, 1.0f);
                    this.f84g = this.f85h * this.f80c;
                } else {
                    matrix.setScale(1.0f, f10 / f11);
                    this.f85h = this.f84g / this.f80c;
                }
            } else if (i12 == 1) {
                if (f10 > f11) {
                    matrix.setScale(1.0f, f10 / f11);
                    this.f85h = this.f84g / this.f80c;
                } else {
                    matrix.setScale(f11 / f10, 1.0f);
                    this.f84g = this.f85h * this.f80c;
                }
            } else if (i12 == 2) {
                if (f10 > f11) {
                    this.f84g = f9 * f10;
                } else {
                    this.f85h = f8 / f10;
                }
            }
        }
        if (i10 != -1) {
            if (i11 != -1) {
                this.f84g = i11;
                this.f85h = i10;
            } else if (!this.f83f || i9 <= i8) {
                float f12 = i10;
                this.f84g = (this.f84g * f12) / this.f85h;
                this.f85h = f12;
            } else {
                float f13 = i10;
                this.f85h = (this.f85h * f13) / this.f84g;
                this.f84g = f13;
            }
        }
        return new p117p0.F(Math.round(this.f84g), Math.round(this.f85h));
    }

    @Override // A0.G
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final C0013m e(Context context, boolean z7) {
        return C0013m.j(context, z4.H.x(this), z4.d0.f31844K, z7);
    }
}
