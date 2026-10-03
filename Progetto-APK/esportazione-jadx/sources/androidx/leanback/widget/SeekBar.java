package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class SeekBar extends View {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final RectF f9232G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final RectF f9233H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final RectF f9234I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Paint f9235J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Paint f9236K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Paint f9237L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Paint f9238M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f9239N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f9240O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f9241P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f9242Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f9243R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f9244S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f9245T;

    public SeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9232G = new RectF();
        this.f9233H = new RectF();
        this.f9234I = new RectF();
        Paint paint = new Paint(1);
        this.f9235J = paint;
        Paint paint2 = new Paint(1);
        this.f9236K = paint2;
        Paint paint3 = new Paint(1);
        this.f9237L = paint3;
        Paint paint4 = new Paint(1);
        this.f9238M = paint4;
        setWillNotDraw(false);
        paint3.setColor(-7829368);
        paint.setColor(-3355444);
        paint2.setColor(-65536);
        paint4.setColor(-1);
        this.f9244S = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_progressbar_bar_height);
        this.f9245T = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_progressbar_active_bar_height);
        this.f9243R = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_progressbar_active_radius);
    }

    public final void a() {
        int i8 = isFocused() ? this.f9245T : this.f9244S;
        int width = getWidth();
        int height = getHeight();
        int i9 = (height - i8) / 2;
        RectF rectF = this.f9234I;
        int i10 = this.f9244S;
        float f8 = i9;
        float f9 = height - i9;
        rectF.set(i10 / 2, f8, width - (i10 / 2), f9);
        int i11 = isFocused() ? this.f9243R : this.f9244S / 2;
        float f10 = width - (i11 * 2);
        float f11 = (this.f9239N / this.f9241P) * f10;
        RectF rectF2 = this.f9232G;
        int i12 = this.f9244S;
        rectF2.set(i12 / 2, f8, (i12 / 2) + f11, f9);
        this.f9233H.set(rectF2.right, f8, (this.f9244S / 2) + ((this.f9240O / this.f9241P) * f10), f9);
        this.f9242Q = i11 + ((int) f11);
        invalidate();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return android.widget.SeekBar.class.getName();
    }

    public int getMax() {
        return this.f9241P;
    }

    public int getProgress() {
        return this.f9239N;
    }

    public int getSecondProgress() {
        return this.f9240O;
    }

    public int getSecondaryProgressColor() {
        return this.f9235J.getColor();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f8 = isFocused() ? this.f9243R : this.f9244S / 2;
        canvas.drawRoundRect(this.f9234I, f8, f8, this.f9237L);
        RectF rectF = this.f9233H;
        if (rectF.right > rectF.left) {
            canvas.drawRoundRect(rectF, f8, f8, this.f9235J);
        }
        canvas.drawRoundRect(this.f9232G, f8, f8, this.f9236K);
        canvas.drawCircle(this.f9242Q, getHeight() / 2, f8, this.f9238M);
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z7, int i8, Rect rect) {
        super.onFocusChanged(z7, i8, rect);
        a();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i8, int i9, int i10, int i11) {
        super.onSizeChanged(i8, i9, i10, i11);
        a();
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i8, Bundle bundle) {
        return super.performAccessibilityAction(i8, bundle);
    }

    public void setAccessibilitySeekListener(O o4) {
    }

    public void setActiveBarHeight(int i8) {
        this.f9245T = i8;
        a();
    }

    public void setActiveRadius(int i8) {
        this.f9243R = i8;
        a();
    }

    public void setBarHeight(int i8) {
        this.f9244S = i8;
        a();
    }

    public void setMax(int i8) {
        this.f9241P = i8;
        a();
    }

    public void setProgress(int i8) {
        int i9 = this.f9241P;
        if (i8 > i9) {
            i8 = i9;
        } else if (i8 < 0) {
            i8 = 0;
        }
        this.f9239N = i8;
        a();
    }

    public void setProgressColor(int i8) {
        this.f9236K.setColor(i8);
    }

    public void setSecondaryProgress(int i8) {
        int i9 = this.f9241P;
        if (i8 > i9) {
            i8 = i9;
        } else if (i8 < 0) {
            i8 = 0;
        }
        this.f9240O = i8;
        a();
    }

    public void setSecondaryProgressColor(int i8) {
        this.f9235J.setColor(i8);
    }
}
