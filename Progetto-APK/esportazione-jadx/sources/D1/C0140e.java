package D1;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.google.android.gms.internal.measurement.H1;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import p094m0.Y;
import pe.hf.black20.R;

/* JADX INFO: renamed from: D1.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0140e extends View implements O {

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static final /* synthetic */ int f2139y0 = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Rect f2140G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Rect f2141H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Rect f2142I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Rect f2143J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Paint f2144K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Paint f2145L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Paint f2146M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Paint f2147N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Paint f2148O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Paint f2149P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Drawable f2150Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f2151R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f2152S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f2153T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f2154U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final int f2155V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final int f2156W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f2157a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f2158b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int f2159c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final StringBuilder f2160d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final Formatter f2161e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final p000a.b f2162f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final CopyOnWriteArraySet f2163g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final Point f2164h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final float f2165i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f2166j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public long f2167k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f2168l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public Rect f2169m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final ValueAnimator f2170n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public float f2171o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f2172p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f2173q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public long f2174r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public long f2175s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public long f2176t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public long f2177u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f2178v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public long[] f2179w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean[] f2180x0;

    public C0140e(Context context, AttributeSet attributeSet) {
        super(context, null, 0);
        this.f2140G = new Rect();
        this.f2141H = new Rect();
        this.f2142I = new Rect();
        this.f2143J = new Rect();
        Paint paint = new Paint();
        this.f2144K = paint;
        Paint paint2 = new Paint();
        this.f2145L = paint2;
        Paint paint3 = new Paint();
        this.f2146M = paint3;
        Paint paint4 = new Paint();
        this.f2147N = paint4;
        Paint paint5 = new Paint();
        this.f2148O = paint5;
        Paint paint6 = new Paint();
        this.f2149P = paint6;
        paint6.setAntiAlias(true);
        this.f2163g0 = new CopyOnWriteArraySet();
        this.f2164h0 = new Point();
        float f8 = context.getResources().getDisplayMetrics().density;
        this.f2165i0 = f8;
        this.f2159c0 = a(-50, f8);
        int iA = a(4, f8);
        int iA2 = a(26, f8);
        int iA3 = a(4, f8);
        int iA4 = a(12, f8);
        int iA5 = a(0, f8);
        int iA6 = a(16, f8);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, I.f2066b, 0, R.style.ExoStyledControls_TimeBar);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(10);
                this.f2150Q = drawable;
                if (drawable != null) {
                    int i8 = Build.VERSION.SDK_INT;
                    if (i8 >= 23) {
                        int layoutDirection = getLayoutDirection();
                        if (i8 >= 23) {
                            drawable.setLayoutDirection(layoutDirection);
                        }
                    }
                    iA2 = Math.max(drawable.getMinimumHeight(), iA2);
                }
                this.f2151R = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, iA);
                this.f2152S = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, iA2);
                this.f2153T = typedArrayObtainStyledAttributes.getInt(2, 0);
                this.f2154U = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, iA3);
                this.f2155V = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, iA4);
                this.f2156W = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, iA5);
                this.f2157a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, iA6);
                int i9 = typedArrayObtainStyledAttributes.getInt(6, -1);
                int i10 = typedArrayObtainStyledAttributes.getInt(7, -1);
                int i11 = typedArrayObtainStyledAttributes.getInt(4, -855638017);
                int i12 = typedArrayObtainStyledAttributes.getInt(13, 872415231);
                int i13 = typedArrayObtainStyledAttributes.getInt(0, -1291845888);
                int i14 = typedArrayObtainStyledAttributes.getInt(5, 872414976);
                paint.setColor(i9);
                paint6.setColor(i10);
                paint2.setColor(i11);
                paint3.setColor(i12);
                paint4.setColor(i13);
                paint5.setColor(i14);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.f2151R = iA;
            this.f2152S = iA2;
            this.f2153T = 0;
            this.f2154U = iA3;
            this.f2155V = iA4;
            this.f2156W = iA5;
            this.f2157a0 = iA6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f2150Q = null;
        }
        StringBuilder sb = new StringBuilder();
        this.f2160d0 = sb;
        this.f2161e0 = new Formatter(sb, Locale.getDefault());
        this.f2162f0 = new p000a.b(this, 22);
        Drawable drawable2 = this.f2150Q;
        if (drawable2 != null) {
            this.f2158b0 = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f2158b0 = (Math.max(this.f2156W, Math.max(this.f2155V, this.f2157a0)) + 1) / 2;
        }
        this.f2171o0 = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f2170n0 = valueAnimator;
        valueAnimator.addUpdateListener(new x(this, 4));
        this.f2175s0 = -9223372036854775807L;
        this.f2167k0 = -9223372036854775807L;
        this.f2166j0 = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static int a(int i8, float f8) {
        return (int) ((i8 * f8) + 0.5f);
    }

    private long getPositionIncrement() {
        long j8 = this.f2167k0;
        if (j8 != -9223372036854775807L) {
            return j8;
        }
        long j9 = this.f2175s0;
        if (j9 == -9223372036854775807L) {
            return 0L;
        }
        return j9 / ((long) this.f2166j0);
    }

    private String getProgressText() {
        return p117p0.M.D(this.f2160d0, this.f2161e0, this.f2176t0);
    }

    private long getScrubberPosition() {
        Rect rect = this.f2141H;
        if (rect.width() <= 0 || this.f2175s0 == -9223372036854775807L) {
            return 0L;
        }
        return (((long) this.f2143J.width()) * this.f2175s0) / ((long) rect.width());
    }

    public final boolean b(long j8) {
        long j9 = this.f2175s0;
        if (j9 <= 0) {
            return false;
        }
        long j10 = this.f2173q0 ? this.f2174r0 : this.f2176t0;
        long j11 = p117p0.M.j(j10 + j8, 0L, j9);
        if (j11 == j10) {
            return false;
        }
        if (this.f2173q0) {
            f(j11);
        } else {
            c(j11);
        }
        e();
        return true;
    }

    public final void c(long j8) {
        this.f2174r0 = j8;
        this.f2173q0 = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator it = this.f2163g0.iterator();
        while (it.hasNext()) {
            C0156v c0156v = ((ViewOnClickListenerC0146k) it.next()).f2190G;
            c0156v.f2263c1 = true;
            TextView textView = c0156v.f2289s0;
            if (textView != null) {
                textView.setText(p117p0.M.D(c0156v.f2291u0, c0156v.f2292v0, j8));
            }
            c0156v.f2221G.g();
            Y y7 = c0156v.f2252V0;
            if (y7 != null && c0156v.f2267e1) {
                if (c0156v.i(y7)) {
                    try {
                        Method method = c0156v.f2229K;
                        method.getClass();
                        method.invoke(c0156v.f2252V0, Boolean.TRUE);
                    } catch (IllegalAccessException | InvocationTargetException e8) {
                        throw new RuntimeException(e8);
                    }
                } else if (c0156v.h(c0156v.f2252V0)) {
                    try {
                        Method method2 = c0156v.f2235N;
                        method2.getClass();
                        method2.invoke(c0156v.f2252V0, Boolean.TRUE);
                    } catch (IllegalAccessException | InvocationTargetException e9) {
                        throw new RuntimeException(e9);
                    }
                } else {
                    StringBuilder sb = new StringBuilder("Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can't enable scrubbing mode). player.class=");
                    Y y8 = c0156v.f2252V0;
                    y8.getClass();
                    sb.append(y8.getClass());
                    p117p0.x.f("PlayerControlView", sb.toString());
                }
            }
        }
    }

    public final void d(boolean z7) {
        removeCallbacks(this.f2162f0);
        this.f2173q0 = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        for (ViewOnClickListenerC0146k viewOnClickListenerC0146k : this.f2163g0) {
            long j8 = this.f2174r0;
            C0156v c0156v = viewOnClickListenerC0146k.f2190G;
            c0156v.f2263c1 = false;
            Y y7 = c0156v.f2252V0;
            if (y7 != null) {
                if (!z7) {
                    C0156v.a(c0156v, y7, j8);
                }
                if (c0156v.i(c0156v.f2252V0)) {
                    try {
                        Method method = c0156v.f2229K;
                        method.getClass();
                        method.invoke(c0156v.f2252V0, Boolean.FALSE);
                    } catch (IllegalAccessException | InvocationTargetException e8) {
                        throw new RuntimeException(e8);
                    }
                } else if (c0156v.h(c0156v.f2252V0)) {
                    try {
                        Method method2 = c0156v.f2235N;
                        method2.getClass();
                        method2.invoke(c0156v.f2252V0, Boolean.FALSE);
                    } catch (IllegalAccessException | InvocationTargetException e9) {
                        throw new RuntimeException(e9);
                    }
                } else {
                    continue;
                }
            }
            c0156v.f2221G.h();
        }
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f2150Q;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    public final void e() {
        Rect rect = this.f2142I;
        Rect rect2 = this.f2141H;
        rect.set(rect2);
        Rect rect3 = this.f2143J;
        rect3.set(rect2);
        long j8 = this.f2173q0 ? this.f2174r0 : this.f2176t0;
        if (this.f2175s0 > 0) {
            rect.right = Math.min(rect2.left + ((int) ((((long) rect2.width()) * this.f2177u0) / this.f2175s0)), rect2.right);
            rect3.right = Math.min(rect2.left + ((int) ((((long) rect2.width()) * j8) / this.f2175s0)), rect2.right);
        } else {
            int i8 = rect2.left;
            rect.right = i8;
            rect3.right = i8;
        }
        invalidate(this.f2140G);
    }

    public final void f(long j8) {
        if (this.f2174r0 == j8) {
            return;
        }
        this.f2174r0 = j8;
        Iterator it = this.f2163g0.iterator();
        while (it.hasNext()) {
            C0156v c0156v = ((ViewOnClickListenerC0146k) it.next()).f2190G;
            TextView textView = c0156v.f2289s0;
            if (textView != null) {
                textView.setText(p117p0.M.D(c0156v.f2291u0, c0156v.f2292v0, j8));
            }
            if (c0156v.k(c0156v.f2252V0)) {
                C0156v.a(c0156v, c0156v.f2252V0, j8);
            }
        }
    }

    public long getPreferredUpdateDelay() {
        int iWidth = (int) (this.f2141H.width() / this.f2165i0);
        if (iWidth != 0) {
            long j8 = this.f2175s0;
            if (j8 != 0 && j8 != -9223372036854775807L) {
                return j8 / ((long) iWidth);
            }
        }
        return Long.MAX_VALUE;
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f2150Q;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i8;
        canvas.save();
        Rect rect = this.f2141H;
        int iHeight = rect.height();
        int iCenterY = rect.centerY() - (iHeight / 2);
        int i9 = iCenterY + iHeight;
        long j8 = this.f2175s0;
        Paint paint = this.f2146M;
        Rect rect2 = this.f2143J;
        if (j8 <= 0) {
            canvas.drawRect(rect.left, iCenterY, rect.right, i9, paint);
        } else {
            Rect rect3 = this.f2142I;
            int i10 = rect3.left;
            int i11 = rect3.right;
            int iMax = Math.max(Math.max(rect.left, i11), rect2.right);
            int i12 = rect.right;
            if (iMax < i12) {
                canvas.drawRect(iMax, iCenterY, i12, i9, paint);
            }
            int iMax2 = Math.max(i10, rect2.right);
            if (i11 > iMax2) {
                canvas.drawRect(iMax2, iCenterY, i11, i9, this.f2145L);
            }
            if (rect2.width() > 0) {
                canvas.drawRect(rect2.left, iCenterY, rect2.right, i9, this.f2144K);
            }
            if (this.f2178v0 != 0) {
                long[] jArr = this.f2179w0;
                jArr.getClass();
                boolean[] zArr = this.f2180x0;
                zArr.getClass();
                int i13 = this.f2154U;
                int i14 = i13 / 2;
                int i15 = 0;
                int i16 = 0;
                while (i16 < this.f2178v0) {
                    int iMin = Math.min(rect.width() - i13, Math.max(i15, ((int) ((((long) rect.width()) * p117p0.M.j(jArr[i16], 0L, this.f2175s0)) / this.f2175s0)) - i14)) + rect.left;
                    canvas.drawRect(iMin, iCenterY, iMin + i13, i9, zArr[i16] ? this.f2148O : this.f2147N);
                    i16++;
                    i13 = i13;
                    i15 = 0;
                }
            }
        }
        if (this.f2175s0 > 0) {
            int i17 = p117p0.M.i(rect2.right, rect2.left, rect.right);
            int iCenterY2 = rect2.centerY();
            Drawable drawable = this.f2150Q;
            if (drawable == null) {
                if (this.f2173q0 || isFocused()) {
                    i8 = this.f2157a0;
                } else {
                    i8 = isEnabled() ? this.f2155V : this.f2156W;
                }
                canvas.drawCircle(i17, iCenterY2, (int) ((i8 * this.f2171o0) / 2.0f), this.f2149P);
            } else {
                int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.f2171o0)) / 2;
                int intrinsicHeight = ((int) (drawable.getIntrinsicHeight() * this.f2171o0)) / 2;
                drawable.setBounds(i17 - intrinsicWidth, iCenterY2 - intrinsicHeight, i17 + intrinsicWidth, iCenterY2 + intrinsicHeight);
                drawable.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z7, int i8, Rect rect) {
        super.onFocusChanged(z7, i8, rect);
        if (!this.f2173q0 || z7) {
            return;
        }
        d(false);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.f2175s0 <= 0) {
            return;
        }
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i8, KeyEvent keyEvent) {
        if (isEnabled()) {
            long positionIncrement = getPositionIncrement();
            if (i8 != 66) {
                switch (i8) {
                    case 21:
                        positionIncrement = -positionIncrement;
                        if (b(positionIncrement)) {
                            p000a.b bVar = this.f2162f0;
                            removeCallbacks(bVar);
                            postDelayed(bVar, 1000L);
                            return true;
                        }
                        break;
                    case 22:
                        if (b(positionIncrement)) {
                            p000a.b bVar2 = this.f2162f0;
                            removeCallbacks(bVar2);
                            postDelayed(bVar2, 1000L);
                            return true;
                        }
                        break;
                    case 23:
                        if (this.f2173q0) {
                            d(false);
                            return true;
                        }
                        break;
                }
            } else if (this.f2173q0) {
                d(false);
                return true;
            }
        }
        return super.onKeyDown(i8, keyEvent);
    }

    @Override // android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int paddingBottom;
        int paddingBottom2;
        Rect rect;
        int i12 = i10 - i8;
        int i13 = i11 - i9;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i12 - getPaddingRight();
        int i14 = this.f2172p0 ? 0 : this.f2158b0;
        int i15 = this.f2153T;
        int i16 = this.f2151R;
        int i17 = this.f2152S;
        if (i15 == 1) {
            paddingBottom = (i13 - getPaddingBottom()) - i17;
            paddingBottom2 = ((i13 - getPaddingBottom()) - i16) - Math.max(i14 - (i16 / 2), 0);
        } else {
            paddingBottom = (i13 - i17) / 2;
            paddingBottom2 = (i13 - i16) / 2;
        }
        Rect rect2 = this.f2140G;
        rect2.set(paddingLeft, paddingBottom, paddingRight, i17 + paddingBottom);
        this.f2141H.set(rect2.left + i14, paddingBottom2, rect2.right - i14, i16 + paddingBottom2);
        if (Build.VERSION.SDK_INT >= 29 && ((rect = this.f2169m0) == null || rect.width() != i12 || this.f2169m0.height() != i13)) {
            Rect rect3 = new Rect(0, 0, i12, i13);
            this.f2169m0 = rect3;
            setSystemGestureExclusionRects(Collections.singletonList(rect3));
        }
        e();
    }

    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        int mode = View.MeasureSpec.getMode(i9);
        int size = View.MeasureSpec.getSize(i9);
        int i10 = this.f2152S;
        if (mode == 0) {
            size = i10;
        } else if (mode != 1073741824) {
            size = Math.min(i10, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i8), size);
        Drawable drawable = this.f2150Q;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i8) {
        Drawable drawable = this.f2150Q;
        if (drawable == null || Build.VERSION.SDK_INT < 23 || !drawable.setLayoutDirection(i8)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0072  */
    /* JADX WARN: Code duplicated, block: B:27:0x0078  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.f2175s0 > 0) {
            Point point = this.f2164h0;
            point.set((int) motionEvent.getX(), (int) motionEvent.getY());
            int i8 = point.x;
            int i9 = point.y;
            int action = motionEvent.getAction();
            Rect rect = this.f2143J;
            Rect rect2 = this.f2141H;
            if (action == 0) {
                int i10 = i8;
                if (this.f2140G.contains(i10, i9)) {
                    rect.right = p117p0.M.i(i10, rect2.left, rect2.right);
                    c(getScrubberPosition());
                    e();
                    invalidate();
                    return true;
                }
            } else if (action == 1) {
                if (this.f2173q0) {
                    d(motionEvent.getAction() == 3);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (this.f2173q0) {
                        d(motionEvent.getAction() == 3);
                        return true;
                    }
                }
            } else if (this.f2173q0) {
                if (i9 < this.f2159c0) {
                    int i11 = this.f2168l0;
                    rect.right = p117p0.M.i(((i8 - i11) / 3) + i11, rect2.left, rect2.right);
                } else {
                    this.f2168l0 = i8;
                    rect.right = p117p0.M.i(i8, rect2.left, rect2.right);
                }
                f(getScrubberPosition());
                e();
                invalidate();
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i8, Bundle bundle) {
        if (super.performAccessibilityAction(i8, bundle)) {
            return true;
        }
        if (this.f2175s0 <= 0) {
            return false;
        }
        if (i8 == 8192) {
            if (b(-getPositionIncrement())) {
                d(false);
            }
        } else {
            if (i8 != 4096) {
                return false;
            }
            if (b(getPositionIncrement())) {
                d(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i8) {
        this.f2147N.setColor(i8);
        invalidate(this.f2140G);
    }

    public void setBufferedColor(int i8) {
        this.f2145L.setColor(i8);
        invalidate(this.f2140G);
    }

    public void setBufferedPosition(long j8) {
        if (this.f2177u0 == j8) {
            return;
        }
        this.f2177u0 = j8;
        e();
    }

    public void setDuration(long j8) {
        if (this.f2175s0 == j8) {
            return;
        }
        this.f2175s0 = j8;
        if (this.f2173q0 && j8 == -9223372036854775807L) {
            d(true);
        }
        e();
    }

    @Override // android.view.View
    public void setEnabled(boolean z7) {
        super.setEnabled(z7);
        if (!this.f2173q0 || z7) {
            return;
        }
        d(true);
    }

    public void setKeyCountIncrement(int i8) {
        H1.d(i8 > 0);
        this.f2166j0 = i8;
        this.f2167k0 = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j8) {
        H1.d(j8 > 0);
        this.f2166j0 = -1;
        this.f2167k0 = j8;
    }

    public void setPlayedAdMarkerColor(int i8) {
        this.f2148O.setColor(i8);
        invalidate(this.f2140G);
    }

    public void setPlayedColor(int i8) {
        this.f2144K.setColor(i8);
        invalidate(this.f2140G);
    }

    public void setPosition(long j8) {
        if (this.f2176t0 == j8) {
            return;
        }
        this.f2176t0 = j8;
        setContentDescription(getProgressText());
        e();
    }

    public void setScrubberColor(int i8) {
        this.f2149P.setColor(i8);
        invalidate(this.f2140G);
    }

    public void setUnplayedColor(int i8) {
        this.f2146M.setColor(i8);
        invalidate(this.f2140G);
    }
}
