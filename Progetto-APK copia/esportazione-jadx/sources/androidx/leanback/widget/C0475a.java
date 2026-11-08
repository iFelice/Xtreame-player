package androidx.leanback.widget;

import O1.c0;
import android.os.Parcelable;
import android.util.SparseArray;

/* JADX INFO: renamed from: androidx.leanback.widget.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0475a implements O1.T {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0480f f9290a;

    public C0475a(AbstractC0480f abstractC0480f) {
        this.f9290a = abstractC0480f;
    }

    public final void a(c0 c0Var) {
        int i8;
        AbstractC0480f abstractC0480f = this.f9290a;
        C0491q c0491q = abstractC0480f.f9291r1;
        c0491q.getClass();
        int iC = c0Var.c();
        if (iC != -1) {
            V.b bVar = c0491q.f9365b0;
            int i9 = bVar.f6993b;
            if (i9 == 1) {
                p132r.l lVar = (p132r.l) bVar.f6995d;
                if (lVar != null) {
                    synchronized (lVar.f29678c) {
                        i8 = lVar.f29679d;
                    }
                    if (i8 != 0) {
                        ((p132r.l) bVar.f6995d).e(Integer.toString(iC));
                    }
                }
            } else if ((i9 == 2 || i9 == 3) && ((p132r.l) bVar.f6995d) != null) {
                String string = Integer.toString(iC);
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                c0Var.f5353G.saveHierarchyState(sparseArray);
                ((p132r.l) bVar.f6995d).d(string, sparseArray);
            }
        }
        O1.T t7 = abstractC0480f.f9295v1;
        if (t7 != null) {
            ((C0475a) t7).a(c0Var);
        }
    }
}
