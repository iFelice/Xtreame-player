package T6;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import java.io.Serializable;
import java.text.NumberFormat;
import java.util.ArrayList;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements Serializable {
    /* JADX WARN: Code duplicated, block: B:25:0x0054 A[PHI: r6
      0x0054: PHI (r6v4 float) = (r6v1 float), (r6v5 float) binds: [B:33:0x0073, B:24:0x0052] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:6:0x0015 A[PHI: r3
      0x0015: PHI (r3v4 float) = (r3v0 float), (r3v5 float) binds: [B:14:0x0036, B:5:0x0013] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:9:0x001e A[PHI: r1 r3 r4
      0x001e: PHI (r1v6 float) = (r1v4 float), (r1v13 float) binds: [B:17:0x003c, B:8:0x001c] A[DONT_GENERATE, DONT_INLINE]
      0x001e: PHI (r3v1 float) = (r3v0 float), (r3v5 float) binds: [B:17:0x003c, B:8:0x001c] A[DONT_GENERATE, DONT_INLINE]
      0x001e: PHI (r4v2 float) = (r4v1 float), (r4v4 float) binds: [B:17:0x003c, B:8:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    public static float[] a(float f8, float f9, float f10, float f11, int i8, int i9) {
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18 = i8;
        if (f9 > f18) {
            f14 = (f11 - f9) / (f10 - f8);
            f15 = f14 * f8;
            f12 = ((f18 - f9) + f15) / f14;
            if (f12 < 0.0f) {
                f13 = f9 - f15;
                f12 = 0.0f;
            } else {
                f16 = i9;
                if (f12 > f16) {
                    f13 = ((f14 * f16) + f9) - f15;
                    f12 = f16;
                } else {
                    f13 = f18;
                }
            }
        } else if (f9 < 0.0f) {
            f14 = (f11 - f9) / (f10 - f8);
            f15 = f14 * f8;
            f12 = ((-f9) + f15) / f14;
            if (f12 < 0.0f) {
                f13 = f9 - f15;
                f12 = 0.0f;
            } else {
                f16 = i9;
                if (f12 > f16) {
                    f13 = ((f14 * f16) + f9) - f15;
                    f12 = f16;
                } else {
                    f13 = 0.0f;
                }
            }
        } else {
            f12 = f8;
            f13 = f9;
        }
        if (f11 > f18) {
            float f19 = (f11 - f9) / (f10 - f8);
            f17 = f8 * f19;
            f10 = ((f18 - f9) + f17) / f19;
            if (f10 < 0.0f) {
                f11 = f9 - f17;
                f10 = 0.0f;
            } else {
                float f20 = i9;
                if (f10 > f20) {
                    f11 = ((f19 * f20) + f9) - f17;
                    f10 = f20;
                } else {
                    f11 = f18;
                }
            }
        } else if (f11 < 0.0f) {
            float f21 = (f11 - f9) / (f10 - f8);
            f17 = f8 * f21;
            f10 = ((-f9) + f17) / f21;
            if (f10 < 0.0f) {
                f11 = f9 - f17;
                f10 = 0.0f;
            } else {
                float f22 = i9;
                if (f10 > f22) {
                    f11 = ((f21 * f22) + f9) - f17;
                    f10 = f22;
                } else {
                    f11 = 0.0f;
                }
            }
        }
        return new float[]{f12, f13, f10, f11};
    }

    public static void b(V6.b bVar, Canvas canvas, int i8, int i9, int i10, int i11, Paint paint, boolean z7, int i12) {
        bVar.getClass();
        if (z7) {
            if (z7) {
                paint.setColor(i12);
            } else {
                paint.setColor(0);
            }
            paint.setStyle(Paint.Style.FILL);
            canvas.drawRect(i8, i9, i8 + i10, i9 + i11, paint);
        }
    }

    public static void e(Canvas canvas, ArrayList arrayList, Paint paint, boolean z7) {
        Path path = new Path();
        int height = canvas.getHeight();
        int width = canvas.getWidth();
        if (arrayList.size() < 4) {
            return;
        }
        float[] fArrA = a(((Float) arrayList.get(0)).floatValue(), ((Float) arrayList.get(1)).floatValue(), ((Float) arrayList.get(2)).floatValue(), ((Float) arrayList.get(3)).floatValue(), height, width);
        path.moveTo(fArrA[0], fArrA[1]);
        path.lineTo(fArrA[2], fArrA[3]);
        int size = arrayList.size();
        for (int i8 = 4; i8 < size; i8 += 2) {
            int i9 = i8 - 1;
            if (((Float) arrayList.get(i9)).floatValue() >= 0.0f || ((Float) arrayList.get(i8 + 1)).floatValue() >= 0.0f) {
                float f8 = height;
                if (((Float) arrayList.get(i9)).floatValue() <= f8 || ((Float) arrayList.get(i8 + 1)).floatValue() <= f8) {
                    float[] fArrA2 = a(((Float) arrayList.get(i8 - 2)).floatValue(), ((Float) arrayList.get(i9)).floatValue(), ((Float) arrayList.get(i8)).floatValue(), ((Float) arrayList.get(i8 + 1)).floatValue(), height, width);
                    if (!z7) {
                        path.moveTo(fArrA2[0], fArrA2[1]);
                    }
                    path.lineTo(fArrA2[2], fArrA2[3]);
                }
            }
        }
        if (z7) {
            path.lineTo(((Float) arrayList.get(0)).floatValue(), ((Float) arrayList.get(1)).floatValue());
        }
        canvas.drawPath(path, paint);
    }

    public static void f(Canvas canvas, float[] fArr, Paint paint) {
        Path path = new Path();
        int height = canvas.getHeight();
        int width = canvas.getWidth();
        if (fArr.length < 4) {
            return;
        }
        float[] fArrA = a(fArr[0], fArr[1], fArr[2], fArr[3], height, width);
        path.moveTo(fArrA[0], fArrA[1]);
        path.lineTo(fArrA[2], fArrA[3]);
        int length = fArr.length;
        for (int i8 = 4; i8 < length; i8 += 2) {
            float f8 = fArr[i8 - 1];
            if (f8 >= 0.0f || fArr[i8 + 1] >= 0.0f) {
                float f9 = height;
                if (f8 <= f9 || fArr[i8 + 1] <= f9) {
                    float[] fArrA2 = a(fArr[i8 - 2], f8, fArr[i8], fArr[i8 + 1], height, width);
                    path.lineTo(fArrA2[2], fArrA2[3]);
                }
            }
        }
        path.lineTo(fArr[0], fArr[1]);
        canvas.drawPath(path, paint);
    }

    public static void g(Canvas canvas, String str, float f8, float f9, Paint paint) {
        if (str != null) {
            String[] strArrSplit = str.split("\n");
            Rect rect = new Rect();
            int iHeight = 0;
            for (int i8 = 0; i8 < strArrSplit.length; i8++) {
                canvas.drawText(strArrSplit[i8], f8, iHeight + f9, paint);
                String str2 = strArrSplit[i8];
                paint.getTextBounds(str2, 0, str2.length(), rect);
                iHeight = rect.height() + iHeight + 5;
            }
        }
    }

    public static String h(NumberFormat numberFormat, double d6) {
        if (numberFormat != null) {
            return numberFormat.format(d6);
        }
        if (d6 == Math.round(d6)) {
            return Math.round(d6) + HttpUrl.FRAGMENT_ENCODE_SET;
        }
        return d6 + HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public static boolean j(V6.b bVar) {
        return (bVar instanceof V6.b) && bVar.f7198B0 == 2;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009b  */
    public final void c(Canvas canvas, V6.b bVar, String[] strArr, int i8, int i9, int i10, int i11, int i12, int i13, Paint paint) {
        float f8;
        float f9;
        V6.b bVar2 = bVar;
        String[] strArr2 = strArr;
        boolean z7 = bVar2.f7187P;
        float f10 = bVar2.f7188Q;
        float f11 = 32.0f;
        if (z7) {
            float f12 = i8;
            float f13 = ((i10 + i12) - i13) + 32.0f;
            paint.setTextAlign(Paint.Align.LEFT);
            paint.setTextSize(f10);
            int iMin = Math.min(strArr2.length, bVar2.f7191T.size());
            float f14 = f12;
            int i14 = 0;
            while (i14 < iMin) {
                V6.d dVar = (V6.d) bVar2.f7191T.get(i14);
                float fI = i();
                if (dVar.f7228H) {
                    String str = strArr2[i14];
                    if (strArr2.length == bVar2.f7191T.size()) {
                        paint.setColor(dVar.f7227G);
                    } else {
                        paint.setColor(-3355444);
                    }
                    int length = str.length();
                    float[] fArr = new float[length];
                    paint.getTextWidths(str, fArr);
                    float f15 = 0.0f;
                    for (int i15 = 0; i15 < length; i15++) {
                        f15 += fArr[i15];
                    }
                    float f16 = fI + 10.0f + f15;
                    float f17 = f14 + f16;
                    if (i14 <= 0) {
                        f8 = f13;
                        f9 = f14;
                    } else {
                        boolean z8 = f17 > ((float) i9);
                        if (!j(bVar) ? !z8 : f17 <= i11) {
                            f8 = f13;
                            f9 = f14;
                        } else {
                            f11 += f10;
                            f17 = f12 + f16;
                            f8 = f13 + f10;
                            f9 = f12;
                        }
                    }
                    float f18 = f17;
                    float f19 = f11;
                    float f20 = i9;
                    boolean z9 = f18 > f20;
                    if (!j(bVar) ? z9 : f18 > i11) {
                        float f21 = ((f20 - f9) - fI) - 10.0f;
                        if (j(bVar)) {
                            f21 = ((i11 - f9) - fI) - 10.0f;
                        }
                        str = str.substring(0, paint.breakText(str, true, f21, fArr)) + "...";
                    }
                    d(canvas, dVar, f9, f8, i14, paint);
                    g(canvas, str, f9 + fI + 5.0f, 5.0f + f8, paint);
                    f14 = f9 + f16;
                    f13 = f8;
                    f11 = f19;
                }
                i14++;
                bVar2 = bVar;
                strArr2 = strArr;
            }
        }
        Math.round(f11 + f10);
    }

    public abstract void d(Canvas canvas, V6.d dVar, float f8, float f9, int i8, Paint paint);

    public abstract int i();
}
