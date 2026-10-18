package O1;

import android.view.View;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: O1.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0324x extends N {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView f5553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Scroller f5554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f0 f5555c = new f0(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0325y f5556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0325y f5557e;

    public static View c(L l4, AbstractC0326z abstractC0326z) {
        int iX = l4.x();
        View view = null;
        if (iX == 0) {
            return null;
        }
        int i8 = (abstractC0326z.i() / 2) + abstractC0326z.h();
        int i9 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        for (int i10 = 0; i10 < iX; i10++) {
            View viewW = l4.w(i10);
            int iAbs = Math.abs(((abstractC0326z.c(viewW) / 2) + abstractC0326z.d(viewW)) - i8);
            if (iAbs < i9) {
                view = viewW;
                i9 = iAbs;
            }
        }
        return view;
    }

    public final int[] a(L l4, View view) {
        int[] iArr = new int[2];
        if (l4.e()) {
            AbstractC0326z abstractC0326zD = d(l4);
            iArr[0] = ((abstractC0326zD.c(view) / 2) + abstractC0326zD.d(view)) - ((abstractC0326zD.i() / 2) + abstractC0326zD.h());
        } else {
            iArr[0] = 0;
        }
        if (l4.f()) {
            AbstractC0326z abstractC0326zE = e(l4);
            iArr[1] = ((abstractC0326zE.c(view) / 2) + abstractC0326zE.d(view)) - ((abstractC0326zE.i() / 2) + abstractC0326zE.h());
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    public final int b(L l4, AbstractC0326z abstractC0326z, int i8, int i9) {
        this.f5554b.fling(0, 0, i8, i9, Integer.MIN_VALUE, com.google.android.gms.common.api.d.API_PRIORITY_OTHER, Integer.MIN_VALUE, com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
        int[] iArr = {this.f5554b.getFinalX(), this.f5554b.getFinalY()};
        int iX = l4.x();
        float f8 = 1.0f;
        if (iX != 0) {
            View view = null;
            View view2 = null;
            int i10 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            int i11 = Integer.MIN_VALUE;
            for (int i12 = 0; i12 < iX; i12++) {
                View viewW = l4.w(i12);
                int iM = L.M(viewW);
                if (iM != -1) {
                    if (iM < i10) {
                        view = viewW;
                        i10 = iM;
                    }
                    if (iM > i11) {
                        view2 = viewW;
                        i11 = iM;
                    }
                }
            }
            if (view != null && view2 != null) {
                int iMax = Math.max(abstractC0326z.b(view), abstractC0326z.b(view2)) - Math.min(abstractC0326z.d(view), abstractC0326z.d(view2));
                if (iMax != 0) {
                    f8 = (iMax * 1.0f) / ((i11 - i10) + 1);
                }
            }
        }
        if (f8 <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(iArr[0]) > Math.abs(iArr[1]) ? iArr[0] : iArr[1]) / f8);
    }

    public final AbstractC0326z d(L l4) {
        C0325y c0325y = this.f5557e;
        if (c0325y == null || ((L) c0325y.f5560b) != l4) {
            this.f5557e = new C0325y(l4, 0);
        }
        return this.f5557e;
    }

    public final AbstractC0326z e(L l4) {
        C0325y c0325y = this.f5556d;
        if (c0325y == null || ((L) c0325y.f5560b) != l4) {
            this.f5556d = new C0325y(l4, 1);
        }
        return this.f5556d;
    }

    public final void f() {
        L layoutManager;
        View viewC;
        RecyclerView recyclerView = this.f5553a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager.f()) {
            viewC = c(layoutManager, e(layoutManager));
        } else {
            viewC = layoutManager.e() ? c(layoutManager, d(layoutManager)) : null;
        }
        if (viewC == null) {
            return;
        }
        int[] iArrA = a(layoutManager, viewC);
        int i8 = iArrA[0];
        if (i8 == 0 && iArrA[1] == 0) {
            return;
        }
        this.f5553a.j0(i8, iArrA[1], false);
    }
}
