package O1;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class H {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public B f5267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f5268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f5269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f5270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f5271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f5272f;

    public static void b(c0 c0Var) {
        RecyclerView recyclerView;
        int i8 = c0Var.f5362P;
        if (c0Var.h() || (i8 & 4) != 0 || (recyclerView = c0Var.f5370X) == null) {
            return;
        }
        recyclerView.J(c0Var);
    }

    public abstract boolean a(c0 c0Var, c0 c0Var2, p072j0.c cVar, p072j0.c cVar2);

    /* JADX WARN: Code duplicated, block: B:33:0x0068  */
    /* JADX WARN: Code duplicated, block: B:35:0x0078  */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x0078, please report this as an issue */
    public final void c(c0 c0Var) {
        B b8 = this.f5267a;
        if (b8 != null) {
            boolean z7 = true;
            c0Var.p(true);
            if (c0Var.f5360N != null && c0Var.f5361O == null) {
                c0Var.f5360N = null;
            }
            c0Var.f5361O = null;
            if ((c0Var.f5362P & 16) != 0) {
                return;
            }
            RecyclerView recyclerView = b8.f5264G;
            recyclerView.l0();
            C0304c c0304c = recyclerView.f9630L;
            p046f6.c cVar = c0304c.f5348b;
            B b9 = c0304c.f5347a;
            int i8 = c0304c.f5350d;
            View view = c0Var.f5353G;
            if (i8 != 1) {
                if (i8 == 2) {
                    throw new IllegalStateException("Cannot call removeViewIfHidden within removeViewIfHidden");
                }
                try {
                    c0304c.f5350d = 2;
                    int iIndexOfChild = b9.f5264G.indexOfChild(view);
                    if (iIndexOfChild == -1) {
                        c0304c.l(view);
                    } else if (cVar.d(iIndexOfChild)) {
                        cVar.h(iIndexOfChild);
                        c0304c.l(view);
                        b9.h(iIndexOfChild);
                    } else {
                        c0304c.f5350d = 0;
                    }
                    c0304c.f5350d = 0;
                    if (z7) {
                        c0 c0VarL = RecyclerView.L(view);
                        p142s1.g gVar = recyclerView.f9624I;
                        gVar.m(c0VarL);
                        gVar.j(c0VarL);
                        if (RecyclerView.f9606j1) {
                            Log.d("RecyclerView", "after removing animated view: " + view + ", " + recyclerView);
                        }
                    }
                    recyclerView.n0(!z7);
                    if (z7 && c0Var.l()) {
                        recyclerView.removeDetachedView(view, false);
                        return;
                    }
                } catch (Throwable th) {
                    c0304c.f5350d = 0;
                    throw th;
                }
            }
            if (c0304c.f5351e != view) {
                throw new IllegalStateException("Cannot call removeViewIfHidden within removeView(At) for a different view");
            }
            z7 = false;
            if (z7) {
                c0 c0VarL2 = RecyclerView.L(view);
                p142s1.g gVar2 = recyclerView.f9624I;
                gVar2.m(c0VarL2);
                gVar2.j(c0VarL2);
                if (RecyclerView.f9606j1) {
                    Log.d("RecyclerView", "after removing animated view: " + view + ", " + recyclerView);
                }
            }
            recyclerView.n0(!z7);
            if (z7) {
            }
        }
    }

    public abstract void d(c0 c0Var);

    public abstract void e();

    public abstract boolean f();
}
