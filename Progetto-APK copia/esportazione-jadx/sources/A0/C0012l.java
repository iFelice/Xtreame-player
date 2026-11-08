package A0;

import android.content.Context;
import android.graphics.Matrix;

/* JADX INFO: renamed from: A0.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0012l implements P {
    @Override // A0.P
    public final Matrix a() {
        Matrix matrix = new Matrix();
        matrix.setScale(1.0f, -1.0f);
        return matrix;
    }

    @Override // A0.P
    public final /* synthetic */ float[] b(long j8) {
        return O.a(this, j8);
    }

    @Override // A0.P
    public final /* synthetic */ int c() {
        return 9729;
    }

    @Override // A0.P
    public final p117p0.F d(int i8, int i9) {
        return new p117p0.F(i8, i9);
    }

    @Override // A0.G
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final C0013m e(Context context, boolean z7) {
        return C0013m.j(context, z4.H.x(this), z4.d0.f31844K, z7);
    }
}
