package com.google.android.material.floatingactionbutton;

import B.a;
import B.d;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public class FloatingActionButton$BaseBehavior<T> extends a {
    public FloatingActionButton$BaseBehavior() {
    }

    @Override // B.a
    public final boolean a(View view) {
        U2.u(view);
        throw null;
    }

    @Override // B.a
    public final void c(d dVar) {
        if (dVar.f666h == 0) {
            dVar.f666h = 80;
        }
    }

    @Override // B.a
    public final boolean d(View view, View view2) {
        U2.u(view);
        throw null;
    }

    @Override // B.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, int i8) {
        U2.u(view);
        throw null;
    }

    public FloatingActionButton$BaseBehavior(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p060h4.a.f25409b);
        typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
    }
}
