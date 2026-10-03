package androidx.leanback.widget;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.WeakHashMap;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class SearchOrbView extends FrameLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public View.OnClickListener f9214G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final View f9215H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final View f9216I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ImageView f9217J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Drawable f9218K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public N f9219L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final float f9220M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f9221N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f9222O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final float f9223P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final float f9224Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ValueAnimator f9225R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f9226S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f9227T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final ArgbEvaluator f9228U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final M f9229V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public ValueAnimator f9230W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final M f9231a0;

    public SearchOrbView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchOrbViewStyle);
    }

    public final void a(boolean z7) {
        float f8 = z7 ? this.f9220M : 1.0f;
        ViewPropertyAnimator viewPropertyAnimatorScaleY = this.f9215H.animate().scaleX(f8).scaleY(f8);
        long j8 = this.f9222O;
        viewPropertyAnimatorScaleY.setDuration(j8).start();
        if (this.f9230W == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f9230W = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(this.f9231a0);
        }
        if (z7) {
            this.f9230W.start();
        } else {
            this.f9230W.reverse();
        }
        this.f9230W.setDuration(j8);
        this.f9226S = z7;
        b();
    }

    public final void b() {
        ValueAnimator valueAnimator = this.f9225R;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f9225R = null;
        }
        if (this.f9226S && this.f9227T) {
            ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(this.f9228U, Integer.valueOf(this.f9219L.f9141a), Integer.valueOf(this.f9219L.f9142b), Integer.valueOf(this.f9219L.f9141a));
            this.f9225R = valueAnimatorOfObject;
            valueAnimatorOfObject.setRepeatCount(-1);
            this.f9225R.setDuration(this.f9221N * 2);
            this.f9225R.addUpdateListener(this.f9229V);
            this.f9225R.start();
        }
    }

    public float getFocusedZoom() {
        return this.f9220M;
    }

    public int getLayoutResourceId() {
        return R.layout.lb_search_orb;
    }

    public int getOrbColor() {
        return this.f9219L.f9141a;
    }

    public N getOrbColors() {
        return this.f9219L;
    }

    public Drawable getOrbIcon() {
        return this.f9218K;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f9227T = true;
        b();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f9214G;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f9227T = false;
        b();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z7, int i8, Rect rect) {
        super.onFocusChanged(z7, i8, rect);
        a(z7);
    }

    public void setOnOrbClickedListener(View.OnClickListener onClickListener) {
        this.f9214G = onClickListener;
    }

    public void setOrbColor(int i8) {
        setOrbColors(new N(i8, i8, 0));
    }

    public void setOrbColors(N n7) {
        this.f9219L = n7;
        this.f9217J.setColorFilter(n7.f9143c);
        if (this.f9225R == null) {
            setOrbViewColor(this.f9219L.f9141a);
        } else {
            this.f9226S = true;
            b();
        }
    }

    public void setOrbIcon(Drawable drawable) {
        this.f9218K = drawable;
        this.f9217J.setImageDrawable(drawable);
    }

    public void setOrbViewColor(int i8) {
        View view = this.f9216I;
        if (view.getBackground() instanceof GradientDrawable) {
            ((GradientDrawable) view.getBackground()).setColor(i8);
        }
    }

    public void setSearchOrbZ(float f8) {
        float f9 = this.f9224Q;
        float f10 = this.f9223P;
        float f11 = ((f9 - f10) * f8) + f10;
        WeakHashMap weakHashMap = N.N.f4843a;
        N.E.n(this.f9216I, f11);
    }

    public SearchOrbView(Context context, AttributeSet attributeSet, int i8) {
        super(context, attributeSet, i8);
        this.f9228U = new ArgbEvaluator();
        this.f9229V = new M(this, 0);
        this.f9231a0 = new M(this, 1);
        Resources resources = context.getResources();
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(getLayoutResourceId(), (ViewGroup) this, true);
        this.f9215H = viewInflate;
        this.f9216I = viewInflate.findViewById(R.id.search_orb);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.icon);
        this.f9217J = imageView;
        this.f9220M = context.getResources().getFraction(R.fraction.lb_search_orb_focused_zoom, 1, 1);
        this.f9221N = context.getResources().getInteger(R.integer.lb_search_orb_pulse_duration_ms);
        this.f9222O = context.getResources().getInteger(R.integer.lb_search_orb_scale_duration_ms);
        float dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.lb_search_orb_focused_z);
        this.f9224Q = dimensionPixelSize;
        this.f9223P = context.getResources().getDimensionPixelSize(R.dimen.lb_search_orb_unfocused_z);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p009b0.a.f9813g, i8, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(2);
        setOrbIcon(drawable == null ? resources.getDrawable(R.drawable.lb_ic_in_app_search) : drawable);
        int color = typedArrayObtainStyledAttributes.getColor(1, resources.getColor(R.color.lb_default_search_color));
        setOrbColors(new N(color, typedArrayObtainStyledAttributes.getColor(0, color), typedArrayObtainStyledAttributes.getColor(3, 0)));
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(true);
        setClipChildren(false);
        setOnClickListener(this);
        setSoundEffectsEnabled(false);
        setSearchOrbZ(0.0f);
        WeakHashMap weakHashMap = N.N.f4843a;
        N.E.n(imageView, dimensionPixelSize);
    }
}
