package com.google.android.material.snackbar;

import A0.O;
import Z3.C0433o;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p096m2.i;
import p137r4.c;

/* JADX INFO: loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0433o f24151h = new C0433o(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, B.a
    public final boolean e(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        C0433o c0433o = this.f24151h;
        c0433o.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (i.f27222L == null) {
                    i.f27222L = new i(12);
                }
                i iVar = i.f27222L;
                O.I(c0433o.f8372H);
                synchronized (iVar.f27224H) {
                    O.I(iVar.f27226J);
                }
            }
        } else if (coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (i.f27222L == null) {
                i.f27222L = new i(12);
            }
            i iVar2 = i.f27222L;
            O.I(c0433o.f8372H);
            iVar2.o();
        }
        return super.e(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean s(View view) {
        this.f24151h.getClass();
        return view instanceof c;
    }
}
