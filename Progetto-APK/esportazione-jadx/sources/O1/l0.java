package O1;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.google.protobuf.U2;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f5451a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5452b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5453c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5454d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f5456f;

    public l0(StaggeredGridLayoutManager staggeredGridLayoutManager, int i8) {
        this.f5456f = staggeredGridLayoutManager;
        this.f5455e = i8;
    }

    public final void a() {
        View view = (View) U2.g(this.f5451a, 1);
        i0 i0Var = (i0) view.getLayoutParams();
        this.f5453c = this.f5456f.f9704r.b(view);
        i0Var.getClass();
    }

    public final void b() {
        this.f5451a.clear();
        this.f5452b = Integer.MIN_VALUE;
        this.f5453c = Integer.MIN_VALUE;
        this.f5454d = 0;
    }

    public final int c() {
        boolean z7 = this.f5456f.f9709w;
        ArrayList arrayList = this.f5451a;
        return z7 ? e(arrayList.size() - 1, -1) : e(0, arrayList.size());
    }

    public final int d() {
        boolean z7 = this.f5456f.f9709w;
        ArrayList arrayList = this.f5451a;
        return z7 ? e(0, arrayList.size()) : e(arrayList.size() - 1, -1);
    }

    public final int e(int i8, int i9) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f5456f;
        int iH = staggeredGridLayoutManager.f9704r.h();
        int iF = staggeredGridLayoutManager.f9704r.f();
        int i10 = i9 > i8 ? 1 : -1;
        while (i8 != i9) {
            View view = (View) this.f5451a.get(i8);
            int iD = staggeredGridLayoutManager.f9704r.d(view);
            int iB = staggeredGridLayoutManager.f9704r.b(view);
            boolean z7 = iD <= iF;
            boolean z8 = iB >= iH;
            if (z7 && z8 && (iD < iH || iB > iF)) {
                return L.M(view);
            }
            i8 += i10;
        }
        return -1;
    }

    public final int f(int i8) {
        int i9 = this.f5453c;
        if (i9 != Integer.MIN_VALUE) {
            return i9;
        }
        if (this.f5451a.size() == 0) {
            return i8;
        }
        a();
        return this.f5453c;
    }

    public final View g(int i8, int i9) {
        ArrayList arrayList = this.f5451a;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f5456f;
        View view = null;
        if (i9 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f9709w && L.M(view2) >= i8) || ((!staggeredGridLayoutManager.f9709w && L.M(view2) <= i8) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
        } else {
            int size2 = arrayList.size();
            int i10 = 0;
            while (i10 < size2) {
                View view3 = (View) arrayList.get(i10);
                if ((staggeredGridLayoutManager.f9709w && L.M(view3) <= i8) || ((!staggeredGridLayoutManager.f9709w && L.M(view3) >= i8) || !view3.hasFocusable())) {
                    break;
                }
                i10++;
                view = view3;
            }
        }
        return view;
    }

    public final int h(int i8) {
        int i9 = this.f5452b;
        if (i9 != Integer.MIN_VALUE) {
            return i9;
        }
        if (this.f5451a.size() == 0) {
            return i8;
        }
        View view = (View) this.f5451a.get(0);
        i0 i0Var = (i0) view.getLayoutParams();
        this.f5452b = this.f5456f.f9704r.d(view);
        i0Var.getClass();
        return this.f5452b;
    }
}
