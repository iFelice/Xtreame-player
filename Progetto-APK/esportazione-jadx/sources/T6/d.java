package T6;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.ArrayList;
import p156u.h;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends e {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public float f6612P;

    @Override // T6.a
    public final void d(Canvas canvas, V6.d dVar, float f8, float f9, int i8, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        int iB = h.b(dVar.f7231K);
        if (iB == 0) {
            float f10 = f8 + 10.0f;
            float f11 = this.f6612P;
            float f12 = f10 - f11;
            float f13 = f9 - f11;
            float f14 = f10 + f11;
            float f15 = f11 + f9;
            canvas.drawLine(f12, f13, f14, f15, paint);
            canvas.drawLine(f14, f13, f12, f15, paint);
            return;
        }
        if (iB == 1) {
            canvas.drawCircle(f8 + 10.0f, f9, this.f6612P, paint);
            return;
        }
        if (iB == 2) {
            y(canvas, paint, new float[6], f8 + 10.0f, f9);
            return;
        }
        if (iB == 3) {
            float f16 = f8 + 10.0f;
            float f17 = this.f6612P;
            canvas.drawRect(f16 - f17, f9 - f17, f16 + f17, f9 + f17, paint);
        } else if (iB == 4) {
            x(canvas, paint, new float[8], f8 + 10.0f, f9);
        } else {
            if (iB != 5) {
                return;
            }
            canvas.drawPoint(f8 + 10.0f, f9, paint);
        }
    }

    @Override // T6.a
    public final int i() {
        return 10;
    }

    @Override // T6.e
    public final b[] k(ArrayList arrayList, ArrayList arrayList2) {
        int size = arrayList.size();
        b[] bVarArr = new b[size / 2];
        for (int i8 = 0; i8 < size; i8 += 2) {
            float f8 = this.f6614H.f7196Y;
            int i9 = i8 + 1;
            bVarArr[i8 / 2] = new b(new RectF(((Float) arrayList.get(i8)).floatValue() - f8, ((Float) arrayList.get(i9)).floatValue() - f8, ((Float) arrayList.get(i8)).floatValue() + f8, ((Float) arrayList.get(i9)).floatValue() + f8), ((Double) arrayList2.get(i8)).doubleValue(), ((Double) arrayList2.get(i9)).doubleValue());
        }
        return bVarArr;
    }

    @Override // T6.e
    public final void m(Canvas canvas, Paint paint, ArrayList arrayList, V6.d dVar, float f8) {
        paint.setColor(dVar.f7227G);
        float strokeWidth = paint.getStrokeWidth();
        float f9 = dVar.f7232L;
        paint.setStrokeWidth(f9);
        paint.setStyle(Paint.Style.STROKE);
        int size = arrayList.size();
        int iB = h.b(dVar.f7231K);
        int i8 = 0;
        if (iB == 0) {
            paint.setStrokeWidth(f9);
            for (int i9 = 0; i9 < size; i9 += 2) {
                float fFloatValue = ((Float) arrayList.get(i9)).floatValue();
                float fFloatValue2 = ((Float) arrayList.get(i9 + 1)).floatValue();
                float f10 = this.f6612P;
                float f11 = fFloatValue - f10;
                float f12 = fFloatValue2 - f10;
                float f13 = fFloatValue + f10;
                float f14 = fFloatValue2 + f10;
                canvas.drawLine(f11, f12, f13, f14, paint);
                canvas.drawLine(f13, f12, f11, f14, paint);
            }
        } else if (iB == 1) {
            while (i8 < size) {
                canvas.drawCircle(((Float) arrayList.get(i8)).floatValue(), ((Float) arrayList.get(i8 + 1)).floatValue(), this.f6612P, paint);
                i8 += 2;
            }
        } else if (iB == 2) {
            float[] fArr = new float[6];
            for (int i10 = 0; i10 < size; i10 += 2) {
                y(canvas, paint, fArr, ((Float) arrayList.get(i10)).floatValue(), ((Float) arrayList.get(i10 + 1)).floatValue());
            }
        } else if (iB == 3) {
            for (int i11 = 0; i11 < size; i11 += 2) {
                float fFloatValue3 = ((Float) arrayList.get(i11)).floatValue();
                float fFloatValue4 = ((Float) arrayList.get(i11 + 1)).floatValue();
                float f15 = this.f6612P;
                canvas.drawRect(fFloatValue3 - f15, fFloatValue4 - f15, fFloatValue3 + f15, fFloatValue4 + f15, paint);
            }
        } else if (iB == 4) {
            float[] fArr2 = new float[8];
            for (int i12 = 0; i12 < size; i12 += 2) {
                x(canvas, paint, fArr2, ((Float) arrayList.get(i12)).floatValue(), ((Float) arrayList.get(i12 + 1)).floatValue());
            }
        } else if (iB == 5) {
            while (i8 < size) {
                canvas.drawPoint(((Float) arrayList.get(i8)).floatValue(), ((Float) arrayList.get(i8 + 1)).floatValue(), paint);
                i8 += 2;
            }
        }
        paint.setStrokeWidth(strokeWidth);
    }

    public final void x(Canvas canvas, Paint paint, float[] fArr, float f8, float f9) {
        fArr[0] = f8;
        float f10 = this.f6612P;
        fArr[1] = f9 - f10;
        fArr[2] = f8 - f10;
        fArr[3] = f9;
        fArr[4] = f8;
        fArr[5] = f9 + f10;
        fArr[6] = f8 + f10;
        fArr[7] = f9;
        a.f(canvas, fArr, paint);
    }

    public final void y(Canvas canvas, Paint paint, float[] fArr, float f8, float f9) {
        fArr[0] = f8;
        float f10 = this.f6612P;
        fArr[1] = (f9 - f10) - (f10 / 2.0f);
        fArr[2] = f8 - f10;
        float f11 = f9 + f10;
        fArr[3] = f11;
        fArr[4] = f8 + f10;
        fArr[5] = f11;
        a.f(canvas, fArr, paint);
    }
}
