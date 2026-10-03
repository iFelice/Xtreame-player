package S6;

import A0.O;
import F5.g;
import T6.e;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.cast.X;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends View {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final int f6454a0 = Color.argb(175, 150, 150, 150);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public T6.a f6455G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public V6.b f6456H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Rect f6457I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Handler f6458J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public RectF f6459K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Bitmap f6460L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Bitmap f6461M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Bitmap f6462N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f6463O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public W6.b f6464P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public W6.b f6465Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public g f6466R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public Paint f6467S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public b f6468T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public float f6469U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public float f6470V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f6471W;

    public final void a() {
        this.f6458J.post(new X(this, 12));
    }

    public final void b() {
        U6.d[] dVarArr;
        a aVar = this;
        int i8 = 4;
        g gVar = aVar.f6466R;
        if (gVar != null) {
            T6.a aVar2 = (T6.a) gVar.f24905a;
            if (!(aVar2 instanceof e)) {
                O.G(aVar2);
                throw null;
            }
            if (((e) aVar2).f6613G != null) {
                V6.b bVar = (V6.b) gVar.f24906b;
                int i9 = bVar.f7218t0;
                if (bVar.f7215q0.get(0) != null) {
                    for (int i10 = 0; i10 < i9; i10++) {
                        if (((V6.b) gVar.f24906b).f7215q0.get(Integer.valueOf(i10)) != null) {
                            V6.b bVar2 = (V6.b) gVar.f24906b;
                            double[] dArr = (double[]) bVar2.f7215q0.get(Integer.valueOf(i10));
                            bVar2.k(i10, dArr[0]);
                            bVar2.j(i10, dArr[1]);
                            bVar2.m(i10, dArr[2]);
                            bVar2.l(i10, dArr[3]);
                        }
                    }
                } else {
                    U6.c cVar = ((e) ((T6.a) gVar.f24905a)).f6613G;
                    synchronized (cVar) {
                        dVarArr = (U6.d[]) cVar.f6981G.toArray(new U6.d[0]);
                    }
                    int length = dVarArr.length;
                    if (length > 0) {
                        int i11 = 0;
                        while (i11 < i9) {
                            double[] dArr2 = new double[i8];
                            // fill-array-data instruction
                            dArr2[0] = Double.MAX_VALUE;
                            dArr2[1] = -1.7976931348623157E308d;
                            dArr2[2] = Double.MAX_VALUE;
                            dArr2[3] = -1.7976931348623157E308d;
                            for (int i12 = 0; i12 < length; i12++) {
                                U6.d dVar = dVarArr[i12];
                                dVar.getClass();
                                if (i11 == 0) {
                                    dArr2[0] = Math.min(dArr2[0], dVar.f6984I);
                                    dArr2[1] = Math.max(dArr2[1], dVarArr[i12].f6985J);
                                    dArr2[2] = Math.min(dArr2[2], dVarArr[i12].f6986K);
                                    dArr2[3] = Math.max(dArr2[3], dVarArr[i12].f6987L);
                                }
                            }
                            double dAbs = Math.abs(dArr2[1] - dArr2[0]) / 40.0d;
                            double dAbs2 = Math.abs(dArr2[3] - dArr2[2]) / 40.0d;
                            V6.b bVar3 = (V6.b) gVar.f24906b;
                            double[] dArr3 = {dArr2[0] - dAbs, dArr2[1] + dAbs, dArr2[2] - dAbs2, dArr2[3] + dAbs2};
                            bVar3.getClass();
                            bVar3.k(i11, dArr3[0]);
                            bVar3.j(i11, dArr3[1]);
                            bVar3.m(i11, dArr3[2]);
                            bVar3.l(i11, dArr3[3]);
                            i11++;
                            i8 = 4;
                        }
                    }
                }
                aVar = this;
            }
            aVar.f6464P.t();
            a();
        }
    }

    public T6.a getChart() {
        return this.f6455G;
    }

    public U6.b getCurrentSeriesAndPoint() {
        RectF rectF;
        float f8 = this.f6469U;
        float f9 = this.f6470V;
        e eVar = (e) this.f6455G;
        HashMap map = eVar.f6621O;
        if (map != null) {
            for (int size = map.size() - 1; size >= 0; size--) {
                if (eVar.f6621O.get(Integer.valueOf(size)) != null) {
                    for (T6.b bVar : (List) eVar.f6621O.get(Integer.valueOf(size))) {
                        if (bVar != null && (rectF = bVar.f6610a) != null && rectF.contains(f8, f9)) {
                            return new U6.b();
                        }
                    }
                }
            }
        }
        return null;
    }

    public RectF getZoomRectangle() {
        return this.f6459K;
    }

    /* JADX WARN: Code duplicated, block: B:175:0x0744  */
    /* JADX WARN: Code duplicated, block: B:177:0x075f  */
    /* JADX WARN: Code duplicated, block: B:178:0x0777  */
    /* JADX WARN: Code duplicated, block: B:181:0x07d7  */
    /* JADX WARN: Code duplicated, block: B:183:0x07e3  */
    /* JADX WARN: Code duplicated, block: B:185:0x07f1  */
    /* JADX WARN: Code duplicated, block: B:205:0x08f4  */
    /* JADX WARN: Code duplicated, block: B:210:0x0927  */
    /* JADX WARN: Code duplicated, block: B:212:0x0932  */
    /* JADX WARN: Code duplicated, block: B:214:0x094a  */
    /* JADX WARN: Code duplicated, block: B:216:0x0972  */
    /* JADX WARN: Code duplicated, block: B:218:0x097c  */
    /* JADX WARN: Code duplicated, block: B:219:0x099c  */
    /* JADX WARN: Code duplicated, block: B:222:0x09f6  */
    /* JADX WARN: Code duplicated, block: B:224:0x0a01  */
    /* JADX WARN: Code duplicated, block: B:226:0x0a56  */
    /* JADX WARN: Code duplicated, block: B:228:0x0a5e  */
    /* JADX WARN: Code duplicated, block: B:229:0x0a6d  */
    /* JADX WARN: Code duplicated, block: B:231:0x0a83  */
    /* JADX WARN: Code duplicated, block: B:233:0x0aac  */
    /* JADX WARN: Code duplicated, block: B:235:0x0ab4  */
    /* JADX WARN: Code duplicated, block: B:238:0x0ae9  */
    /* JADX WARN: Code duplicated, block: B:23:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:240:0x0b0c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:243:0x0b18  */
    /* JADX WARN: Code duplicated, block: B:244:0x0b1a  */
    /* JADX WARN: Code duplicated, block: B:248:0x0b23  */
    /* JADX WARN: Code duplicated, block: B:250:0x0b32  */
    /* JADX WARN: Code duplicated, block: B:251:0x0b3d  */
    /* JADX WARN: Code duplicated, block: B:253:0x0b42  */
    /* JADX WARN: Code duplicated, block: B:255:0x0b4e  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z7;
        Paint paint;
        boolean z8;
        int i12;
        int i13;
        double[] dArr;
        double[] dArr2;
        int i14;
        int i15;
        int i16;
        V6.b bVar;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        Paint paint2;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        Canvas canvas2;
        V6.b bVar2;
        float f8;
        float f9;
        float f10;
        int i30;
        int i31;
        boolean z9;
        int i32;
        int i33;
        float f11;
        int i34;
        Paint paint3;
        Paint paint4;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        V6.b bVar3;
        int i40;
        int i41;
        float f12;
        int i42;
        V6.b bVar4;
        int i43;
        int i44;
        int i45;
        int i46;
        Double[] dArrC;
        int length;
        int i47;
        Double d6;
        int i48;
        int i49;
        int i50;
        int i51;
        int i52;
        int i53;
        double[] dArr3;
        Paint paint5;
        double[] dArr4;
        int i54;
        Object obj;
        int i55;
        ArrayList arrayList;
        LinkedList linkedList;
        Object obj2;
        boolean[] zArr;
        super.onDraw(canvas);
        canvas.getClipBounds(this.f6457I);
        Rect rect = this.f6457I;
        int i56 = rect.top;
        int i57 = rect.left;
        int iWidth = rect.width();
        int iHeight = this.f6457I.height();
        this.f6456H.getClass();
        T6.a aVar = this.f6455G;
        Paint paint6 = this.f6467S;
        e eVar = (e) aVar;
        paint6.setAntiAlias(eVar.f6614H.f7192U);
        V6.b bVar5 = eVar.f6614H;
        int i58 = iHeight / 5;
        float f13 = bVar5.f7201c0;
        boolean z10 = bVar5.f7187P;
        if (!z10) {
            i58 = 0;
        }
        if (!z10 && bVar5.f7182K) {
            i58 = (int) (((bVar5.f7186O * 4.0f) / 3.0f) + f13);
        }
        int i59 = i58;
        int[] iArr = bVar5.f7193V;
        int i60 = i57 + iArr[1];
        int i61 = i56 + iArr[0];
        int i62 = i57 + iWidth;
        int i63 = i62 - iArr[3];
        int iC = eVar.f6613G.c();
        String[] strArr = new String[iC];
        int i64 = 0;
        while (i64 < iC) {
            strArr[i64] = eVar.f6613G.b(i64).f6982G;
            i64++;
            iC = iC;
        }
        int i65 = iC;
        eVar.f6614H.getClass();
        int i66 = i56 + iHeight;
        int i67 = (i66 - iArr[2]) - i59;
        if (eVar.f6618L == null) {
            eVar.f6618L = new Rect();
        }
        eVar.f6618L.set(i60, i61, i63, i67);
        int i68 = i61;
        int i69 = i60;
        T6.a.b(eVar.f6614H, canvas, i57, i56, iWidth, iHeight, paint6, false, 0);
        if (paint6.getTypeface() != null) {
            eVar.f6614H.getClass();
            if (paint6.getTypeface().toString().equals(eVar.f6614H.f7178G)) {
                int style = paint6.getTypeface().getStyle();
                eVar.f6614H.getClass();
                if (style != 0) {
                    eVar.f6614H.getClass();
                    paint6.setTypeface(Typeface.create(eVar.f6614H.f7178G, 0));
                }
            } else {
                eVar.f6614H.getClass();
                paint6.setTypeface(Typeface.create(eVar.f6614H.f7178G, 0));
            }
        } else {
            eVar.f6614H.getClass();
            paint6.setTypeface(Typeface.create(eVar.f6614H.f7178G, 0));
        }
        int i70 = eVar.f6614H.f7198B0;
        if (i70 == 2) {
            i8 = (i59 - 20) + i67;
            i9 = i63 - i59;
        } else {
            i8 = i67;
            i9 = i63;
        }
        int iS = O.s(i70);
        boolean z11 = iS == 90;
        eVar.f6615I = iHeight / iWidth;
        float fAbs = Math.abs(iWidth - iHeight) / 2;
        eVar.f6616J = fAbs;
        if (eVar.f6615I < 1.0f) {
            eVar.f6616J = fAbs * (-1.0f);
        }
        float f14 = i62 / 2;
        int i71 = i66;
        eVar.f6617K = new U6.a(f14, i71 / 2);
        if (z11) {
            eVar.w(canvas, iS, false);
        }
        int iMax = -2147483647;
        int i72 = i65;
        int i73 = 0;
        while (i73 < i72) {
            eVar.f6613G.b(i73).getClass();
            iMax = Math.max(iMax, 0);
            i73++;
            i71 = i71;
        }
        int i74 = i71;
        int i75 = iMax + 1;
        if (i75 < 0) {
            canvas2 = canvas;
            i22 = i62;
            i17 = iWidth;
            i14 = iHeight;
            i74 = i74;
        } else {
            double[] dArr5 = new double[i75];
            double[] dArr6 = new double[i75];
            int i76 = i56;
            double[] dArr7 = new double[i75];
            double[] dArr8 = new double[i75];
            boolean[] zArr2 = new boolean[i75];
            int i77 = i62;
            boolean[] zArr3 = new boolean[i75];
            boolean[] zArr4 = new boolean[i75];
            boolean[] zArr5 = new boolean[i75];
            int i78 = 0;
            while (i78 < i75) {
                int i79 = iHeight;
                V6.b bVar6 = eVar.f6614H;
                Paint paint7 = paint6;
                dArr5[i78] = bVar6.f7202d0[i78];
                dArr6[i78] = bVar6.f7203e0[i78];
                dArr7[i78] = bVar6.f7204f0[i78];
                dArr8[i78] = bVar6.f7205g0[i78];
                zArr2[i78] = bVar6.f(i78);
                zArr3[i78] = eVar.f6614H.d(i78);
                zArr4[i78] = eVar.f6614H.g(i78);
                zArr5[i78] = eVar.f6614H.e(i78);
                if (eVar.f6619M.get(Integer.valueOf(i78)) == null) {
                    eVar.f6619M.put(Integer.valueOf(i78), new double[4]);
                }
                i78++;
                iHeight = i79;
                paint6 = paint7;
                i8 = i8;
            }
            int i80 = i8;
            Paint paint8 = paint6;
            int i81 = iHeight;
            double[] dArr9 = new double[i75];
            double[] dArr10 = new double[i75];
            int i82 = 0;
            while (i82 < i72) {
                U6.d dVarB = eVar.f6613G.b(i82);
                dVarB.getClass();
                if (dVarB.b() == 0) {
                    zArr = zArr2;
                    i72 = i72;
                    dArr9 = dArr9;
                    dArr10 = dArr10;
                } else {
                    zArr = zArr2;
                    if (!zArr2[0]) {
                        dArr5[0] = Math.min(dArr5[0], dVarB.f6984I);
                        ((double[]) eVar.f6619M.get(0))[0] = dArr5[0];
                    }
                    if (!zArr3[0]) {
                        dArr6[0] = Math.max(dArr6[0], dVarB.f6985J);
                        ((double[]) eVar.f6619M.get(0))[1] = dArr6[0];
                    }
                    if (!zArr4[0]) {
                        dArr7[0] = Math.min(dArr7[0], (float) dVarB.f6986K);
                        ((double[]) eVar.f6619M.get(0))[2] = dArr7[0];
                    }
                    if (!zArr5[0]) {
                        dArr8[0] = Math.max(dArr8[0], (float) dVarB.f6987L);
                        ((double[]) eVar.f6619M.get(0))[3] = dArr8[0];
                    }
                }
                i82++;
                i72 = i72;
                zArr2 = zArr;
                dArr9 = dArr9;
                dArr10 = dArr10;
            }
            int i83 = i72;
            double[] dArr11 = dArr9;
            double[] dArr12 = dArr10;
            int i84 = 0;
            while (i84 < i75) {
                double d8 = dArr6[i84] - dArr5[i84];
                int i85 = i69;
                if (d8 != 0.0d) {
                    dArr11[i84] = ((double) (i9 - i85)) / d8;
                }
                double d9 = dArr8[i84] - dArr7[i84];
                int i86 = i68;
                if (d9 != 0.0d) {
                    dArr12[i84] = (float) (((double) (i80 - i86)) / d9);
                }
                if (i84 > 0) {
                    dArr11[i84] = dArr11[0];
                    dArr5[i84] = dArr5[0];
                    dArr6[i84] = dArr6[0];
                }
                i84++;
                i69 = i85;
                i68 = i86;
            }
            int i87 = i68;
            int i88 = i69;
            boolean z12 = false;
            for (int i89 = 0; i89 < i83; i89++) {
                if (eVar.f6613G.b(i89).b() != 0) {
                    z12 = true;
                }
            }
            V6.b bVar7 = eVar.f6614H;
            boolean z13 = (bVar7.f7182K || bVar7.f7183L) && z12;
            boolean z14 = bVar7.f7189R;
            boolean z15 = bVar7.f7190S;
            if (z14 || z15) {
                ArrayList arrayListS = e.s(X6.b.a(dArr5[0], dArr6[0], bVar7.f7206h0));
                HashMap mapT = eVar.t(dArr7, dArr8, i75);
                V6.b bVar8 = eVar.f6614H;
                boolean z16 = bVar8.f7182K;
                boolean z17 = bVar8.f7183L;
                bVar8.f7182K = false;
                bVar8.f7183L = false;
                if (eVar.f6620N == null) {
                    eVar.f6620N = new Paint(1);
                }
                i10 = i75;
                i11 = i9;
                z7 = z14;
                paint = paint8;
                z8 = z15;
                i12 = i83;
                i13 = i88;
                dArr = dArr12;
                dArr2 = dArr7;
                eVar.o(arrayListS, eVar.f6614H.a(), canvas, paint8, i88, i87, i80, dArr11[0], dArr5[0], dArr6[0]);
                eVar.p(mapT, canvas, paint, i10, i13, i11, i80, dArr, dArr2);
                V6.b bVar9 = eVar.f6614H;
                bVar9.f7182K = z16;
                bVar9.f7183L = z17;
            } else {
                i10 = i75;
                i12 = i83;
                i11 = i9;
                z7 = z14;
                z8 = z15;
                paint = paint8;
                dArr = dArr12;
                i13 = i88;
                dArr2 = dArr7;
            }
            eVar.f6621O = new HashMap();
            int i90 = i12;
            int i91 = 0;
            while (i91 < i90) {
                U6.d dVarB2 = eVar.f6613G.b(i91);
                dVarB2.getClass();
                if (dVarB2.b() == 0) {
                    i52 = i91;
                    i54 = i13;
                    i53 = i80;
                    dArr3 = dArr2;
                    paint5 = paint;
                    dArr4 = dArr6;
                } else {
                    V6.d dVar = (V6.d) eVar.f6614H.f7191T.get(i91);
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    int i92 = i80;
                    double d10 = i92;
                    double[] dArr13 = dArr2;
                    float fMin = Math.min(i92, (float) ((dArr[0] * dArr13[0]) + d10));
                    LinkedList linkedList2 = new LinkedList();
                    eVar.f6621O.put(Integer.valueOf(i91), linkedList2);
                    synchronized (dVarB2) {
                        double[] dArr14 = dArr13;
                        int iBinarySearch = -1;
                        for (Map.Entry entry : dVarB2.c(dArr5[0], dArr6[0], dVar.f7229I).entrySet()) {
                            Double d11 = (Double) entry.getKey();
                            double dDoubleValue = d11.doubleValue();
                            double dDoubleValue2 = ((Double) entry.getValue()).doubleValue();
                            if (iBinarySearch >= 0 || Double.isNaN(dDoubleValue2) || Double.isInfinite(dDoubleValue2) || dDoubleValue2 == Double.MAX_VALUE) {
                                obj = null;
                            } else {
                                obj = null;
                                iBinarySearch = Collections.binarySearch(dVarB2.f6983H.f7689G, d11, null);
                            }
                            arrayList3.add(entry.getKey());
                            arrayList3.add(entry.getValue());
                            if (Double.isNaN(dDoubleValue2) || Double.isInfinite(dDoubleValue2) || dDoubleValue2 == Double.MAX_VALUE) {
                                i55 = i13;
                                if (arrayList2.size() > 0) {
                                    linkedList = linkedList2;
                                    int i93 = i91;
                                    arrayList = arrayList3;
                                    eVar.l(dVarB2, canvas, paint, arrayList2, dVar, fMin, i93, i70, iBinarySearch);
                                    linkedList.addAll(Arrays.asList(eVar.k(arrayList2, arrayList)));
                                    arrayList2.clear();
                                    arrayList.clear();
                                    obj2 = null;
                                    iBinarySearch = -1;
                                } else {
                                    arrayList = arrayList3;
                                    linkedList = linkedList2;
                                    obj2 = obj;
                                }
                                linkedList.add(obj2);
                            } else {
                                int i94 = i13;
                                arrayList2.add(Float.valueOf((float) (((dDoubleValue - dArr5[0]) * dArr11[0]) + ((double) i94))));
                                arrayList2.add(Float.valueOf((float) (d10 - ((dDoubleValue2 - dArr14[0]) * dArr[0]))));
                                i91 = i91;
                                i55 = i94;
                                arrayList = arrayList3;
                                dArr14 = dArr14;
                                i92 = i92;
                                linkedList = linkedList2;
                            }
                            arrayList3 = arrayList;
                            linkedList2 = linkedList;
                            dArr14 = dArr14;
                            i91 = i91;
                            i13 = i55;
                            i92 = i92;
                        }
                        i52 = i91;
                        i53 = i92;
                        ArrayList arrayList4 = arrayList3;
                        int i95 = i13;
                        dArr3 = dArr14;
                        LinkedList linkedList3 = linkedList2;
                        int size = dVarB2.f6988M.size();
                        if (size > 0) {
                            paint5 = paint;
                            paint5.setColor(dVar.f7241U);
                            paint5.setTextSize(dVar.f7239S);
                            paint5.setTextAlign(dVar.f7240T);
                            Rect rect2 = new Rect();
                            int i96 = 0;
                            while (i96 < size) {
                                int i97 = i95;
                                float fDoubleValue = (float) (((((Double) dVarB2.f6989N.f7689G.get(i96)).doubleValue() - dArr5[0]) * dArr11[0]) + ((double) i97));
                                double d12 = dArr[0];
                                X6.a aVar2 = dVarB2.f6989N;
                                float fDoubleValue2 = (float) (d10 - ((((Double) aVar2.get(aVar2.f7689G.get(i96))).doubleValue() - dArr3[0]) * d12));
                                paint5.getTextBounds((String) dVarB2.f6988M.get(i96), 0, ((String) dVarB2.f6988M.get(i96)).length(), rect2);
                                if (fDoubleValue < rect2.width() + fDoubleValue && fDoubleValue2 < canvas.getHeight()) {
                                    T6.a.g(canvas, (String) dVarB2.f6988M.get(i96), fDoubleValue, fDoubleValue2, paint5);
                                }
                                i96++;
                                i95 = i97;
                                dArr6 = dArr6;
                            }
                        } else {
                            paint5 = paint;
                        }
                        dArr4 = dArr6;
                        i54 = i95;
                        if (arrayList2.size() > 0) {
                            eVar.l(dVarB2, canvas, paint5, arrayList2, dVar, fMin, i52, i70, iBinarySearch);
                            linkedList3.addAll(Arrays.asList(eVar.k(arrayList2, arrayList4)));
                        }
                    }
                }
                try {
                    i91 = i52 + 1;
                    dArr6 = dArr4;
                    i90 = i90;
                    i80 = i53;
                    paint = paint5;
                    dArr2 = dArr3;
                    i13 = i54;
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i98 = i13;
            int i99 = i80;
            double[] dArr15 = dArr2;
            Paint paint9 = paint;
            double[] dArr16 = dArr6;
            V6.b bVar10 = eVar.f6614H;
            i14 = i81;
            T6.a.b(bVar10, canvas, i57, i99, 
            /*  JADX ERROR: Method code generation error
                jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x06a6: INVOKE 
                  (r2v50 'bVar10' V6.b)
                  (r70v0 'canvas' android.graphics.Canvas)
                  (r15v0 'i57' int)
                  (r60v0 'i99' int)
                  (r35v0 int)
                  (wrap int:0x0698: ARITH (r0v8 'i14' int) - (r60v0 'i99' int) A[WRAPPED] (LINE:1689))
                  (r22v6 'paint9' android.graphics.Paint)
                  true
                  (wrap int:0x069a: IGET (r2v50 'bVar10' V6.b) A[WRAPPED] (LINE:1691) V6.b.p0 int)
                 STATIC call: T6.a.b(V6.b, android.graphics.Canvas, int, int, int, int, android.graphics.Paint, boolean, int):void A[MD:(V6.b, android.graphics.Canvas, int, int, int, int, android.graphics.Paint, boolean, int):void (m)] (LINE:1703) in method: S6.a.onDraw(android.graphics.Canvas):void, file: classes2.dex
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r35v0 int
                	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
                */
            /*
                Method dump skipped, instruction units count: 3031
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: S6.a.onDraw(android.graphics.Canvas):void");
        }

        @Override // android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                this.f6469U = motionEvent.getX();
                this.f6470V = motionEvent.getY();
            }
            V6.b bVar = this.f6456H;
            if (bVar == null || !this.f6471W || (!bVar.h() && !bVar.i())) {
                return super.onTouchEvent(motionEvent);
            }
            this.f6468T.a(motionEvent);
            return true;
        }

        public void setZoomRate(float f8) {
            W6.b bVar;
            W6.b bVar2 = this.f6464P;
            if (bVar2 == null || (bVar = this.f6465Q) == null) {
                return;
            }
            bVar2.f7501d = f8;
            bVar.f7501d = f8;
        }
    }
