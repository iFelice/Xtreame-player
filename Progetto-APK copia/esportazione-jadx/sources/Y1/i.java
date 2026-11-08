package Y1;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class i extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matrix f8079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f8080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f8081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f8082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f8083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f8084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f8085g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f8086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f8087i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Matrix f8088j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f8089k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f8090l;

    public i() {
        this.f8079a = new Matrix();
        this.f8080b = new ArrayList();
        this.f8081c = 0.0f;
        this.f8082d = 0.0f;
        this.f8083e = 0.0f;
        this.f8084f = 1.0f;
        this.f8085g = 1.0f;
        this.f8086h = 0.0f;
        this.f8087i = 0.0f;
        this.f8088j = new Matrix();
        this.f8090l = null;
    }

    @Override // Y1.j
    public final boolean a() {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f8080b;
            if (i8 >= arrayList.size()) {
                return false;
            }
            if (((j) arrayList.get(i8)).a()) {
                return true;
            }
            i8++;
        }
    }

    @Override // Y1.j
    public final boolean b(int[] iArr) {
        int i8 = 0;
        boolean zB = false;
        while (true) {
            ArrayList arrayList = this.f8080b;
            if (i8 >= arrayList.size()) {
                return zB;
            }
            zB |= ((j) arrayList.get(i8)).b(iArr);
            i8++;
        }
    }

    public final void c() {
        Matrix matrix = this.f8088j;
        matrix.reset();
        matrix.postTranslate(-this.f8082d, -this.f8083e);
        matrix.postScale(this.f8084f, this.f8085g);
        matrix.postRotate(this.f8081c, 0.0f, 0.0f);
        matrix.postTranslate(this.f8086h + this.f8082d, this.f8087i + this.f8083e);
    }

    public String getGroupName() {
        return this.f8090l;
    }

    public Matrix getLocalMatrix() {
        return this.f8088j;
    }

    public float getPivotX() {
        return this.f8082d;
    }

    public float getPivotY() {
        return this.f8083e;
    }

    public float getRotation() {
        return this.f8081c;
    }

    public float getScaleX() {
        return this.f8084f;
    }

    public float getScaleY() {
        return this.f8085g;
    }

    public float getTranslateX() {
        return this.f8086h;
    }

    public float getTranslateY() {
        return this.f8087i;
    }

    public void setPivotX(float f8) {
        if (f8 != this.f8082d) {
            this.f8082d = f8;
            c();
        }
    }

    public void setPivotY(float f8) {
        if (f8 != this.f8083e) {
            this.f8083e = f8;
            c();
        }
    }

    public void setRotation(float f8) {
        if (f8 != this.f8081c) {
            this.f8081c = f8;
            c();
        }
    }

    public void setScaleX(float f8) {
        if (f8 != this.f8084f) {
            this.f8084f = f8;
            c();
        }
    }

    public void setScaleY(float f8) {
        if (f8 != this.f8085g) {
            this.f8085g = f8;
            c();
        }
    }

    public void setTranslateX(float f8) {
        if (f8 != this.f8086h) {
            this.f8086h = f8;
            c();
        }
    }

    public void setTranslateY(float f8) {
        if (f8 != this.f8087i) {
            this.f8087i = f8;
            c();
        }
    }

    public i(i iVar, p132r.f fVar) {
        k gVar;
        this.f8079a = new Matrix();
        this.f8080b = new ArrayList();
        this.f8081c = 0.0f;
        this.f8082d = 0.0f;
        this.f8083e = 0.0f;
        this.f8084f = 1.0f;
        this.f8085g = 1.0f;
        this.f8086h = 0.0f;
        this.f8087i = 0.0f;
        Matrix matrix = new Matrix();
        this.f8088j = matrix;
        this.f8090l = null;
        this.f8081c = iVar.f8081c;
        this.f8082d = iVar.f8082d;
        this.f8083e = iVar.f8083e;
        this.f8084f = iVar.f8084f;
        this.f8085g = iVar.f8085g;
        this.f8086h = iVar.f8086h;
        this.f8087i = iVar.f8087i;
        String str = iVar.f8090l;
        this.f8090l = str;
        this.f8089k = iVar.f8089k;
        if (str != null) {
            fVar.put(str, this);
        }
        matrix.set(iVar.f8088j);
        ArrayList arrayList = iVar.f8080b;
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            Object obj = arrayList.get(i8);
            if (obj instanceof i) {
                this.f8080b.add(new i((i) obj, fVar));
            } else {
                if (obj instanceof h) {
                    h hVar = (h) obj;
                    h hVar2 = new h(hVar);
                    hVar2.f8069f = 0.0f;
                    hVar2.f8071h = 1.0f;
                    hVar2.f8072i = 1.0f;
                    hVar2.f8073j = 0.0f;
                    hVar2.f8074k = 1.0f;
                    hVar2.f8075l = 0.0f;
                    hVar2.f8076m = Paint.Cap.BUTT;
                    hVar2.f8077n = Paint.Join.MITER;
                    hVar2.f8078o = 4.0f;
                    hVar2.f8068e = hVar.f8068e;
                    hVar2.f8069f = hVar.f8069f;
                    hVar2.f8071h = hVar.f8071h;
                    hVar2.f8070g = hVar.f8070g;
                    hVar2.f8093c = hVar.f8093c;
                    hVar2.f8072i = hVar.f8072i;
                    hVar2.f8073j = hVar.f8073j;
                    hVar2.f8074k = hVar.f8074k;
                    hVar2.f8075l = hVar.f8075l;
                    hVar2.f8076m = hVar.f8076m;
                    hVar2.f8077n = hVar.f8077n;
                    hVar2.f8078o = hVar.f8078o;
                    gVar = hVar2;
                } else if (obj instanceof g) {
                    gVar = new g((g) obj);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.f8080b.add(gVar);
                Object obj2 = gVar.f8092b;
                if (obj2 != null) {
                    fVar.put(obj2, gVar);
                }
            }
        }
    }
}
