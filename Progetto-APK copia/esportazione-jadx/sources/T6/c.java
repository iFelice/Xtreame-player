package T6;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.ArrayList;
import p156u.h;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends e {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public d f6611P;

    @Override // T6.a
    public final void d(Canvas canvas, V6.d dVar, float f8, float f9, int i8, Paint paint) {
        float strokeWidth = paint.getStrokeWidth();
        paint.setStrokeWidth(dVar.f7233M);
        canvas.drawLine(f8, f9, f8 + 30.0f, f9, paint);
        paint.setStrokeWidth(strokeWidth);
        if (u(dVar)) {
            this.f6611P.d(canvas, dVar, f8 + 5.0f, f9, i8, paint);
        }
    }

    @Override // T6.a
    public final int i() {
        return 30;
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
        V6.c[] cVarArr;
        float height;
        boolean z7;
        int i8;
        boolean z8;
        float strokeWidth = paint.getStrokeWidth();
        paint.setStrokeWidth(dVar.f7233M);
        V6.c[] cVarArr2 = (V6.c[]) dVar.f7230J.toArray(new V6.c[0]);
        int length = cVarArr2.length;
        int i9 = 0;
        while (i9 < length) {
            V6.c cVar = cVarArr2[i9];
            if (cVar.f7225G != 1) {
                paint.setColor(cVar.f7226H);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(arrayList);
                int i10 = cVar.f7225G;
                int iB = h.b(i10);
                if (iB == 1 || iB == 2 || iB == 3) {
                    height = f8;
                } else if (iB == 4) {
                    height = canvas.getHeight();
                } else {
                    if (iB != 5) {
                        throw new RuntimeException("You have added a new type of filling but have not implemented.");
                    }
                    height = 0.0f;
                }
                if (i10 == 4 || i10 == 3) {
                    ArrayList arrayList3 = new ArrayList();
                    int size = arrayList2.size();
                    if ((size <= 0 || i10 != 4 || ((Float) arrayList2.get(1)).floatValue() >= height) && (i10 != 3 || ((Float) arrayList2.get(1)).floatValue() <= height)) {
                        z7 = false;
                    } else {
                        arrayList3.add(arrayList2.get(0));
                        arrayList3.add(arrayList2.get(1));
                        z7 = true;
                    }
                    int i11 = 3;
                    while (i11 < size) {
                        float fFloatValue = ((Float) arrayList2.get(i11 - 2)).floatValue();
                        V6.c[] cVarArr3 = cVarArr2;
                        Float f9 = (Float) arrayList2.get(i11);
                        float fFloatValue2 = f9.floatValue();
                        if ((fFloatValue >= height || fFloatValue2 <= height) && (fFloatValue <= height || fFloatValue2 >= height)) {
                            if (!z7 && (i10 != 4 || fFloatValue2 >= height)) {
                                if (i10 == 3 && fFloatValue2 > height) {
                                }
                                i8 = 2;
                            }
                            arrayList3.add(arrayList2.get(i11 - 1));
                            arrayList3.add(f9);
                            i8 = 2;
                        } else {
                            float fFloatValue3 = ((Float) arrayList2.get(i11 - 3)).floatValue();
                            Float f10 = (Float) arrayList2.get(i11 - 1);
                            arrayList3.add(Float.valueOf((((height - fFloatValue) * (f10.floatValue() - fFloatValue3)) / (fFloatValue2 - fFloatValue)) + fFloatValue3));
                            arrayList3.add(Float.valueOf(height));
                            if ((i10 != 4 || fFloatValue2 <= height) && (i10 != 3 || fFloatValue2 >= height)) {
                                arrayList3.add(f10);
                                arrayList3.add(f9);
                                z8 = true;
                            } else {
                                i11 += 2;
                                z8 = false;
                            }
                            z7 = z8;
                            i8 = 2;
                        }
                        i11 += i8;
                        cVarArr2 = cVarArr3;
                        size = size;
                    }
                    cVarArr = cVarArr2;
                    arrayList2.clear();
                    arrayList2.addAll(arrayList3);
                } else {
                    cVarArr = cVarArr2;
                }
                int size2 = arrayList2.size();
                if (size2 > 0) {
                    arrayList2.set(0, Float.valueOf(((Float) arrayList2.get(0)).floatValue() + 1.0f));
                    arrayList2.add(arrayList2.get(size2 - 2));
                    arrayList2.add(Float.valueOf(height));
                    arrayList2.add(arrayList2.get(0));
                    arrayList2.add(arrayList2.get(size2 + 1));
                    for (int i12 = 0; i12 < size2 + 4; i12 += 2) {
                        int i13 = i12 + 1;
                        if (((Float) arrayList2.get(i13)).floatValue() < 0.0f) {
                            arrayList2.set(i13, Float.valueOf(0.0f));
                        }
                    }
                    paint.setStyle(Paint.Style.FILL);
                    a.e(canvas, arrayList2, paint, true);
                }
            } else {
                cVarArr = cVarArr2;
            }
            i9++;
            cVarArr2 = cVarArr;
        }
        paint.setColor(dVar.f7227G);
        paint.setStyle(Paint.Style.STROKE);
        a.e(canvas, arrayList, paint, false);
        paint.setStrokeWidth(strokeWidth);
    }

    @Override // T6.e
    public final d r() {
        return this.f6611P;
    }

    @Override // T6.e
    public final boolean u(V6.d dVar) {
        return dVar.f7231K != 6;
    }
}
