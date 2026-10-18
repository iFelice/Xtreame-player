package com.google.android.material.behavior;

import B.a;
import T.c;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f24105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f24106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24107c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f24108d = 0.5f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f24109e = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f24110f = 0.5f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final k4.a f24111g = new k4.a(this);

    @Override // B.a
    public boolean e(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zO = this.f24106b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zO = coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f24106b = zO;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f24106b = false;
        }
        if (!zO) {
            return false;
        }
        if (this.f24105a == null) {
            this.f24105a = new c(coordinatorLayout.getContext(), coordinatorLayout, this.f24111g);
        }
        return this.f24105a.p(motionEvent);
    }

    @Override // B.a
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        c cVar = this.f24105a;
        if (cVar == null) {
            return false;
        }
        cVar.j(motionEvent);
        return true;
    }

    public boolean s(View view) {
        return true;
    }
}
