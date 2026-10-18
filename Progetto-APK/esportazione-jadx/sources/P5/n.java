package P5;

import O5.t;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public final class n extends o {
    @Override // P5.o
    public final float a(t tVar, t tVar2) {
        int i8;
        int i9 = tVar.f5638G;
        if (i9 <= 0 || (i8 = tVar.f5639H) <= 0) {
            return 0.0f;
        }
        int i10 = tVar2.f5638G;
        float f8 = (i9 * 1.0f) / i10;
        if (f8 < 1.0f) {
            f8 = 1.0f / f8;
        }
        float f9 = i8;
        float f10 = tVar2.f5639H;
        float f11 = (f9 * 1.0f) / f10;
        if (f11 < 1.0f) {
            f11 = 1.0f / f11;
        }
        float f12 = (1.0f / f8) / f11;
        float f13 = ((i9 * 1.0f) / f9) / ((i10 * 1.0f) / f10);
        if (f13 < 1.0f) {
            f13 = 1.0f / f13;
        }
        return (((1.0f / f13) / f13) / f13) * f12;
    }

    @Override // P5.o
    public final Rect b(t tVar, t tVar2) {
        return new Rect(0, 0, tVar2.f5638G, tVar2.f5639H);
    }
}
