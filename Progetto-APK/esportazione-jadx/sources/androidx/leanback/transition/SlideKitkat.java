package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
class SlideKitkat extends Visibility {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final DecelerateInterpolator f9053H = new DecelerateInterpolator();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final AccelerateInterpolator f9054I = new AccelerateInterpolator();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final d f9055J = new d(0);

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final e f9056K = new e(0);

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final d f9057L = new d(1);

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final e f9058M = new e(1);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final d f9059N = new d(2);

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final d f9060O = new d(3);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final f f9061G;

    public SlideKitkat(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p009b0.a.f9814h);
        int i8 = typedArrayObtainStyledAttributes.getInt(3, 80);
        if (i8 == 3) {
            this.f9061G = f9055J;
        } else if (i8 == 5) {
            this.f9061G = f9057L;
        } else if (i8 == 48) {
            this.f9061G = f9056K;
        } else if (i8 == 80) {
            this.f9061G = f9058M;
        } else if (i8 == 8388611) {
            this.f9061G = f9059N;
        } else {
            if (i8 != 8388613) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f9061G = f9060O;
        }
        long j8 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (j8 >= 0) {
            setDuration(j8);
        }
        long j9 = typedArrayObtainStyledAttributes.getInt(2, -1);
        if (j9 > 0) {
            setStartDelay(j9);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static ObjectAnimator a(View view, Property property, float f8, float f9, float f10, TimeInterpolator timeInterpolator, int i8) {
        float[] fArr = (float[]) view.getTag(R.id.lb_slide_transition_value);
        if (fArr != null) {
            f8 = View.TRANSLATION_Y == property ? fArr[1] : fArr[0];
            view.setTag(R.id.lb_slide_transition_value, null);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f8, f9);
        g gVar = new g(view, property, f10, f9, i8);
        objectAnimatorOfFloat.addListener(gVar);
        objectAnimatorOfFloat.addPauseListener(gVar);
        objectAnimatorOfFloat.setInterpolator(timeInterpolator);
        return objectAnimatorOfFloat;
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i8, TransitionValues transitionValues2, int i9) {
        View view = transitionValues2 != null ? transitionValues2.view : null;
        if (view == null) {
            return null;
        }
        float fC = this.f9061G.c(view);
        return a(view, this.f9061G.d(), this.f9061G.b(view), fC, fC, f9053H, 0);
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int i8, TransitionValues transitionValues2, int i9) {
        View view = transitionValues != null ? transitionValues.view : null;
        if (view == null) {
            return null;
        }
        float fC = this.f9061G.c(view);
        return a(view, this.f9061G.d(), fC, this.f9061G.b(view), fC, f9054I, 4);
    }
}
