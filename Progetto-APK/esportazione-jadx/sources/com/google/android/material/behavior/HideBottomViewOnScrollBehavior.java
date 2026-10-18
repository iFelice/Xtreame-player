package com.google.android.material.behavior;

import B.a;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p086l.C3022d;

/* JADX INFO: loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f24102a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f24103b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewPropertyAnimator f24104c;

    public HideBottomViewOnScrollBehavior() {
    }

    @Override // B.a
    public boolean f(CoordinatorLayout coordinatorLayout, View view, int i8) {
        this.f24102a = view.getMeasuredHeight();
        return false;
    }

    @Override // B.a
    public final void j(View view, int i8) {
        int i9 = this.f24103b;
        if (i9 != 1 && i8 > 0) {
            s(view);
        } else {
            if (i9 == 2 || i8 >= 0) {
                return;
            }
            t(view);
        }
    }

    @Override // B.a
    public final boolean o(int i8) {
        return i8 == 2;
    }

    public void s(View view) {
        ViewPropertyAnimator viewPropertyAnimator = this.f24104c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f24103b = 1;
        this.f24104c = view.animate().translationY(this.f24102a).setInterpolator(p068i4.a.f25575b).setDuration(175L).setListener(new C3022d(this, 3));
    }

    public void t(View view) {
        ViewPropertyAnimator viewPropertyAnimator = this.f24104c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f24103b = 2;
        this.f24104c = view.animate().translationY(0).setInterpolator(p068i4.a.f25576c).setDuration(225L).setListener(new C3022d(this, 3));
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }
}
