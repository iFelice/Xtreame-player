package O1;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.protobuf.U2;
import java.util.ArrayList;

/* JADX INFO: renamed from: O1.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0304c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final B f5347a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f5351e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5350d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p046f6.c f5348b = new p046f6.c(3);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f5349c = new ArrayList();

    public C0304c(B b8) {
        this.f5347a = b8;
    }

    public final void a(int i8, View view, boolean z7) {
        B b8 = this.f5347a;
        int childCount = i8 < 0 ? b8.f5264G.getChildCount() : f(i8);
        this.f5348b.e(childCount, z7);
        if (z7) {
            i(view);
        }
        RecyclerView recyclerView = b8.f5264G;
        recyclerView.addView(view, childCount);
        c0 c0VarL = RecyclerView.L(view);
        C c8 = recyclerView.f9644S;
        if (c8 == null || c0VarL == null) {
            return;
        }
        c8.e(c0VarL);
    }

    public final void b(View view, int i8, ViewGroup.LayoutParams layoutParams, boolean z7) {
        B b8 = this.f5347a;
        int childCount = i8 < 0 ? b8.f5264G.getChildCount() : f(i8);
        this.f5348b.e(childCount, z7);
        if (z7) {
            i(view);
        }
        b8.getClass();
        c0 c0VarL = RecyclerView.L(view);
        RecyclerView recyclerView = b8.f5264G;
        if (c0VarL != null) {
            if (!c0VarL.l() && !c0VarL.q()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(c0VarL);
                throw new IllegalArgumentException(U2.i(recyclerView, sb));
            }
            if (RecyclerView.f9606j1) {
                Log.d("RecyclerView", "reAttach " + c0VarL);
            }
            c0VarL.f5362P &= -257;
        } else if (RecyclerView.f9605i1) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(childCount);
            throw new IllegalArgumentException(U2.i(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final void c(int i8) {
        int iF = f(i8);
        this.f5348b.h(iF);
        RecyclerView recyclerView = this.f5347a.f5264G;
        View childAt = recyclerView.getChildAt(iF);
        if (childAt != null) {
            c0 c0VarL = RecyclerView.L(childAt);
            if (c0VarL != null) {
                if (c0VarL.l() && !c0VarL.q()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(c0VarL);
                    throw new IllegalArgumentException(U2.i(recyclerView, sb));
                }
                if (RecyclerView.f9606j1) {
                    Log.d("RecyclerView", "tmpDetach " + c0VarL);
                }
                c0VarL.b(256);
            }
        } else if (RecyclerView.f9605i1) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(iF);
            throw new IllegalArgumentException(U2.i(recyclerView, sb2));
        }
        recyclerView.detachViewFromParent(iF);
    }

    public final View d(int i8) {
        return this.f5347a.f5264G.getChildAt(f(i8));
    }

    public final int e() {
        return this.f5347a.f5264G.getChildCount() - this.f5349c.size();
    }

    public final int f(int i8) {
        if (i8 < 0) {
            return -1;
        }
        int childCount = this.f5347a.f5264G.getChildCount();
        int i9 = i8;
        while (i9 < childCount) {
            p046f6.c cVar = this.f5348b;
            int iB = i8 - (i9 - cVar.b(i9));
            if (iB == 0) {
                while (cVar.d(i9)) {
                    i9++;
                }
                return i9;
            }
            i9 += iB;
        }
        return -1;
    }

    public final View g(int i8) {
        return this.f5347a.f5264G.getChildAt(i8);
    }

    public final int h() {
        return this.f5347a.f5264G.getChildCount();
    }

    public final void i(View view) {
        this.f5349c.add(view);
        B b8 = this.f5347a;
        b8.getClass();
        c0 c0VarL = RecyclerView.L(view);
        if (c0VarL != null) {
            int i8 = c0VarL.f5369W;
            View view2 = c0VarL.f5353G;
            if (i8 != -1) {
                c0VarL.f5368V = i8;
            } else {
                c0VarL.f5368V = view2.getImportantForAccessibility();
            }
            RecyclerView recyclerView = b8.f5264G;
            if (!recyclerView.Q()) {
                view2.setImportantForAccessibility(4);
            } else {
                c0VarL.f5369W = 4;
                recyclerView.f9658a1.add(c0VarL);
            }
        }
    }

    public final int j(View view) {
        int iIndexOfChild = this.f5347a.f5264G.indexOfChild(view);
        if (iIndexOfChild == -1) {
            return -1;
        }
        p046f6.c cVar = this.f5348b;
        if (cVar.d(iIndexOfChild)) {
            return -1;
        }
        return iIndexOfChild - cVar.b(iIndexOfChild);
    }

    public final boolean k(View view) {
        return this.f5349c.contains(view);
    }

    public final void l(View view) {
        if (this.f5349c.remove(view)) {
            B b8 = this.f5347a;
            b8.getClass();
            c0 c0VarL = RecyclerView.L(view);
            if (c0VarL != null) {
                int i8 = c0VarL.f5368V;
                RecyclerView recyclerView = b8.f5264G;
                if (recyclerView.Q()) {
                    c0VarL.f5369W = i8;
                    recyclerView.f9658a1.add(c0VarL);
                } else {
                    c0VarL.f5353G.setImportantForAccessibility(i8);
                }
                c0VarL.f5368V = 0;
            }
        }
    }

    public final String toString() {
        return this.f5348b.toString() + ", hidden list:" + this.f5349c.size();
    }
}
