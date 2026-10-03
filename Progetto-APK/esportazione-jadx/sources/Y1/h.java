package Y1;

import android.graphics.Paint;

/* JADX INFO: loaded from: classes.dex */
public final class h extends k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public F.d f8068e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f8069f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public F.d f8070g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f8071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f8072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f8073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f8074k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f8075l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Paint.Cap f8076m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Paint.Join f8077n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f8078o;

    @Override // Y1.j
    public final boolean a() {
        return this.f8070g.g() || this.f8068e.g();
    }

    @Override // Y1.j
    public final boolean b(int[] iArr) {
        return this.f8068e.h(iArr) | this.f8070g.h(iArr);
    }

    public float getFillAlpha() {
        return this.f8072i;
    }

    public int getFillColor() {
        return this.f8070g.f2961H;
    }

    public float getStrokeAlpha() {
        return this.f8071h;
    }

    public int getStrokeColor() {
        return this.f8068e.f2961H;
    }

    public float getStrokeWidth() {
        return this.f8069f;
    }

    public float getTrimPathEnd() {
        return this.f8074k;
    }

    public float getTrimPathOffset() {
        return this.f8075l;
    }

    public float getTrimPathStart() {
        return this.f8073j;
    }

    public void setFillAlpha(float f8) {
        this.f8072i = f8;
    }

    public void setFillColor(int i8) {
        this.f8070g.f2961H = i8;
    }

    public void setStrokeAlpha(float f8) {
        this.f8071h = f8;
    }

    public void setStrokeColor(int i8) {
        this.f8068e.f2961H = i8;
    }

    public void setStrokeWidth(float f8) {
        this.f8069f = f8;
    }

    public void setTrimPathEnd(float f8) {
        this.f8074k = f8;
    }

    public void setTrimPathOffset(float f8) {
        this.f8075l = f8;
    }

    public void setTrimPathStart(float f8) {
        this.f8073j = f8;
    }
}
