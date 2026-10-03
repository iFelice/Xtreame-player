package O1;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class A implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5262G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f5263H;

    public /* synthetic */ A(RecyclerView recyclerView, int i8) {
        this.f5262G = i8;
        this.f5263H = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        int i8 = this.f5262G;
        RecyclerView recyclerView3 = this.f5263H;
        switch (i8) {
            case 0:
                if (recyclerView3.f9665e0 && !recyclerView3.isLayoutRequested()) {
                    if (!recyclerView3.f9661c0) {
                        recyclerView3.requestLayout();
                    } else if (!recyclerView3.f9671h0) {
                        recyclerView3.p();
                    } else {
                        recyclerView3.f9669g0 = true;
                    }
                    break;
                }
                break;
            default:
                H h8 = recyclerView3.f9686v0;
                if (h8 != null) {
                    C0311j c0311j = (C0311j) h8;
                    ArrayList arrayList = c0311j.f5420h;
                    boolean z7 = !arrayList.isEmpty();
                    ArrayList arrayList2 = c0311j.f5422j;
                    boolean z8 = !arrayList2.isEmpty();
                    ArrayList arrayList3 = c0311j.f5423k;
                    boolean z9 = !arrayList3.isEmpty();
                    ArrayList arrayList4 = c0311j.f5421i;
                    boolean z10 = !arrayList4.isEmpty();
                    if (z7 || z8 || z10 || z9) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            boolean zHasNext = it.hasNext();
                            recyclerView2 = recyclerView3;
                            long j8 = c0311j.f5270d;
                            if (zHasNext) {
                                c0 c0Var = (c0) it.next();
                                View view = c0Var.f5353G;
                                ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                                c0311j.f5429q.add(c0Var);
                                viewPropertyAnimatorAnimate.setDuration(j8).alpha(0.0f).setListener(new C0306e(c0311j, c0Var, viewPropertyAnimatorAnimate, view)).start();
                                recyclerView3 = recyclerView2;
                            } else {
                                arrayList.clear();
                                if (z8) {
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList5.addAll(arrayList2);
                                    c0311j.f5425m.add(arrayList5);
                                    arrayList2.clear();
                                    RunnableC0305d runnableC0305d = new RunnableC0305d(c0311j, arrayList5, 0);
                                    if (z7) {
                                        View view2 = ((C0310i) arrayList5.get(0)).f5412a.f5353G;
                                        WeakHashMap weakHashMap = N.N.f4843a;
                                        view2.postOnAnimationDelayed(runnableC0305d, j8);
                                    } else {
                                        runnableC0305d.run();
                                    }
                                }
                                if (z9) {
                                    ArrayList arrayList6 = new ArrayList();
                                    arrayList6.addAll(arrayList3);
                                    c0311j.f5426n.add(arrayList6);
                                    arrayList3.clear();
                                    RunnableC0305d runnableC0305d2 = new RunnableC0305d(c0311j, arrayList6, 1);
                                    if (z7) {
                                        View view3 = ((C0309h) arrayList6.get(0)).f5399a.f5353G;
                                        WeakHashMap weakHashMap2 = N.N.f4843a;
                                        view3.postOnAnimationDelayed(runnableC0305d2, j8);
                                    } else {
                                        runnableC0305d2.run();
                                    }
                                }
                                if (z10) {
                                    ArrayList arrayList7 = new ArrayList();
                                    arrayList7.addAll(arrayList4);
                                    c0311j.f5424l.add(arrayList7);
                                    arrayList4.clear();
                                    RunnableC0305d runnableC0305d3 = new RunnableC0305d(c0311j, arrayList7, 2);
                                    if (z7 || z8 || z9) {
                                        if (!z7) {
                                            j8 = 0;
                                        }
                                        long jMax = Math.max(z8 ? c0311j.f5271e : 0L, z9 ? c0311j.f5272f : 0L) + j8;
                                        View view4 = ((c0) arrayList7.get(0)).f5353G;
                                        WeakHashMap weakHashMap3 = N.N.f4843a;
                                        view4.postOnAnimationDelayed(runnableC0305d3, jMax);
                                    } else {
                                        runnableC0305d3.run();
                                    }
                                }
                            }
                        }
                    } else {
                        recyclerView2 = recyclerView3;
                    }
                    recyclerView = recyclerView2;
                } else {
                    recyclerView = recyclerView3;
                }
                recyclerView.f9647T0 = false;
                break;
        }
    }
}
