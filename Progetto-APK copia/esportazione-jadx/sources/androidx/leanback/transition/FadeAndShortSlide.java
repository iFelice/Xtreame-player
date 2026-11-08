package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.internal.measurement.Q1;
import p117p0.AbstractC3164b;

/* JADX INFO: loaded from: classes.dex */
public class FadeAndShortSlide extends Visibility {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final DecelerateInterpolator f9044J = new DecelerateInterpolator();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final a f9045K = new a(0);

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final a f9046L = new a(1);

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final a f9047M = new a(2);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final a f9048N = new a(3);

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final a f9049O = new a(4);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Q1 f9050G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Visibility f9051H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final float f9052I;

    public FadeAndShortSlide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9051H = new Fade();
        this.f9052I = -1.0f;
        b bVar = new b(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p009b0.a.f9814h);
        int i8 = typedArrayObtainStyledAttributes.getInt(3, 8388611);
        if (i8 == 48) {
            this.f9050G = f9049O;
        } else if (i8 == 80) {
            this.f9050G = f9048N;
        } else if (i8 == 112) {
            this.f9050G = bVar;
        } else if (i8 == 8388611) {
            this.f9050G = f9045K;
        } else if (i8 == 8388613) {
            this.f9050G = f9046L;
        } else {
            if (i8 != 8388615) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f9050G = f9047M;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final float a(ViewGroup viewGroup) {
        float f8 = this.f9052I;
        return f8 >= 0.0f ? f8 : viewGroup.getWidth() / 4;
    }

    @Override // android.transition.Transition
    public final Transition addListener(Transition.TransitionListener transitionListener) {
        this.f9051H.addListener(transitionListener);
        return super.addListener(transitionListener);
    }

    public final float b(ViewGroup viewGroup) {
        float f8 = this.f9052I;
        return f8 >= 0.0f ? f8 : viewGroup.getHeight() / 4;
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        this.f9051H.captureEndValues(transitionValues);
        super.captureEndValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        this.f9051H.captureStartValues(transitionValues);
        super.captureStartValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues2.values.get("android:fadeAndShortSlideTransition:screenPosition");
        int i8 = iArr[0];
        int i9 = iArr[1];
        float translationX = view.getTranslationX();
        ObjectAnimator objectAnimatorK = AbstractC3164b.k(view, transitionValues2, i8, i9, this.f9050G.a(this, viewGroup, view, iArr), this.f9050G.b(this, viewGroup, view, iArr), translationX, view.getTranslationY(), f9044J, this);
        Animator animatorOnAppear = this.f9051H.onAppear(viewGroup, view, transitionValues, transitionValues2);
        if (objectAnimatorK == null) {
            return animatorOnAppear;
        }
        if (animatorOnAppear == null) {
            return objectAnimatorK;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorK).with(animatorOnAppear);
        return animatorSet;
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues.values.get("android:fadeAndShortSlideTransition:screenPosition");
        ObjectAnimator objectAnimatorK = AbstractC3164b.k(view, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f9050G.a(this, viewGroup, view, iArr), this.f9050G.b(this, viewGroup, view, iArr), f9044J, this);
        Animator animatorOnDisappear = this.f9051H.onDisappear(viewGroup, view, transitionValues, transitionValues2);
        if (objectAnimatorK == null) {
            return animatorOnDisappear;
        }
        if (animatorOnDisappear == null) {
            return objectAnimatorK;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorK).with(animatorOnDisappear);
        return animatorSet;
    }

    @Override // android.transition.Transition
    public final Transition removeListener(Transition.TransitionListener transitionListener) {
        this.f9051H.removeListener(transitionListener);
        return super.removeListener(transitionListener);
    }

    @Override // android.transition.Transition
    public final void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        this.f9051H.setEpicenterCallback(epicenterCallback);
        super.setEpicenterCallback(epicenterCallback);
    }

    @Override // android.transition.Transition
    public final Transition clone() {
        FadeAndShortSlide fadeAndShortSlide = (FadeAndShortSlide) super.clone();
        fadeAndShortSlide.f9051H = (Visibility) this.f9051H.clone();
        return fadeAndShortSlide;
    }
}
