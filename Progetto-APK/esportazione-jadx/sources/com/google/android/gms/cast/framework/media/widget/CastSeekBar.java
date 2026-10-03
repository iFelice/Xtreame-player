package com.google.android.gms.cast.framework.media.widget;

import A0.O;
import D3.AbstractC0161e;
import G3.a;
import G3.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class CastSeekBar extends View {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final /* synthetic */ int f11739P = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final a f11740G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f11741H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final float f11742I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final float f11743J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final float f11744K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Paint f11745L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f11746M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f11747N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f11748O;

    public CastSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f11741H = new ArrayList();
        setAccessibilityDelegate(new b(this));
        Paint paint = new Paint(1);
        this.f11745L = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f11742I = context.getResources().getDimension(R.dimen.cast_seek_bar_minimum_width);
        this.f11743J = context.getResources().getDimension(R.dimen.cast_seek_bar_minimum_height);
        this.f11744K = context.getResources().getDimension(R.dimen.cast_seek_bar_progress_height) / 2.0f;
        context.getResources().getDimension(R.dimen.cast_seek_bar_thumb_size);
        context.getResources().getDimension(R.dimen.cast_seek_bar_ad_break_minimum_width);
        a aVar = new a();
        this.f11740G = aVar;
        aVar.f3401a = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, AbstractC0161e.f2379a, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(18, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(20, 0);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(23, 0);
        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.f11746M = context.getResources().getColor(resourceId);
        context.getResources().getColor(resourceId2);
        this.f11747N = context.getResources().getColor(resourceId3);
        this.f11748O = context.getResources().getColor(resourceId4);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void a(Canvas canvas, int i8, int i9, int i10, int i11, int i12) {
        Paint paint = this.f11745L;
        paint.setColor(i12);
        float f8 = i10;
        float f9 = i9 / f8;
        float f10 = i8 / f8;
        float f11 = i11;
        float f12 = this.f11744K;
        canvas.drawRect(f10 * f11, -f12, f9 * f11, f12, paint);
    }

    public int getMaxProgress() {
        return this.f11740G.f3401a;
    }

    public int getProgress() {
        this.f11740G.getClass();
        return 0;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int iSave = canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int progress = getProgress();
        int iSave2 = canvas.save();
        canvas.translate(0.0f, measuredHeight / 2);
        a aVar = this.f11740G;
        aVar.getClass();
        int iMax = Math.max(0, 0);
        if (iMax > 0) {
            a(canvas, 0, iMax, aVar.f3401a, measuredWidth, this.f11747N);
        }
        if (progress > iMax) {
            a(canvas, iMax, progress, aVar.f3401a, measuredWidth, this.f11746M);
        }
        int i8 = aVar.f3401a;
        if (i8 > progress) {
            a(canvas, progress, i8, i8, measuredWidth, this.f11747N);
        }
        canvas.restoreToCount(iSave2);
        ArrayList arrayList = this.f11741H;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.f11745L.setColor(this.f11748O);
            getMeasuredWidth();
            getPaddingLeft();
            getPaddingRight();
            int measuredHeight2 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int iSave3 = canvas.save();
            canvas.translate(0.0f, measuredHeight2 / 2);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                O.I(it.next());
            }
            canvas.restoreToCount(iSave3);
        }
        isEnabled();
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    public final synchronized void onMeasure(int i8, int i9) {
        float paddingLeft = getPaddingLeft();
        setMeasuredDimension(View.resolveSizeAndState((int) (this.f11742I + paddingLeft + getPaddingRight()), i8, 0), View.resolveSizeAndState((int) (this.f11743J + getPaddingTop() + getPaddingBottom()), i9, 0));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        this.f11740G.getClass();
        return false;
    }
}
