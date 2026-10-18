package O1;

import N.InterfaceC0262k;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class B implements InterfaceC0262k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f5264G;

    public /* synthetic */ B(RecyclerView recyclerView) {
        this.f5264G = recyclerView;
    }

    @Override // N.InterfaceC0262k
    public final float B() {
        float f8;
        RecyclerView recyclerView = this.f5264G;
        if (recyclerView.f9646T.f()) {
            f8 = recyclerView.f9625I0;
        } else {
            if (!recyclerView.f9646T.e()) {
                return 0.0f;
            }
            f8 = recyclerView.f9623H0;
        }
        return -f8;
    }

    @Override // N.InterfaceC0262k
    public final void E() {
        this.f5264G.p0();
    }

    public final void a(C0302a c0302a) {
        int i8 = c0302a.f5330a;
        RecyclerView recyclerView = this.f5264G;
        if (i8 == 1) {
            recyclerView.f9646T.h0(c0302a.f5331b, c0302a.f5333d);
            return;
        }
        if (i8 == 2) {
            recyclerView.f9646T.k0(c0302a.f5331b, c0302a.f5333d);
        } else if (i8 == 4) {
            recyclerView.f9646T.m0(recyclerView, c0302a.f5331b, c0302a.f5333d);
        } else {
            if (i8 != 8) {
                return;
            }
            recyclerView.f9646T.j0(c0302a.f5331b, c0302a.f5333d);
        }
    }

    public final c0 b(int i8) {
        RecyclerView recyclerView = this.f5264G;
        int iH = recyclerView.f9630L.h();
        c0 c0Var = null;
        for (int i9 = 0; i9 < iH; i9++) {
            c0 c0VarL = RecyclerView.L(recyclerView.f9630L.g(i9));
            if (c0VarL != null && !c0VarL.j() && c0VarL.f5355I == i8) {
                if (!recyclerView.f9630L.k(c0VarL.f5353G)) {
                    c0Var = c0VarL;
                    break;
                }
                c0Var = c0VarL;
            }
        }
        if (c0Var == null) {
            return null;
        }
        if (!recyclerView.f9630L.k(c0Var.f5353G)) {
            return c0Var;
        }
        if (RecyclerView.f9606j1) {
            Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
        }
        return null;
    }

    public final void c(int i8, Object obj, int i9) {
        int i10;
        int i11;
        RecyclerView recyclerView = this.f5264G;
        int iH = recyclerView.f9630L.h();
        int i12 = i9 + i8;
        for (int i13 = 0; i13 < iH; i13++) {
            View viewG = recyclerView.f9630L.g(i13);
            c0 c0VarL = RecyclerView.L(viewG);
            if (c0VarL != null && !c0VarL.q() && (i11 = c0VarL.f5355I) >= i8 && i11 < i12) {
                c0VarL.b(2);
                c0VarL.a(obj);
                ((M) viewG.getLayoutParams()).f5296c = true;
            }
        }
        p142s1.g gVar = recyclerView.f9624I;
        ArrayList arrayList = (ArrayList) gVar.f30047e;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            c0 c0Var = (c0) arrayList.get(size);
            if (c0Var != null && (i10 = c0Var.f5355I) >= i8 && i10 < i12) {
                c0Var.b(2);
                gVar.h(size);
            }
        }
        recyclerView.f9643R0 = true;
    }

    public final void d(int i8, int i9) {
        RecyclerView recyclerView = this.f5264G;
        int iH = recyclerView.f9630L.h();
        for (int i10 = 0; i10 < iH; i10++) {
            c0 c0VarL = RecyclerView.L(recyclerView.f9630L.g(i10));
            if (c0VarL != null && !c0VarL.q() && c0VarL.f5355I >= i8) {
                if (RecyclerView.f9606j1) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert attached child " + i10 + " holder " + c0VarL + " now at position " + (c0VarL.f5355I + i9));
                }
                c0VarL.n(i9, false);
                recyclerView.f9635N0.f5319f = true;
            }
        }
        ArrayList arrayList = (ArrayList) recyclerView.f9624I.f30047e;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            c0 c0Var = (c0) arrayList.get(i11);
            if (c0Var != null && c0Var.f5355I >= i8) {
                if (RecyclerView.f9606j1) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert cached " + i11 + " holder " + c0Var + " now at position " + (c0Var.f5355I + i9));
                }
                c0Var.n(i9, false);
            }
        }
        recyclerView.requestLayout();
        recyclerView.f9641Q0 = true;
    }

    public final void e(int i8, int i9) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        RecyclerView recyclerView = this.f5264G;
        int iH = recyclerView.f9630L.h();
        if (i8 < i9) {
            i11 = i8;
            i10 = i9;
            i12 = -1;
        } else {
            i10 = i8;
            i11 = i9;
            i12 = 1;
        }
        boolean z7 = false;
        for (int i18 = 0; i18 < iH; i18++) {
            c0 c0VarL = RecyclerView.L(recyclerView.f9630L.g(i18));
            if (c0VarL != null && (i17 = c0VarL.f5355I) >= i11 && i17 <= i10) {
                if (RecyclerView.f9606j1) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove attached child " + i18 + " holder " + c0VarL);
                }
                if (c0VarL.f5355I == i8) {
                    c0VarL.n(i9 - i8, false);
                } else {
                    c0VarL.n(i12, false);
                }
                recyclerView.f9635N0.f5319f = true;
            }
        }
        p142s1.g gVar = recyclerView.f9624I;
        gVar.getClass();
        if (i8 < i9) {
            i14 = i8;
            i13 = i9;
            i15 = -1;
        } else {
            i13 = i8;
            i14 = i9;
            i15 = 1;
        }
        ArrayList arrayList = (ArrayList) gVar.f30047e;
        int size = arrayList.size();
        int i19 = 0;
        while (i19 < size) {
            c0 c0Var = (c0) arrayList.get(i19);
            if (c0Var != null && (i16 = c0Var.f5355I) >= i14 && i16 <= i13) {
                if (i16 == i8) {
                    c0Var.n(i9 - i8, z7);
                } else {
                    c0Var.n(i15, z7);
                }
                if (RecyclerView.f9606j1) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove cached child " + i19 + " holder " + c0Var);
                }
            }
            i19++;
            z7 = false;
        }
        recyclerView.requestLayout();
        recyclerView.f9641Q0 = true;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b  */
    public final void f(c0 c0Var, p072j0.c cVar, p072j0.c cVar2) {
        RecyclerView recyclerView = this.f5264G;
        recyclerView.getClass();
        c0Var.p(false);
        C0311j c0311j = (C0311j) recyclerView.f9686v0;
        if (cVar != null) {
            c0311j.getClass();
            int i8 = cVar.f25660G;
            int i9 = cVar2.f25660G;
            if (i8 == i9 && cVar.f25661H == cVar2.f25661H) {
                c0311j.l(c0Var);
                c0Var.f5353G.setAlpha(0.0f);
                c0311j.f5421i.add(c0Var);
            } else if (!c0311j.g(c0Var, i8, cVar.f25661H, i9, cVar2.f25661H)) {
                return;
            }
        } else {
            c0311j.l(c0Var);
            c0Var.f5353G.setAlpha(0.0f);
            c0311j.f5421i.add(c0Var);
        }
        recyclerView.X();
    }

    public final void g(c0 c0Var, p072j0.c cVar, p072j0.c cVar2) {
        RecyclerView recyclerView = this.f5264G;
        recyclerView.f9624I.m(c0Var);
        recyclerView.h(c0Var);
        c0Var.p(false);
        C0311j c0311j = (C0311j) recyclerView.f9686v0;
        c0311j.getClass();
        int i8 = cVar.f25660G;
        int i9 = cVar.f25661H;
        View view = c0Var.f5353G;
        int left = cVar2 == null ? view.getLeft() : cVar2.f25660G;
        int top = cVar2 == null ? view.getTop() : cVar2.f25661H;
        if (c0Var.j() || (i8 == left && i9 == top)) {
            c0311j.l(c0Var);
            c0311j.f5420h.add(c0Var);
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            if (!c0311j.g(c0Var, i8, i9, left, top)) {
                return;
            }
        }
        recyclerView.X();
    }

    public final void h(int i8) {
        RecyclerView recyclerView = this.f5264G;
        View childAt = recyclerView.getChildAt(i8);
        if (childAt != null) {
            RecyclerView.L(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i8);
    }

    @Override // N.InterfaceC0262k
    public final boolean u(float f8) {
        int i8;
        int i9;
        RecyclerView recyclerView = this.f5264G;
        if (recyclerView.f9646T.f()) {
            i9 = (int) f8;
            i8 = 0;
        } else {
            i8 = recyclerView.f9646T.e() ? (int) f8 : 0;
            i9 = 0;
        }
        if (i8 == 0 && i9 == 0) {
            return false;
        }
        recyclerView.p0();
        return recyclerView.I(i8, i9, 0, com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
    }
}
