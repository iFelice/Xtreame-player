package O1;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: O1.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0305d implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5372G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ ArrayList f5373H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0311j f5374I;

    public /* synthetic */ RunnableC0305d(C0311j c0311j, ArrayList arrayList, int i8) {
        this.f5372G = i8;
        this.f5374I = c0311j;
        this.f5373H = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f5372G;
        C0311j c0311j = this.f5374I;
        ArrayList<C0310i> arrayList = this.f5373H;
        switch (i8) {
            case 0:
                for (C0310i c0310i : arrayList) {
                    c0 c0Var = c0310i.f5412a;
                    c0311j.getClass();
                    View view = c0Var.f5353G;
                    int i9 = c0310i.f5415d - c0310i.f5413b;
                    int i10 = c0310i.f5416e - c0310i.f5414c;
                    if (i9 != 0) {
                        view.animate().translationX(0.0f);
                    }
                    if (i10 != 0) {
                        view.animate().translationY(0.0f);
                    }
                    ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                    c0311j.f5428p.add(c0Var);
                    viewPropertyAnimatorAnimate.setDuration(c0311j.f5271e).setListener(new C0307f(c0311j, c0Var, i9, view, i10, viewPropertyAnimatorAnimate)).start();
                }
                arrayList.clear();
                c0311j.f5425m.remove(arrayList);
                break;
            case 1:
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C0309h c0309h = (C0309h) it.next();
                    c0311j.getClass();
                    c0 c0Var2 = c0309h.f5399a;
                    View view2 = c0Var2 == null ? null : c0Var2.f5353G;
                    c0 c0Var3 = c0309h.f5400b;
                    View view3 = c0Var3 != null ? c0Var3.f5353G : null;
                    ArrayList arrayList2 = c0311j.f5430r;
                    long j8 = c0311j.f5272f;
                    if (view2 != null) {
                        ViewPropertyAnimator duration = view2.animate().setDuration(j8);
                        arrayList2.add(c0309h.f5399a);
                        duration.translationX(c0309h.f5403e - c0309h.f5401c);
                        duration.translationY(c0309h.f5404f - c0309h.f5402d);
                        duration.alpha(0.0f).setListener(new C0308g(c0311j, c0309h, duration, view2, 0)).start();
                    }
                    if (view3 != null) {
                        ViewPropertyAnimator viewPropertyAnimatorAnimate2 = view3.animate();
                        arrayList2.add(c0309h.f5400b);
                        viewPropertyAnimatorAnimate2.translationX(0.0f).translationY(0.0f).setDuration(j8).alpha(1.0f).setListener(new C0308g(c0311j, c0309h, viewPropertyAnimatorAnimate2, view3, 1)).start();
                    }
                }
                arrayList.clear();
                c0311j.f5426n.remove(arrayList);
                break;
            default:
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    c0 c0Var4 = (c0) it2.next();
                    c0311j.getClass();
                    View view4 = c0Var4.f5353G;
                    ViewPropertyAnimator viewPropertyAnimatorAnimate3 = view4.animate();
                    c0311j.f5427o.add(c0Var4);
                    viewPropertyAnimatorAnimate3.alpha(1.0f).setDuration(c0311j.f5269c).setListener(new C0306e(c0311j, c0Var4, view4, viewPropertyAnimatorAnimate3)).start();
                }
                arrayList.clear();
                c0311j.f5424l.remove(arrayList);
                break;
        }
    }
}
