package Y1;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Matrix f8095p = new Matrix();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f8096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f8097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f8098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Paint f8099d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Paint f8100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PathMeasure f8101f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final i f8102g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f8103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f8104i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f8105j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f8106k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8107l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f8108m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Boolean f8109n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final p132r.f f8110o;

    public l() {
        this.f8098c = new Matrix();
        this.f8103h = 0.0f;
        this.f8104i = 0.0f;
        this.f8105j = 0.0f;
        this.f8106k = 0.0f;
        this.f8107l = 255;
        this.f8108m = null;
        this.f8109n = null;
        this.f8110o = new p132r.f();
        this.f8102g = new i();
        this.f8096a = new Path();
        this.f8097b = new Path();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x013b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0148  */
    /* JADX WARN: Code duplicated, block: B:54:0x014c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0163  */
    /* JADX WARN: Code duplicated, block: B:58:0x0177  */
    /* JADX WARN: Code duplicated, block: B:61:0x0199  */
    /* JADX WARN: Code duplicated, block: B:62:0x019c  */
    /* JADX WARN: Code duplicated, block: B:69:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:71:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:77:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:80:0x01de  */
    /* JADX WARN: Code duplicated, block: B:81:0x01f2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v18 */
    public final void a(i iVar, Matrix matrix, Canvas canvas, int i8, int i9) {
        Matrix matrix2;
        float f8;
        float f9;
        F.d dVar;
        boolean z7;
        F.d dVar2;
        Paint paint;
        Paint.Join join;
        Paint.Cap cap;
        Object obj;
        Paint paint2;
        Object obj2;
        Path.FillType fillType;
        char c8 = 1;
        iVar.f8079a.set(matrix);
        Matrix matrix3 = iVar.f8088j;
        Matrix matrix4 = iVar.f8079a;
        matrix4.preConcat(matrix3);
        canvas.save();
        ?? r11 = 0;
        int i10 = 0;
        while (true) {
            ArrayList arrayList = iVar.f8080b;
            if (i10 >= arrayList.size()) {
                canvas.restore();
                return;
            }
            j jVar = (j) arrayList.get(i10);
            if (jVar instanceof i) {
                a((i) jVar, matrix4, canvas, i8, i9);
            } else {
                if (jVar instanceof k) {
                    k kVar = (k) jVar;
                    float f10 = i8 / this.f8105j;
                    float f11 = i9 / this.f8106k;
                    float fMin = Math.min(f10, f11);
                    Matrix matrix5 = this.f8098c;
                    matrix5.set(matrix4);
                    matrix5.postScale(f10, f11);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix4.mapVectors(fArr);
                    float fHypot = (float) Math.hypot(fArr[r11], fArr[c8]);
                    matrix2 = matrix4;
                    float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f12 = (fArr[r11] * fArr[3]) - (fArr[1] * fArr[2]);
                    float fMax = Math.max(fHypot, fHypot2);
                    float fAbs = fMax > 0.0f ? Math.abs(f12) / fMax : 0.0f;
                    if (fAbs != 0.0f) {
                        kVar.getClass();
                        Path path = this.f8096a;
                        path.reset();
                        G.d[] dVarArr = kVar.f8091a;
                        if (dVarArr != null) {
                            G.d.b(dVarArr, path);
                        }
                        Path path2 = this.f8097b;
                        path2.reset();
                        if (kVar instanceof g) {
                            path2.setFillType(kVar.f8093c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            path2.addPath(path, matrix5);
                            canvas.clipPath(path2);
                        } else {
                            h hVar = (h) kVar;
                            float f13 = hVar.f8073j;
                            if (f13 == 0.0f) {
                                f8 = 1.0f;
                                if (hVar.f8074k != 1.0f) {
                                }
                                path2.addPath(path, matrix5);
                                dVar = hVar.f8070g;
                                if (((Shader) dVar.f2962I) != null && dVar.f2961H == 0) {
                                    z7 = false;
                                } else {
                                    z7 = true;
                                }
                                if (z7) {
                                    if (this.f8100e == null) {
                                        Paint paint3 = new Paint(1);
                                        this.f8100e = paint3;
                                        paint3.setStyle(Paint.Style.FILL);
                                    }
                                    paint2 = this.f8100e;
                                    obj2 = dVar.f2962I;
                                    if (((Shader) obj2) != null) {
                                        Shader shader = (Shader) obj2;
                                        shader.setLocalMatrix(matrix5);
                                        paint2.setShader(shader);
                                        paint2.setAlpha(Math.round(hVar.f8072i * 255.0f));
                                    } else {
                                        paint2.setShader(null);
                                        paint2.setAlpha(255);
                                        int i11 = dVar.f2961H;
                                        float f14 = hVar.f8072i;
                                        PorterDuff.Mode mode = o.f8124P;
                                        paint2.setColor((i11 & 16777215) | (((int) (Color.alpha(i11) * f14)) << 24));
                                    }
                                    paint2.setColorFilter(null);
                                    if (hVar.f8093c == 0) {
                                        fillType = Path.FillType.WINDING;
                                    } else {
                                        fillType = Path.FillType.EVEN_ODD;
                                    }
                                    path2.setFillType(fillType);
                                    canvas.drawPath(path2, paint2);
                                }
                                dVar2 = hVar.f8068e;
                                if (((Shader) dVar2.f2962I) == null || dVar2.f2961H != 0) {
                                    if (this.f8099d == null) {
                                        Paint paint4 = new Paint(1);
                                        this.f8099d = paint4;
                                        paint4.setStyle(Paint.Style.STROKE);
                                    }
                                    paint = this.f8099d;
                                    join = hVar.f8077n;
                                    if (join != null) {
                                        paint.setStrokeJoin(join);
                                    }
                                    cap = hVar.f8076m;
                                    if (cap != null) {
                                        paint.setStrokeCap(cap);
                                    }
                                    paint.setStrokeMiter(hVar.f8078o);
                                    obj = dVar2.f2962I;
                                    if (((Shader) obj) != null) {
                                        Shader shader2 = (Shader) obj;
                                        shader2.setLocalMatrix(matrix5);
                                        paint.setShader(shader2);
                                        paint.setAlpha(Math.round(hVar.f8071h * 255.0f));
                                    } else {
                                        paint.setShader(null);
                                        paint.setAlpha(255);
                                        int i12 = dVar2.f2961H;
                                        float f15 = hVar.f8071h;
                                        PorterDuff.Mode mode2 = o.f8124P;
                                        paint.setColor((i12 & 16777215) | (((int) (Color.alpha(i12) * f15)) << 24));
                                    }
                                    paint.setColorFilter(null);
                                    paint.setStrokeWidth(hVar.f8069f * fAbs * fMin);
                                    canvas.drawPath(path2, paint);
                                }
                            } else {
                                f8 = 1.0f;
                            }
                            float f16 = hVar.f8075l;
                            float f17 = (f13 + f16) % f8;
                            float f18 = (hVar.f8074k + f16) % f8;
                            if (this.f8101f == null) {
                                this.f8101f = new PathMeasure();
                            }
                            this.f8101f.setPath(path, r11);
                            float length = this.f8101f.getLength();
                            float f19 = f17 * length;
                            float f20 = f18 * length;
                            path.reset();
                            if (f19 > f20) {
                                this.f8101f.getSegment(f19, length, path, true);
                                f9 = 0.0f;
                                this.f8101f.getSegment(0.0f, f20, path, true);
                            } else {
                                f9 = 0.0f;
                                this.f8101f.getSegment(f19, f20, path, true);
                            }
                            path.rLineTo(f9, f9);
                            path2.addPath(path, matrix5);
                            dVar = hVar.f8070g;
                            if (((Shader) dVar.f2962I) != null) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            if (z7) {
                                if (this.f8100e == null) {
                                    Paint paint5 = new Paint(1);
                                    this.f8100e = paint5;
                                    paint5.setStyle(Paint.Style.FILL);
                                }
                                paint2 = this.f8100e;
                                obj2 = dVar.f2962I;
                                if (((Shader) obj2) != null) {
                                    Shader shader3 = (Shader) obj2;
                                    shader3.setLocalMatrix(matrix5);
                                    paint2.setShader(shader3);
                                    paint2.setAlpha(Math.round(hVar.f8072i * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    int i13 = dVar.f2961H;
                                    float f110 = hVar.f8072i;
                                    PorterDuff.Mode mode3 = o.f8124P;
                                    paint2.setColor((i13 & 16777215) | (((int) (Color.alpha(i13) * f110)) << 24));
                                }
                                paint2.setColorFilter(null);
                                if (hVar.f8093c == 0) {
                                    fillType = Path.FillType.WINDING;
                                } else {
                                    fillType = Path.FillType.EVEN_ODD;
                                }
                                path2.setFillType(fillType);
                                canvas.drawPath(path2, paint2);
                            }
                            dVar2 = hVar.f8068e;
                            if (((Shader) dVar2.f2962I) == null) {
                                if (this.f8099d == null) {
                                    Paint paint6 = new Paint(1);
                                    this.f8099d = paint6;
                                    paint6.setStyle(Paint.Style.STROKE);
                                }
                                paint = this.f8099d;
                                join = hVar.f8077n;
                                if (join != null) {
                                    paint.setStrokeJoin(join);
                                }
                                cap = hVar.f8076m;
                                if (cap != null) {
                                    paint.setStrokeCap(cap);
                                }
                                paint.setStrokeMiter(hVar.f8078o);
                                obj = dVar2.f2962I;
                                if (((Shader) obj) != null) {
                                    Shader shader4 = (Shader) obj;
                                    shader4.setLocalMatrix(matrix5);
                                    paint.setShader(shader4);
                                    paint.setAlpha(Math.round(hVar.f8071h * 255.0f));
                                } else {
                                    paint.setShader(null);
                                    paint.setAlpha(255);
                                    int i14 = dVar2.f2961H;
                                    float f111 = hVar.f8071h;
                                    PorterDuff.Mode mode4 = o.f8124P;
                                    paint.setColor((i14 & 16777215) | (((int) (Color.alpha(i14) * f111)) << 24));
                                }
                                paint.setColorFilter(null);
                                paint.setStrokeWidth(hVar.f8069f * fAbs * fMin);
                                canvas.drawPath(path2, paint);
                            } else {
                                if (this.f8099d == null) {
                                    Paint paint7 = new Paint(1);
                                    this.f8099d = paint7;
                                    paint7.setStyle(Paint.Style.STROKE);
                                }
                                paint = this.f8099d;
                                join = hVar.f8077n;
                                if (join != null) {
                                    paint.setStrokeJoin(join);
                                }
                                cap = hVar.f8076m;
                                if (cap != null) {
                                    paint.setStrokeCap(cap);
                                }
                                paint.setStrokeMiter(hVar.f8078o);
                                obj = dVar2.f2962I;
                                if (((Shader) obj) != null) {
                                    Shader shader5 = (Shader) obj;
                                    shader5.setLocalMatrix(matrix5);
                                    paint.setShader(shader5);
                                    paint.setAlpha(Math.round(hVar.f8071h * 255.0f));
                                } else {
                                    paint.setShader(null);
                                    paint.setAlpha(255);
                                    int i15 = dVar2.f2961H;
                                    float f112 = hVar.f8071h;
                                    PorterDuff.Mode mode5 = o.f8124P;
                                    paint.setColor((i15 & 16777215) | (((int) (Color.alpha(i15) * f112)) << 24));
                                }
                                paint.setColorFilter(null);
                                paint.setStrokeWidth(hVar.f8069f * fAbs * fMin);
                                canvas.drawPath(path2, paint);
                            }
                        }
                    }
                }
                i10++;
                matrix4 = matrix2;
                c8 = 1;
                r11 = 0;
            }
            matrix2 = matrix4;
            i10++;
            matrix4 = matrix2;
            c8 = 1;
            r11 = 0;
        }
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.f8107l;
    }

    public void setAlpha(float f8) {
        setRootAlpha((int) (f8 * 255.0f));
    }

    public void setRootAlpha(int i8) {
        this.f8107l = i8;
    }

    public l(l lVar) {
        this.f8098c = new Matrix();
        this.f8103h = 0.0f;
        this.f8104i = 0.0f;
        this.f8105j = 0.0f;
        this.f8106k = 0.0f;
        this.f8107l = 255;
        this.f8108m = null;
        this.f8109n = null;
        p132r.f fVar = new p132r.f(0);
        this.f8110o = fVar;
        this.f8102g = new i(lVar.f8102g, fVar);
        this.f8096a = new Path(lVar.f8096a);
        this.f8097b = new Path(lVar.f8097b);
        this.f8103h = lVar.f8103h;
        this.f8104i = lVar.f8104i;
        this.f8105j = lVar.f8105j;
        this.f8106k = lVar.f8106k;
        this.f8107l = lVar.f8107l;
        this.f8108m = lVar.f8108m;
        String str = lVar.f8108m;
        if (str != null) {
            fVar.put(str, this);
        }
        this.f8109n = lVar.f8109n;
    }
}
