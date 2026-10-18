package T6;

import A0.O;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e extends a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final U6.c f6613G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final V6.b f6614H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public float f6615I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public float f6616J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public U6.a f6617K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Rect f6618L;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public transient Paint f6620N;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final HashMap f6619M = new HashMap();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public HashMap f6621O = new HashMap();

    public e(U6.c cVar, V6.b bVar) {
        this.f6613G = cVar;
        this.f6614H = bVar;
    }

    public static int q(Paint.Align align) {
        return align == Paint.Align.LEFT ? -4 : 4;
    }

    public static ArrayList s(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Double d6 = (Double) it.next();
            if (d6.isNaN()) {
                arrayList2.remove(d6);
            }
        }
        return arrayList2;
    }

    public abstract b[] k(ArrayList arrayList, ArrayList arrayList2);

    public final void l(U6.d dVar, Canvas canvas, Paint paint, ArrayList arrayList, V6.d dVar2, float f8, int i8, int i9, int i10) {
        int i11;
        d dVarR;
        paint.getStrokeCap();
        paint.getStrokeJoin();
        paint.getStrokeMiter();
        paint.getPathEffect();
        paint.getStyle();
        m(canvas, paint, arrayList, dVar2, f8);
        if (u(dVar2) && (dVarR = r()) != null) {
            dVarR.m(canvas, paint, arrayList, dVar2, f8);
        }
        paint.setTextSize(dVar2.f7236P);
        int i12 = 1;
        if (i9 == 1) {
            paint.setTextAlign(Paint.Align.CENTER);
        } else {
            paint.setTextAlign(Paint.Align.LEFT);
        }
        if (dVar2.f7234N) {
            paint.setTextAlign(dVar2.f7237Q);
            int size = arrayList.size();
            float f9 = dVar2.f7238R;
            int i13 = 2;
            NumberFormat numberFormat = null;
            int i14 = 0;
            if (size <= 2) {
                for (int i15 = 0; i15 < arrayList.size(); i15 += 2) {
                    n(canvas, a.h(null, dVar.d((i15 / 2) + i10)), ((Float) arrayList.get(i15)).floatValue(), ((Float) arrayList.get(i15 + 1)).floatValue() - f9, paint, 0.0f);
                }
                return;
            }
            float fFloatValue = ((Float) arrayList.get(0)).floatValue();
            float fFloatValue2 = ((Float) arrayList.get(1)).floatValue();
            int i16 = 0;
            while (i16 < arrayList.size()) {
                int i17 = dVar2.f7235O;
                if (i16 == i13) {
                    float f10 = i17;
                    if (Math.abs(((Float) arrayList.get(i13)).floatValue() - ((Float) arrayList.get(i14)).floatValue()) > f10 || Math.abs(((Float) arrayList.get(3)).floatValue() - ((Float) arrayList.get(i12)).floatValue()) > f10) {
                        String strH = a.h(numberFormat, dVar.d(i10));
                        float fFloatValue3 = ((Float) arrayList.get(i14)).floatValue();
                        float fFloatValue4 = ((Float) arrayList.get(i12)).floatValue() - f9;
                        i11 = i16;
                        n(canvas, strH, fFloatValue3, fFloatValue4, paint, 0.0f);
                        n(canvas, a.h(numberFormat, dVar.d(i10 + 1)), ((Float) arrayList.get(2)).floatValue(), ((Float) arrayList.get(3)).floatValue() - f9, paint, 0.0f);
                        fFloatValue = ((Float) arrayList.get(2)).floatValue();
                        fFloatValue2 = ((Float) arrayList.get(3)).floatValue();
                    } else {
                        i11 = i16;
                    }
                } else {
                    i11 = i16;
                    NumberFormat numberFormat2 = numberFormat;
                    if (i11 > 2) {
                        float f11 = i17;
                        if (Math.abs(((Float) arrayList.get(i11)).floatValue() - fFloatValue) > f11 || Math.abs(((Float) arrayList.get(i11 + 1)).floatValue() - fFloatValue2) > f11) {
                            int i18 = i11 + 1;
                            n(canvas, a.h(numberFormat2, dVar.d((i11 / 2) + i10)), ((Float) arrayList.get(i11)).floatValue(), ((Float) arrayList.get(i18)).floatValue() - f9, paint, 0.0f);
                            fFloatValue = ((Float) arrayList.get(i11)).floatValue();
                            fFloatValue2 = ((Float) arrayList.get(i18)).floatValue();
                        }
                    }
                    i16 = i11 + 2;
                    i14 = 0;
                    numberFormat = null;
                    i12 = 1;
                    i13 = 2;
                }
                i16 = i11 + 2;
                i14 = 0;
                numberFormat = null;
                i12 = 1;
                i13 = 2;
            }
        }
    }

    public abstract void m(Canvas canvas, Paint paint, ArrayList arrayList, V6.d dVar, float f8);

    public final void n(Canvas canvas, String str, float f8, float f9, Paint paint, float f10) {
        float f11 = (-O.s(this.f6614H.f7198B0)) + f10;
        if (f11 != 0.0f) {
            canvas.rotate(f11, f8, f9);
        }
        a.g(canvas, str, f8, f9, paint);
        if (f11 != 0.0f) {
            canvas.rotate(-f11, f8, f9);
        }
    }

    public final void o(ArrayList arrayList, Double[] dArr, Canvas canvas, Paint paint, int i8, int i9, int i10, double d6, double d8, double d9) {
        String str;
        float f8;
        int size = arrayList.size();
        V6.b bVar = this.f6614H;
        boolean z7 = bVar.f7182K;
        boolean z8 = bVar.f7190S;
        if (z8) {
            this.f6620N.setStyle(Paint.Style.STROKE);
            Paint paint2 = this.f6620N;
            this.f6614H.getClass();
            paint2.setStrokeWidth(0.0f);
        }
        boolean z9 = this.f6614H.f7184M;
        int i11 = 0;
        while (i11 < size) {
            double dDoubleValue = ((Double) arrayList.get(i11)).doubleValue();
            float f9 = (float) (((dDoubleValue - d8) * d6) + ((double) i8));
            if (z7) {
                paint.setColor(this.f6614H.f7223y0);
                if (z9) {
                    float f10 = i10;
                    f8 = f9;
                    canvas.drawLine(f9, f10, f8, (this.f6614H.f7186O / 3.0f) + f10, paint);
                } else {
                    f8 = f9;
                }
                this.f6614H.getClass();
                String strH = a.h(null, dDoubleValue);
                V6.b bVar2 = this.f6614H;
                float f11 = ((bVar2.f7186O * 4.0f) / 3.0f) + i10 + 0.0f;
                bVar2.getClass();
                n(canvas, strH, f8, f11, paint, 0.0f);
            } else {
                f8 = f9;
                i11 = i11;
            }
            if (z8) {
                this.f6620N.setColor(this.f6614H.f7217s0[0]);
                canvas.drawLine(f8, i10, f8, i9, this.f6620N);
            }
            i11++;
            z9 = z9;
        }
        this.f6614H.getClass();
        V6.b bVar3 = this.f6614H;
        boolean z10 = bVar3.f7184M;
        if (z7) {
            paint.setColor(bVar3.f7223y0);
            for (Double d10 : dArr) {
                if (d8 <= d10.doubleValue() && d10.doubleValue() <= d9) {
                    float fDoubleValue = (float) (((d10.doubleValue() - d8) * d6) + ((double) i8));
                    paint.setColor(this.f6614H.f7223y0);
                    if (z10) {
                        float f12 = i10;
                        canvas.drawLine(fDoubleValue, f12, fDoubleValue, (this.f6614H.f7186O / 3.0f) + f12, paint);
                    }
                    V6.b bVar4 = this.f6614H;
                    synchronized (bVar4) {
                        str = (String) bVar4.f7208j0.get(d10);
                    }
                    n(canvas, str, fDoubleValue, ((this.f6614H.f7186O * 4.0f) / 3.0f) + i10 + 0.0f, paint, 0.0f);
                }
            }
        }
    }

    public final void p(HashMap map, Canvas canvas, Paint paint, int i8, int i9, int i10, int i11, double[] dArr, double[] dArr2) {
        boolean z7;
        float f8;
        double d6;
        V6.b bVar = this.f6614H;
        int i12 = bVar.f7198B0;
        boolean z8 = bVar.f7189R;
        if (z8) {
            this.f6620N.setStyle(Paint.Style.STROKE);
            this.f6620N.setStrokeWidth(0.0f);
        }
        boolean z9 = bVar.f7183L;
        boolean z10 = bVar.f7184M;
        int i13 = 0;
        while (i13 < i8) {
            paint.setTextAlign(bVar.f7220v0[i13]);
            List list = (List) map.get(Integer.valueOf(i13));
            int size = list.size();
            int i14 = 0;
            while (i14 < size) {
                Double d8 = (Double) list.get(i14);
                List list2 = list;
                double dDoubleValue = d8.doubleValue();
                int i15 = i14;
                Paint.Align align = bVar.f7222x0[i13];
                int i16 = size;
                boolean z11 = bVar.b(i13, d8) != null;
                float f9 = (float) (((double) i11) - ((dDoubleValue - dArr2[i13]) * dArr[i13]));
                if (i12 == 1) {
                    if (!z9 || z11) {
                        f8 = f9;
                        i13 = i13;
                        z7 = z10;
                        z9 = z9;
                    } else {
                        paint.setColor(bVar.f7224z0[i13]);
                        if (align == Paint.Align.LEFT) {
                            if (z10) {
                                f8 = f9;
                                d6 = dDoubleValue;
                                canvas.drawLine(q(align) + i9, f9, i9, f8, paint);
                            } else {
                                f8 = f9;
                                d6 = dDoubleValue;
                            }
                            z7 = z10;
                            n(canvas, a.h(bVar.f7197A0[i13], d6), i9 - 0.0f, f8 - bVar.f7221w0, paint, 0.0f);
                        } else {
                            i13 = i13;
                            z7 = z10;
                            f8 = f9;
                            z9 = z9;
                            if (z7) {
                                canvas.drawLine(i10, f8, q(align) + i10, f8, paint);
                            }
                            n(canvas, a.h(bVar.f7197A0[i13], dDoubleValue), i10 + 0.0f, f8 - bVar.f7221w0, paint, 0.0f);
                        }
                    }
                    if (z8) {
                        this.f6620N.setColor(bVar.f7217s0[i13]);
                        canvas.drawLine(i9, f8, i10, f8, this.f6620N);
                    }
                } else {
                    i13 = i13;
                    z7 = z10;
                    z9 = z9;
                    if (i12 == 2) {
                        if (z9 && !z11) {
                            paint.setColor(bVar.f7224z0[i13]);
                            if (z7) {
                                canvas.drawLine(i10 - q(align), f9, i10, f9, paint);
                            }
                            n(canvas, a.h(null, dDoubleValue), i10 + 10 + 0.0f, f9 - bVar.f7221w0, paint, 0.0f);
                        }
                        if (z8) {
                            this.f6620N.setColor(bVar.f7217s0[i13]);
                            if (z7) {
                                canvas.drawLine(i10, f9, i9, f9, this.f6620N);
                            }
                        }
                    }
                    i14 = i15 + 1;
                    list = list2;
                    size = i16;
                    z9 = z9;
                    i13 = i13;
                    z10 = z7;
                }
                i14 = i15 + 1;
                list = list2;
                size = i16;
                z9 = z9;
                i13 = i13;
                z10 = z7;
            }
            i13++;
        }
    }

    public d r() {
        return null;
    }

    public final HashMap t(double[] dArr, double[] dArr2, int i8) {
        HashMap map = new HashMap();
        for (int i9 = 0; i9 < i8; i9++) {
            map.put(Integer.valueOf(i9), s(X6.b.a(dArr[i9], dArr2[i9], this.f6614H.f7207i0)));
        }
        return map;
    }

    public boolean u(V6.d dVar) {
        return false;
    }

    public final double[] v(float f8, float f9, int i8) {
        double[] dArr;
        V6.b bVar = this.f6614H;
        double d6 = bVar.f7202d0[i8];
        double d8 = bVar.f7203e0[i8];
        double d9 = bVar.f7204f0[i8];
        double d10 = bVar.f7205g0[i8];
        if ((!bVar.f(i8) || !bVar.d(i8) || !bVar.g(i8) || !bVar.e(i8)) && (dArr = (double[]) this.f6619M.get(Integer.valueOf(i8))) != null) {
            d6 = dArr[0];
            d8 = dArr[1];
            d9 = dArr[2];
            d10 = dArr[3];
        }
        Rect rect = this.f6618L;
        if (rect == null) {
            return new double[]{f8, f9};
        }
        double dWidth = (((d8 - d6) * ((double) (f8 - rect.left))) / ((double) rect.width())) + d6;
        Rect rect2 = this.f6618L;
        return new double[]{dWidth, (((d10 - d9) * ((double) ((rect2.height() + rect2.top) - f9))) / ((double) this.f6618L.height())) + d9};
    }

    public final void w(Canvas canvas, float f8, boolean z7) {
        if (z7) {
            float f9 = this.f6615I;
            canvas.scale(1.0f / f9, f9);
            float f10 = this.f6616J;
            canvas.translate(f10, -f10);
            U6.a aVar = this.f6617K;
            canvas.rotate(-f8, aVar.f6979G, aVar.f6980H);
            return;
        }
        U6.a aVar2 = this.f6617K;
        canvas.rotate(f8, aVar2.f6979G, aVar2.f6980H);
        float f11 = this.f6616J;
        canvas.translate(-f11, f11);
        float f12 = this.f6615I;
        canvas.scale(f12, 1.0f / f12);
    }
}
