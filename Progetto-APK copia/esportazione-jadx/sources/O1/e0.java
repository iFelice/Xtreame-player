package O1;

import N.C0253b;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class e0 extends C0253b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f5382d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d0 f5383e;

    public e0(RecyclerView recyclerView) {
        this.f5382d = recyclerView;
        d0 d0Var = this.f5383e;
        if (d0Var != null) {
            this.f5383e = d0Var;
        } else {
            this.f5383e = new d0(this);
        }
    }

    @Override // N.C0253b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f5382d.O()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().c0(accessibilityEvent);
        }
    }

    @Override // N.C0253b
    public final void d(View view, O.f fVar) {
        this.f4877a.onInitializeAccessibilityNodeInfo(view, fVar.f5019a);
        RecyclerView recyclerView = this.f5382d;
        if (recyclerView.O() || recyclerView.getLayoutManager() == null) {
            return;
        }
        L layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.f5280b;
        layoutManager.d0(recyclerView2.f9624I, recyclerView2.f9635N0, fVar);
    }

    @Override // N.C0253b
    public final boolean g(View view, int i8, Bundle bundle) {
        if (super.g(view, i8, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f5382d;
        if (recyclerView.O() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        return recyclerView.getLayoutManager().u0(i8, bundle);
    }
}
