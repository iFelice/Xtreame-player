package X1;

import android.animation.TypeEvaluator;
import android.graphics.Rect;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class m implements TypeEvaluator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public G.d[] f7580b;

    public /* synthetic */ m(int i8) {
        this.f7579a = i8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f8, Object obj, Object obj2) {
        switch (this.f7579a) {
            case 0:
                Rect rect = (Rect) obj;
                Rect rect2 = (Rect) obj2;
                int i8 = rect.left;
                int i9 = i8 + ((int) ((rect2.left - i8) * f8));
                int i10 = rect.top;
                int i11 = i10 + ((int) ((rect2.top - i10) * f8));
                int i12 = rect.right;
                int i13 = i12 + ((int) ((rect2.right - i12) * f8));
                int i14 = rect.bottom;
                int i15 = i14 + ((int) ((rect2.bottom - i14) * f8));
                Rect rect3 = (Rect) this.f7580b;
                if (rect3 == null) {
                    return new Rect(i9, i11, i13, i15);
                }
                rect3.set(i9, i11, i13, i15);
                return (Rect) this.f7580b;
            default:
                G.d[] dVarArr = (G.d[]) obj;
                G.d[] dVarArr2 = (G.d[]) obj2;
                if (!H1.b(dVarArr, dVarArr2)) {
                    throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
                }
                if (!H1.b(this.f7580b, dVarArr)) {
                    this.f7580b = H1.n(dVarArr);
                }
                for (int i16 = 0; i16 < dVarArr.length; i16++) {
                    G.d dVar = this.f7580b[i16];
                    G.d dVar2 = dVarArr[i16];
                    G.d dVar3 = dVarArr2[i16];
                    dVar.getClass();
                    dVar.f3281a = dVar2.f3281a;
                    int i17 = 0;
                    while (true) {
                        float[] fArr = dVar2.f3282b;
                        if (i17 < fArr.length) {
                            dVar.f3282b[i17] = (dVar3.f3282b[i17] * f8) + ((1.0f - f8) * fArr[i17]);
                            i17++;
                        }
                    }
                }
                return this.f7580b;
        }
    }
}
