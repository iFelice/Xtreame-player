package p086l;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import p071j.c;
import p079k.A;
import p079k.G;
import p079k.o;
import p079k.q;
import p079k.s;

/* JADX INFO: loaded from: classes.dex */
public final class j1 implements A {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public o f26270G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public q f26271H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Toolbar f26272I;

    public j1(Toolbar toolbar) {
        this.f26272I = toolbar;
    }

    @Override // p079k.A
    public final boolean b(q qVar) {
        Toolbar toolbar = this.f26272I;
        toolbar.c();
        ViewParent parent = toolbar.f8900N.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f8900N);
            }
            toolbar.addView(toolbar.f8900N);
        }
        View actionView = qVar.getActionView();
        toolbar.f8901O = actionView;
        this.f26271H = qVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f8901O);
            }
            k1 k1VarH = Toolbar.h();
            k1VarH.f25028a = (toolbar.f8906T & 112) | 8388611;
            k1VarH.f26276b = 2;
            toolbar.f8901O.setLayoutParams(k1VarH);
            toolbar.addView(toolbar.f8901O);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((k1) childAt.getLayoutParams()).f26276b != 2 && childAt != toolbar.f8893G) {
                toolbar.removeViewAt(childCount);
                toolbar.f8923n0.add(childAt);
            }
        }
        toolbar.requestLayout();
        qVar.f25850C = true;
        qVar.f25864n.p(false);
        KeyEvent.Callback callback = toolbar.f8901O;
        if (callback instanceof c) {
            ((s) ((c) callback)).f25880G.onActionViewExpanded();
        }
        toolbar.t();
        return true;
    }

    @Override // p079k.A
    public final boolean c(G g8) {
        return false;
    }

    @Override // p079k.A
    public final boolean e(q qVar) {
        Toolbar toolbar = this.f26272I;
        KeyEvent.Callback callback = toolbar.f8901O;
        if (callback instanceof c) {
            ((s) ((c) callback)).f25880G.onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.f8901O);
        toolbar.removeView(toolbar.f8900N);
        toolbar.f8901O = null;
        ArrayList arrayList = toolbar.f8923n0;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.f26271H = null;
        toolbar.requestLayout();
        qVar.f25850C = false;
        qVar.f25864n.p(false);
        toolbar.t();
        return true;
    }

    @Override // p079k.A
    public final boolean g() {
        return false;
    }

    @Override // p079k.A
    public final void i() {
        if (this.f26271H != null) {
            o oVar = this.f26270G;
            if (oVar != null) {
                int size = oVar.f25826f.size();
                for (int i8 = 0; i8 < size; i8++) {
                    if (this.f26270G.getItem(i8) == this.f26271H) {
                        return;
                    }
                }
            }
            e(this.f26271H);
        }
    }

    @Override // p079k.A
    public final void k(Context context, o oVar) {
        q qVar;
        o oVar2 = this.f26270G;
        if (oVar2 != null && (qVar = this.f26271H) != null) {
            oVar2.d(qVar);
        }
        this.f26270G = oVar;
    }

    @Override // p079k.A
    public final void d(o oVar, boolean z7) {
    }
}
