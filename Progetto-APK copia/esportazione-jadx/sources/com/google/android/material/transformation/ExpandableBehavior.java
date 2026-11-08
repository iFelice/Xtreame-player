package com.google.android.material.transformation;

import A0.O;
import B.a;
import N.N;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExpandableBehavior extends a {
    public ExpandableBehavior() {
    }

    @Override // B.a
    public abstract void b(View view);

    @Override // B.a
    public final boolean d(View view, View view2) {
        O.I(view2);
        throw null;
    }

    @Override // B.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, int i8) {
        WeakHashMap weakHashMap = N.f4843a;
        if (!view.isLaidOut()) {
            ArrayList arrayListJ = coordinatorLayout.j(view);
            int size = arrayListJ.size();
            for (int i9 = 0; i9 < size; i9++) {
                b(view);
            }
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
    }
}
