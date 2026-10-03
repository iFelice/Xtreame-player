package X1;

import N.N;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import okhttp3.HttpUrl;
import p086l.C3022d;

/* JADX INFO: loaded from: classes.dex */
public abstract class q implements Cloneable {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final int[] f7588a0 = {2, 1, 3, 4};

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final U1.f f7589b0 = new U1.f(2);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final ThreadLocal f7590c0 = new ThreadLocal();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public ArrayList f7601Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ArrayList f7602R;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public Q3.b f7609Y;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f7591G = getClass().getName();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f7592H = -1;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f7593I = -1;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public TimeInterpolator f7594J = null;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final ArrayList f7595K = new ArrayList();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final ArrayList f7596L = new ArrayList();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public p096m2.i f7597M = new p096m2.i(5);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public p096m2.i f7598N = new p096m2.i(5);

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public v f7599O = null;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int[] f7600P = f7588a0;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final ArrayList f7603S = new ArrayList();

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f7604T = 0;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f7605U = false;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f7606V = false;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public ArrayList f7607W = null;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public ArrayList f7608X = new ArrayList();

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public U1.f f7610Z = f7589b0;

    public static void c(p096m2.i iVar, View view, x xVar) {
        ((p132r.f) iVar.f27224H).put(view, xVar);
        int id = view.getId();
        if (id >= 0) {
            if (((SparseArray) iVar.f27225I).indexOfKey(id) >= 0) {
                ((SparseArray) iVar.f27225I).put(id, null);
            } else {
                ((SparseArray) iVar.f27225I).put(id, view);
            }
        }
        WeakHashMap weakHashMap = N.f4843a;
        String strF = N.E.f(view);
        if (strF != null) {
            if (((p132r.f) iVar.f27227K).containsKey(strF)) {
                ((p132r.f) iVar.f27227K).put(strF, null);
            } else {
                ((p132r.f) iVar.f27227K).put(strF, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                p132r.j jVar = (p132r.j) iVar.f27226J;
                if (jVar.f29671G) {
                    int i8 = jVar.f29674J;
                    long[] jArr = jVar.f29672H;
                    Object[] objArr = jVar.f29673I;
                    int i9 = 0;
                    for (int i10 = 0; i10 < i8; i10++) {
                        Object obj = objArr[i10];
                        if (obj != p132r.k.f29675a) {
                            if (i10 != i9) {
                                jArr[i9] = jArr[i10];
                                objArr[i9] = obj;
                                objArr[i10] = null;
                            }
                            i9++;
                        }
                    }
                    jVar.f29671G = false;
                    jVar.f29674J = i9;
                }
                if (p140s.a.b(jVar.f29672H, jVar.f29674J, itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    ((p132r.j) iVar.f27226J).g(view, itemIdAtPosition);
                    return;
                }
                View view2 = (View) ((p132r.j) iVar.f27226J).d(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    ((p132r.j) iVar.f27226J).g(null, itemIdAtPosition);
                }
            }
        }
    }

    public static p132r.f p() {
        ThreadLocal threadLocal = f7590c0;
        p132r.f fVar = (p132r.f) threadLocal.get();
        if (fVar != null) {
            return fVar;
        }
        p132r.f fVar2 = new p132r.f();
        threadLocal.set(fVar2);
        return fVar2;
    }

    public static boolean u(x xVar, x xVar2, String str) {
        Object obj = xVar.f7624a.get(str);
        Object obj2 = xVar2.f7624a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void A(long j8) {
        this.f7593I = j8;
    }

    public void B(Q3.b bVar) {
        this.f7609Y = bVar;
    }

    public void C(TimeInterpolator timeInterpolator) {
        this.f7594J = timeInterpolator;
    }

    public void D(U1.f fVar) {
        if (fVar == null) {
            this.f7610Z = f7589b0;
        } else {
            this.f7610Z = fVar;
        }
    }

    public void F(long j8) {
        this.f7592H = j8;
    }

    public final void G() {
        if (this.f7604T == 0) {
            ArrayList arrayList = this.f7607W;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f7607W.clone();
                int size = arrayList2.size();
                for (int i8 = 0; i8 < size; i8++) {
                    ((p) arrayList2.get(i8)).c();
                }
            }
            this.f7606V = false;
        }
        this.f7604T++;
    }

    public String H(String str) {
        StringBuilder sbO = U2.o(str);
        sbO.append(getClass().getSimpleName());
        sbO.append("@");
        sbO.append(Integer.toHexString(hashCode()));
        sbO.append(": ");
        String string = sbO.toString();
        if (this.f7593I != -1) {
            string = p000a.r.i(p000a.r.l(string, "dur("), this.f7593I, ") ");
        }
        if (this.f7592H != -1) {
            string = p000a.r.i(p000a.r.l(string, "dly("), this.f7592H, ") ");
        }
        if (this.f7594J != null) {
            StringBuilder sbL = p000a.r.l(string, "interp(");
            sbL.append(this.f7594J);
            sbL.append(") ");
            string = sbL.toString();
        }
        ArrayList arrayList = this.f7595K;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f7596L;
        if (size <= 0 && arrayList2.size() <= 0) {
            return string;
        }
        String strA = U2.A(string, "tgts(");
        if (arrayList.size() > 0) {
            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                if (i8 > 0) {
                    strA = U2.A(strA, ", ");
                }
                StringBuilder sbO2 = U2.o(strA);
                sbO2.append(arrayList.get(i8));
                strA = sbO2.toString();
            }
        }
        if (arrayList2.size() > 0) {
            for (int i9 = 0; i9 < arrayList2.size(); i9++) {
                if (i9 > 0) {
                    strA = U2.A(strA, ", ");
                }
                StringBuilder sbO3 = U2.o(strA);
                sbO3.append(arrayList2.get(i9));
                strA = sbO3.toString();
            }
        }
        return U2.A(strA, ")");
    }

    public void a(p pVar) {
        if (this.f7607W == null) {
            this.f7607W = new ArrayList();
        }
        this.f7607W.add(pVar);
    }

    public void b(View view) {
        this.f7596L.add(view);
    }

    public abstract void d(x xVar);

    public final void e(View view, boolean z7) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            x xVar = new x();
            xVar.f7625b = view;
            if (z7) {
                g(xVar);
            } else {
                d(xVar);
            }
            xVar.f7626c.add(this);
            f(xVar);
            if (z7) {
                c(this.f7597M, view, xVar);
            } else {
                c(this.f7598N, view, xVar);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i8 = 0; i8 < viewGroup.getChildCount(); i8++) {
                e(viewGroup.getChildAt(i8), z7);
            }
        }
    }

    public abstract void g(x xVar);

    public final void h(ViewGroup viewGroup, boolean z7) {
        i(z7);
        ArrayList arrayList = this.f7595K;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f7596L;
        if (size <= 0 && arrayList2.size() <= 0) {
            e(viewGroup, z7);
            return;
        }
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            View viewFindViewById = viewGroup.findViewById(((Integer) arrayList.get(i8)).intValue());
            if (viewFindViewById != null) {
                x xVar = new x();
                xVar.f7625b = viewFindViewById;
                if (z7) {
                    g(xVar);
                } else {
                    d(xVar);
                }
                xVar.f7626c.add(this);
                f(xVar);
                if (z7) {
                    c(this.f7597M, viewFindViewById, xVar);
                } else {
                    c(this.f7598N, viewFindViewById, xVar);
                }
            }
        }
        for (int i9 = 0; i9 < arrayList2.size(); i9++) {
            View view = (View) arrayList2.get(i9);
            x xVar2 = new x();
            xVar2.f7625b = view;
            if (z7) {
                g(xVar2);
            } else {
                d(xVar2);
            }
            xVar2.f7626c.add(this);
            f(xVar2);
            if (z7) {
                c(this.f7597M, view, xVar2);
            } else {
                c(this.f7598N, view, xVar2);
            }
        }
    }

    public final void i(boolean z7) {
        if (z7) {
            ((p132r.f) this.f7597M.f27224H).clear();
            ((SparseArray) this.f7597M.f27225I).clear();
            ((p132r.j) this.f7597M.f27226J).b();
        } else {
            ((p132r.f) this.f7598N.f27224H).clear();
            ((SparseArray) this.f7598N.f27225I).clear();
            ((p132r.j) this.f7598N.f27226J).b();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public q clone() {
        try {
            q qVar = (q) super.clone();
            qVar.f7608X = new ArrayList();
            qVar.f7597M = new p096m2.i(5);
            qVar.f7598N = new p096m2.i(5);
            qVar.f7601Q = null;
            qVar.f7602R = null;
            return qVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator l(ViewGroup viewGroup, x xVar, x xVar2) {
        return null;
    }

    public void m(ViewGroup viewGroup, p096m2.i iVar, p096m2.i iVar2, ArrayList arrayList, ArrayList arrayList2) {
        Animator animatorL;
        int i8;
        View view;
        x xVar;
        Animator animator;
        x xVar2;
        p132r.f fVarP = p();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            x xVar3 = (x) arrayList.get(i9);
            x xVar4 = (x) arrayList2.get(i9);
            if (xVar3 != null && !xVar3.f7626c.contains(this)) {
                xVar3 = null;
            }
            if (xVar4 != null && !xVar4.f7626c.contains(this)) {
                xVar4 = null;
            }
            if (!(xVar3 == null && xVar4 == null) && ((xVar3 == null || xVar4 == null || s(xVar3, xVar4)) && (animatorL = l(viewGroup, xVar3, xVar4)) != null)) {
                String str = this.f7591G;
                if (xVar4 != null) {
                    view = xVar4.f7625b;
                    String[] strArrQ = q();
                    if (view == null || strArrQ == null || strArrQ.length <= 0) {
                        i8 = size;
                        animator = animatorL;
                        xVar2 = null;
                    } else {
                        xVar2 = new x();
                        xVar2.f7625b = view;
                        x xVar5 = (x) ((p132r.f) iVar2.f27224H).get(view);
                        i8 = size;
                        if (xVar5 != null) {
                            for (String str2 : strArrQ) {
                                xVar2.f7624a.put(str2, xVar5.f7624a.get(str2));
                            }
                        }
                        int i10 = fVarP.f29684I;
                        int i11 = 0;
                        while (true) {
                            if (i11 >= i10) {
                                animator = animatorL;
                                break;
                            }
                            o oVar = (o) fVarP.get((Animator) fVarP.f(i11));
                            if (oVar.f7585c != null && oVar.f7583a == view && oVar.f7584b.equals(str) && oVar.f7585c.equals(xVar2)) {
                                animator = null;
                                break;
                            }
                            i11++;
                        }
                    }
                    animatorL = animator;
                    xVar = xVar2;
                } else {
                    i8 = size;
                    view = xVar3.f7625b;
                    xVar = null;
                }
                if (animatorL != null) {
                    B b8 = z.f7627a;
                    F f8 = new F(viewGroup);
                    o oVar2 = new o();
                    oVar2.f7583a = view;
                    oVar2.f7584b = str;
                    oVar2.f7585c = xVar;
                    oVar2.f7586d = f8;
                    oVar2.f7587e = this;
                    fVarP.put(animatorL, oVar2);
                    this.f7608X.add(animatorL);
                }
            } else {
                i8 = size;
            }
            i9++;
            size = i8;
        }
        for (int i12 = 0; i12 < sparseIntArray.size(); i12++) {
            Animator animator2 = (Animator) this.f7608X.get(sparseIntArray.keyAt(i12));
            animator2.setStartDelay(animator2.getStartDelay() + (((long) sparseIntArray.valueAt(i12)) - Long.MAX_VALUE));
        }
    }

    public final void n() {
        int i8 = this.f7604T - 1;
        this.f7604T = i8;
        if (i8 == 0) {
            ArrayList arrayList = this.f7607W;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f7607W.clone();
                int size = arrayList2.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((p) arrayList2.get(i9)).b(this);
                }
            }
            for (int i10 = 0; i10 < ((p132r.j) this.f7597M.f27226J).h(); i10++) {
                View view = (View) ((p132r.j) this.f7597M.f27226J).i(i10);
                if (view != null) {
                    WeakHashMap weakHashMap = N.f4843a;
                    view.setHasTransientState(false);
                }
            }
            for (int i11 = 0; i11 < ((p132r.j) this.f7598N.f27226J).h(); i11++) {
                View view2 = (View) ((p132r.j) this.f7598N.f27226J).i(i11);
                if (view2 != null) {
                    WeakHashMap weakHashMap2 = N.f4843a;
                    view2.setHasTransientState(false);
                }
            }
            this.f7606V = true;
        }
    }

    public final x o(View view, boolean z7) {
        v vVar = this.f7599O;
        if (vVar != null) {
            return vVar.o(view, z7);
        }
        ArrayList arrayList = z7 ? this.f7601Q : this.f7602R;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size) {
                i8 = -1;
                break;
            }
            x xVar = (x) arrayList.get(i8);
            if (xVar == null) {
                return null;
            }
            if (xVar.f7625b == view) {
                break;
            }
            i8++;
        }
        if (i8 >= 0) {
            return (x) (z7 ? this.f7602R : this.f7601Q).get(i8);
        }
        return null;
    }

    public String[] q() {
        return null;
    }

    public final x r(View view, boolean z7) {
        v vVar = this.f7599O;
        if (vVar != null) {
            return vVar.r(view, z7);
        }
        return (x) ((p132r.f) (z7 ? this.f7597M : this.f7598N).f27224H).get(view);
    }

    public boolean s(x xVar, x xVar2) {
        if (xVar == null || xVar2 == null) {
            return false;
        }
        String[] strArrQ = q();
        if (strArrQ == null) {
            Iterator it = xVar.f7624a.keySet().iterator();
            while (it.hasNext()) {
                if (u(xVar, xVar2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrQ) {
            if (!u(xVar, xVar2, str)) {
            }
        }
        return false;
        return true;
    }

    public final boolean t(View view) {
        int id = view.getId();
        ArrayList arrayList = this.f7595K;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f7596L;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    public final String toString() {
        return H(HttpUrl.FRAGMENT_ENCODE_SET);
    }

    public void v(View view) {
        if (this.f7606V) {
            return;
        }
        p132r.f fVarP = p();
        int i8 = fVarP.f29684I;
        B b8 = z.f7627a;
        WindowId windowId = view.getWindowId();
        for (int i9 = i8 - 1; i9 >= 0; i9--) {
            o oVar = (o) fVarP.j(i9);
            if (oVar.f7583a != null) {
                G g8 = oVar.f7586d;
                if ((g8 instanceof F) && ((F) g8).f7549a.equals(windowId)) {
                    ((Animator) fVarP.f(i9)).pause();
                }
            }
        }
        ArrayList arrayList = this.f7607W;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.f7607W.clone();
            int size = arrayList2.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((p) arrayList2.get(i10)).a();
            }
        }
        this.f7605U = true;
    }

    public void w(p pVar) {
        ArrayList arrayList = this.f7607W;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(pVar);
        if (this.f7607W.size() == 0) {
            this.f7607W = null;
        }
    }

    public void x(View view) {
        this.f7596L.remove(view);
    }

    public void y(ViewGroup viewGroup) {
        if (this.f7605U) {
            if (!this.f7606V) {
                p132r.f fVarP = p();
                int i8 = fVarP.f29684I;
                B b8 = z.f7627a;
                WindowId windowId = viewGroup.getWindowId();
                for (int i9 = i8 - 1; i9 >= 0; i9--) {
                    o oVar = (o) fVarP.j(i9);
                    if (oVar.f7583a != null) {
                        G g8 = oVar.f7586d;
                        if ((g8 instanceof F) && ((F) g8).f7549a.equals(windowId)) {
                            ((Animator) fVarP.f(i9)).resume();
                        }
                    }
                }
                ArrayList arrayList = this.f7607W;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f7607W.clone();
                    int size = arrayList2.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        ((p) arrayList2.get(i10)).d();
                    }
                }
            }
            this.f7605U = false;
        }
    }

    public void z() {
        G();
        p132r.f fVarP = p();
        for (Animator animator : this.f7608X) {
            if (fVarP.containsKey(animator)) {
                G();
                if (animator != null) {
                    animator.addListener(new n(this, fVarP));
                    long j8 = this.f7593I;
                    if (j8 >= 0) {
                        animator.setDuration(j8);
                    }
                    long j9 = this.f7592H;
                    if (j9 >= 0) {
                        animator.setStartDelay(j9);
                    }
                    TimeInterpolator timeInterpolator = this.f7594J;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new C3022d(this, 1));
                    animator.start();
                }
            }
        }
        this.f7608X.clear();
        n();
    }

    public void E() {
    }

    public void f(x xVar) {
    }
}
