package P5;

import O5.t;
import android.graphics.Rect;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends o {
    @Override // P5.o
    public final float a(t tVar, t tVar2) {
        if (tVar.f5638G <= 0 || tVar.f5639H <= 0) {
            return 0.0f;
        }
        t tVarA = tVar.a(tVar2);
        int i8 = tVarA.f5638G;
        float fPow = (i8 * 1.0f) / tVar.f5638G;
        if (fPow > 1.0f) {
            fPow = (float) Math.pow(1.0f / fPow, 1.1d);
        }
        float f8 = ((tVarA.f5639H * 1.0f) / tVar2.f5639H) + ((i8 * 1.0f) / tVar2.f5638G);
        return ((1.0f / f8) / f8) * fPow;
    }

    @Override // P5.o
    public final Rect b(t tVar, t tVar2) {
        t tVarA = tVar.a(tVar2);
        Log.i("k", "Preview: " + tVar + "; Scaled: " + tVarA + "; Want: " + tVar2);
        int i8 = tVarA.f5638G;
        int i9 = (i8 - tVar2.f5638G) / 2;
        int i10 = tVarA.f5639H;
        int i11 = (i10 - tVar2.f5639H) / 2;
        return new Rect(-i9, -i11, i8 - i9, i10 - i11);
    }
}
