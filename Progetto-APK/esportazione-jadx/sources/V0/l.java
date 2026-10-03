package V0;

import android.content.Context;
import android.graphics.PointF;
import android.opengl.Matrix;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class l extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, c {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final j f7078I;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final GestureDetector f7080K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final PointF f7076G = new PointF();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final PointF f7077H = new PointF();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final float f7079J = 25.0f;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public volatile float f7081L = 3.1415927f;

    public l(Context context, j jVar) {
        this.f7078I = jVar;
        this.f7080K = new GestureDetector(context, this);
    }

    @Override // V0.c
    public final void a(float[] fArr, float f8) {
        this.f7081L = -f8;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        this.f7076G.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f8, float f9) {
        float x7 = (motionEvent2.getX() - this.f7076G.x) / this.f7079J;
        float y7 = motionEvent2.getY();
        PointF pointF = this.f7076G;
        float f10 = (y7 - pointF.y) / this.f7079J;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d6 = this.f7081L;
        float fCos = (float) Math.cos(d6);
        float fSin = (float) Math.sin(d6);
        PointF pointF2 = this.f7077H;
        pointF2.x -= (fCos * x7) - (fSin * f10);
        float f11 = (fCos * f10) + (fSin * x7) + pointF2.y;
        pointF2.y = f11;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f11));
        j jVar = this.f7078I;
        PointF pointF3 = this.f7077H;
        synchronized (jVar) {
            float f12 = pointF3.y;
            jVar.f7059M = f12;
            Matrix.setRotateM(jVar.f7057K, 0, -f12, (float) Math.cos(jVar.f7060N), (float) Math.sin(jVar.f7060N), 0.0f);
            Matrix.setRotateM(jVar.f7058L, 0, -pointF3.x, 0.0f, 1.0f, 0.0f);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f7078I.f7063Q.performClick();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f7080K.onTouchEvent(motionEvent);
    }
}
