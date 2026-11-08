package p076j4;

import B.a;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p117p0.z;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public z f25716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f25717b = 0;

    public c() {
    }

    @Override // B.a
    public boolean f(CoordinatorLayout coordinatorLayout, View view, int i8) {
        s(coordinatorLayout, view, i8);
        if (this.f25716a == null) {
            z zVar = new z();
            zVar.f28133e = view;
            this.f25716a = zVar;
        }
        z zVar2 = this.f25716a;
        zVar2.f28129a = ((View) zVar2.f28133e).getTop();
        zVar2.f28130b = ((View) zVar2.f28133e).getLeft();
        zVar2.f();
        int i9 = this.f25717b;
        if (i9 == 0) {
            return true;
        }
        z zVar3 = this.f25716a;
        if (zVar3.f28131c != i9) {
            zVar3.f28131c = i9;
            zVar3.f();
        }
        this.f25717b = 0;
        return true;
    }

    public void s(CoordinatorLayout coordinatorLayout, View view, int i8) {
        coordinatorLayout.q(view, i8);
    }

    public c(int i8) {
    }
}
