package com.google.android.material.appbar;

import B.a;
import B.d;
import N.N;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import p076j4.c;

/* JADX INFO: loaded from: classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24101c;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public static void t(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
        }
    }

    @Override // B.a
    public final boolean d(View view, View view2) {
        int i8;
        a aVar = ((d) view2.getLayoutParams()).f659a;
        if (aVar instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            ((AppBarLayout$BaseBehavior) aVar).getClass();
            int i9 = this.f24101c;
            if (i9 == 0 || (i8 = (int) (0.0f * i9)) < 0) {
                i9 = 0;
            } else if (i8 <= i9) {
                i9 = i8;
            }
            N.i(view, bottom - i9);
        }
        return false;
    }

    @Override // B.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view) {
        int i8 = view.getLayoutParams().height;
        if (i8 != -1 && i8 != -2) {
            return false;
        }
        t(coordinatorLayout.j(view));
        return false;
    }

    @Override // B.a
    public final void l(CoordinatorLayout coordinatorLayout, View view) {
        t(coordinatorLayout.j(view));
    }

    @Override // p076j4.c
    public final void s(CoordinatorLayout coordinatorLayout, View view, int i8) {
        t(coordinatorLayout.j(view));
        coordinatorLayout.q(view, i8);
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(0);
        new Rect();
        new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p060h4.a.f25412e);
        this.f24101c = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
