package P5;

import O5.t;
import android.graphics.Rect;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final class m extends o {
    @Override // P5.o
    public final float a(t tVar, t tVar2) {
        if (tVar.f5638G <= 0 || tVar.f5639H <= 0) {
            return 0.0f;
        }
        t tVarB = tVar.b(tVar2);
        int i8 = tVarB.f5638G;
        float fPow = (i8 * 1.0f) / tVar.f5638G;
        if (fPow > 1.0f) {
            fPow = (float) Math.pow(1.0f / fPow, 1.1d);
        }
        float f8 = ((tVar2.f5639H * 1.0f) / tVarB.f5639H) * ((tVar2.f5638G * 1.0f) / i8);
        return (((1.0f / f8) / f8) / f8) * fPow;
    }

    @Override // P5.o
    public final Rect b(t tVar, t tVar2) {
        t tVarB = tVar.b(tVar2);
        Log.i("m", "Preview: " + tVar + "; Scaled: " + tVarB + "; Want: " + tVar2);
        int i8 = tVarB.f5638G;
        int i9 = (i8 - tVar2.f5638G) / 2;
        int i10 = tVarB.f5639H;
        int i11 = (i10 - tVar2.f5639H) / 2;
        return new Rect(-i9, -i11, i8 - i9, i10 - i11);
    }
}
