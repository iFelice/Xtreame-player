package O1;

import N.C0253b;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class d0 extends C0253b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e0 f5375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WeakHashMap f5376e = new WeakHashMap();

    public d0(e0 e0Var) {
        this.f5375d = e0Var;
    }

    @Override // N.C0253b
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        C0253b c0253b = (C0253b) this.f5376e.get(view);
        return c0253b != null ? c0253b.a(view, accessibilityEvent) : this.f4877a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // N.C0253b
    public final J b(View view) {
        C0253b c0253b = (C0253b) this.f5376e.get(view);
        return c0253b != null ? c0253b.b(view) : super.b(view);
    }

    @Override // N.C0253b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        C0253b c0253b = (C0253b) this.f5376e.get(view);
        if (c0253b != null) {
            c0253b.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // N.C0253b
    public final void d(View view, O.f fVar) {
        e0 e0Var = this.f5375d;
        boolean zO = e0Var.f5382d.O();
        View.AccessibilityDelegate accessibilityDelegate = this.f4877a;
        AccessibilityNodeInfo accessibilityNodeInfo = fVar.f5019a;
        if (!zO) {
            RecyclerView recyclerView = e0Var.f5382d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().e0(view, fVar);
                C0253b c0253b = (C0253b) this.f5376e.get(view);
                if (c0253b != null) {
                    c0253b.d(view, fVar);
                    return;
                } else {
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    return;
                }
            }
        }
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
    }

    @Override // N.C0253b
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        C0253b c0253b = (C0253b) this.f5376e.get(view);
        if (c0253b != null) {
            c0253b.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // N.C0253b
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        C0253b c0253b = (C0253b) this.f5376e.get(viewGroup);
        return c0253b != null ? c0253b.f(viewGroup, view, accessibilityEvent) : this.f4877a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // N.C0253b
    public final boolean g(View view, int i8, Bundle bundle) {
        e0 e0Var = this.f5375d;
        if (!e0Var.f5382d.O()) {
            RecyclerView recyclerView = e0Var.f5382d;
            if (recyclerView.getLayoutManager() != null) {
                C0253b c0253b = (C0253b) this.f5376e.get(view);
                if (c0253b != null) {
                    if (c0253b.g(view, i8, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i8, bundle)) {
                    return true;
                }
                p142s1.g gVar = recyclerView.getLayoutManager().f5280b.f9624I;
                return false;
            }
        }
        return super.g(view, i8, bundle);
    }

    @Override // N.C0253b
    public final void h(View view, int i8) {
        C0253b c0253b = (C0253b) this.f5376e.get(view);
        if (c0253b != null) {
            c0253b.h(view, i8);
        } else {
            super.h(view, i8);
        }
    }

    @Override // N.C0253b
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        C0253b c0253b = (C0253b) this.f5376e.get(view);
        if (c0253b != null) {
            c0253b.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
