package X1;

import android.animation.Animator;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowId;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class s implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public q f7611G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ViewGroup f7612H;

    /* JADX WARN: Code duplicated, block: B:101:0x020b  */
    /* JADX WARN: Code duplicated, block: B:103:0x0219  */
    /* JADX WARN: Code duplicated, block: B:104:0x0225  */
    /* JADX WARN: Code duplicated, block: B:108:0x0239  */
    /* JADX WARN: Code duplicated, block: B:134:0x01e5 A[EDGE_INSN: B:134:0x01e5->B:91:0x01e5 BREAK  A[LOOP:1: B:19:0x0087->B:90:0x01dc], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x004e  */
    /* JADX WARN: Code duplicated, block: B:168:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x0058 A[LOOP:0: B:15:0x0052->B:17:0x0058, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x008c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0090  */
    /* JADX WARN: Code duplicated, block: B:25:0x0093  */
    /* JADX WARN: Code duplicated, block: B:27:0x0096  */
    /* JADX WARN: Code duplicated, block: B:30:0x009c  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:48:0x010c  */
    /* JADX WARN: Code duplicated, block: B:61:0x0151  */
    /* JADX WARN: Code duplicated, block: B:63:0x015f  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:94:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:96:0x01f8  */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ArrayList arrayList;
        q qVar;
        p096m2.i iVar;
        p096m2.i iVar2;
        p132r.f fVar;
        p132r.f fVar2;
        int i8;
        int[] iArr;
        int i9;
        int i10;
        p132r.f fVarP;
        int i11;
        Animator animator;
        o oVar;
        View view;
        x xVar;
        x xVar2;
        int i12;
        p096m2.i iVar3;
        int i13;
        View view2;
        x xVar3;
        View view3;
        p132r.f fVar3;
        int i14;
        int i15;
        View view4;
        View view5;
        SparseArray sparseArray;
        int size;
        int i16;
        View view6;
        View view7;
        p132r.j jVar;
        int iH;
        int i17;
        View view8;
        p096m2.i iVar4;
        Iterator it;
        ViewGroup viewGroup = this.f7612H;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        ArrayList arrayList2 = t.f7614b;
        ViewGroup viewGroup2 = this.f7612H;
        int i18 = 1;
        if (!arrayList2.remove(viewGroup2)) {
            return true;
        }
        p132r.f fVarA = t.a();
        ArrayList arrayList3 = (ArrayList) fVarA.get(viewGroup2);
        if (arrayList3 != null) {
            arrayList = arrayList3.size() > 0 ? new ArrayList(arrayList3) : null;
            qVar = this.f7611G;
            arrayList3.add(qVar);
            qVar.a(new C0388g(1, this, fVarA));
            qVar.h(viewGroup2, false);
            if (arrayList != null) {
                it = arrayList.iterator();
                while (it.hasNext()) {
                    ((q) it.next()).y(viewGroup2);
                }
            }
            qVar.f7601Q = new ArrayList();
            qVar.f7602R = new ArrayList();
            iVar = qVar.f7597M;
            iVar2 = qVar.f7598N;
            fVar = new p132r.f((p132r.f) iVar.f27224H);
            fVar2 = new p132r.f((p132r.f) iVar2.f27224H);
            i8 = 0;
            while (true) {
                iArr = qVar.f7600P;
                if (i8 < iArr.length) {
                    break;
                }
                i12 = iArr[i8];
                if (i12 != i18) {
                    iVar3 = iVar2;
                    for (i13 = fVar.f29684I - 1; i13 >= 0; i13--) {
                        view2 = (View) fVar.f(i13);
                        if (view2 == null && qVar.t(view2) && (xVar3 = (x) fVar2.remove(view2)) != null && (view3 = xVar3.f7625b) != null && qVar.t(view3)) {
                            qVar.f7601Q.add((x) fVar.h(i13));
                            qVar.f7602R.add(xVar3);
                        }
                    }
                } else if (i12 != 2) {
                    iVar3 = iVar2;
                    fVar3 = (p132r.f) iVar.f27227K;
                    p132r.f fVar4 = (p132r.f) iVar3.f27227K;
                    i14 = fVar3.f29684I;
                    for (i15 = 0; i15 < i14; i15++) {
                        view4 = (View) fVar3.j(i15);
                        if (view4 == null && qVar.t(view4) && (view5 = (View) fVar4.get(fVar3.f(i15))) != null && qVar.t(view5)) {
                            x xVar4 = (x) fVar.get(view4);
                            x xVar5 = (x) fVar2.get(view5);
                            if (xVar4 != null && xVar5 != null) {
                                qVar.f7601Q.add(xVar4);
                                qVar.f7602R.add(xVar5);
                                fVar.remove(view4);
                                fVar2.remove(view5);
                            }
                        }
                    }
                } else if (i12 != 3) {
                    if (i12 == 4) {
                        jVar = (p132r.j) iVar.f27226J;
                        p132r.j jVar2 = (p132r.j) iVar2.f27226J;
                        iH = jVar.h();
                        i17 = 0;
                        while (i17 < iH) {
                            view8 = (View) jVar.i(i17);
                            if (view8 == null && qVar.t(view8)) {
                                iVar4 = iVar2;
                                View view9 = (View) jVar2.d(jVar.f(i17));
                                if (view9 != null && qVar.t(view9)) {
                                    x xVar6 = (x) fVar.get(view8);
                                    x xVar7 = (x) fVar2.get(view9);
                                    if (xVar6 != null && xVar7 != null) {
                                        qVar.f7601Q.add(xVar6);
                                        qVar.f7602R.add(xVar7);
                                        fVar.remove(view8);
                                        fVar2.remove(view9);
                                    }
                                }
                            } else {
                                iVar4 = iVar2;
                            }
                            i17++;
                            iVar2 = iVar4;
                        }
                    }
                    iVar3 = iVar2;
                } else {
                    sparseArray = (SparseArray) iVar.f27225I;
                    iVar3 = iVar2;
                    SparseArray sparseArray2 = (SparseArray) iVar3.f27225I;
                    size = sparseArray.size();
                    for (i16 = 0; i16 < size; i16++) {
                        view6 = (View) sparseArray.valueAt(i16);
                        if (view6 == null && qVar.t(view6) && (view7 = (View) sparseArray2.get(sparseArray.keyAt(i16))) != null && qVar.t(view7)) {
                            x xVar8 = (x) fVar.get(view6);
                            x xVar9 = (x) fVar2.get(view7);
                            if (xVar8 != null && xVar9 != null) {
                                qVar.f7601Q.add(xVar8);
                                qVar.f7602R.add(xVar9);
                                fVar.remove(view6);
                                fVar2.remove(view7);
                            }
                        }
                    }
                }
                i8++;
                iVar2 = iVar3;
                i18 = 1;
            }
            for (i9 = 0; i9 < fVar.f29684I; i9++) {
                xVar2 = (x) fVar.j(i9);
                if (qVar.t(xVar2.f7625b)) {
                    qVar.f7601Q.add(xVar2);
                    qVar.f7602R.add(null);
                }
            }
            for (i10 = 0; i10 < fVar2.f29684I; i10++) {
                xVar = (x) fVar2.j(i10);
                if (qVar.t(xVar.f7625b)) {
                    qVar.f7602R.add(xVar);
                    qVar.f7601Q.add(null);
                }
            }
            fVarP = q.p();
            int i19 = fVarP.f29684I;
            B b8 = z.f7627a;
            WindowId windowId = viewGroup2.getWindowId();
            for (i11 = i19 - 1; i11 >= 0; i11--) {
                animator = (Animator) fVarP.f(i11);
                if (animator == null && (oVar = (o) fVarP.get(animator)) != null && (view = oVar.f7583a) != null) {
                    G g8 = oVar.f7586d;
                    if ((g8 instanceof F) && ((F) g8).f7549a.equals(windowId)) {
                        x xVarR = qVar.r(view, true);
                        x xVarO = qVar.o(view, true);
                        if ((xVarR != null || xVarO != null) && oVar.f7587e.s(oVar.f7585c, xVarO)) {
                            if (animator.isRunning() || animator.isStarted()) {
                                animator.cancel();
                            } else {
                                fVarP.remove(animator);
                            }
                        }
                    }
                }
            }
            qVar.m(viewGroup2, qVar.f7597M, qVar.f7598N, qVar.f7601Q, qVar.f7602R);
            qVar.z();
            return true;
        }
        arrayList3 = new ArrayList();
        fVarA.put(viewGroup2, arrayList3);
        qVar = this.f7611G;
        arrayList3.add(qVar);
        qVar.a(new C0388g(1, this, fVarA));
        qVar.h(viewGroup2, false);
        if (arrayList != null) {
            it = arrayList.iterator();
            while (it.hasNext()) {
                ((q) it.next()).y(viewGroup2);
            }
        }
        qVar.f7601Q = new ArrayList();
        qVar.f7602R = new ArrayList();
        iVar = qVar.f7597M;
        iVar2 = qVar.f7598N;
        fVar = new p132r.f((p132r.f) iVar.f27224H);
        fVar2 = new p132r.f((p132r.f) iVar2.f27224H);
        i8 = 0;
        while (true) {
            iArr = qVar.f7600P;
            if (i8 < iArr.length) {
                break;
                break;
            }
            i12 = iArr[i8];
            if (i12 != i18) {
                iVar3 = iVar2;
                while (i13 >= 0) {
                    view2 = (View) fVar.f(i13);
                    if (view2 == null) {
                    }
                }
            } else if (i12 != 2) {
                iVar3 = iVar2;
                fVar3 = (p132r.f) iVar.f27227K;
                p132r.f fVar5 = (p132r.f) iVar3.f27227K;
                i14 = fVar3.f29684I;
                while (i15 < i14) {
                    view4 = (View) fVar3.j(i15);
                    if (view4 == null) {
                    }
                }
            } else if (i12 != 3) {
                if (i12 == 4) {
                    jVar = (p132r.j) iVar.f27226J;
                    p132r.j jVar3 = (p132r.j) iVar2.f27226J;
                    iH = jVar.h();
                    i17 = 0;
                    while (i17 < iH) {
                        view8 = (View) jVar.i(i17);
                        if (view8 == null) {
                            iVar4 = iVar2;
                        } else {
                            iVar4 = iVar2;
                        }
                        i17++;
                        iVar2 = iVar4;
                    }
                }
                iVar3 = iVar2;
            } else {
                sparseArray = (SparseArray) iVar.f27225I;
                iVar3 = iVar2;
                SparseArray sparseArray3 = (SparseArray) iVar3.f27225I;
                size = sparseArray.size();
                while (i16 < size) {
                    view6 = (View) sparseArray.valueAt(i16);
                    if (view6 == null) {
                    }
                }
            }
            i8++;
            iVar2 = iVar3;
            i18 = 1;
        }
        while (i9 < fVar.f29684I) {
            xVar2 = (x) fVar.j(i9);
            if (qVar.t(xVar2.f7625b)) {
                qVar.f7601Q.add(xVar2);
                qVar.f7602R.add(null);
            }
        }
        while (i10 < fVar2.f29684I) {
            xVar = (x) fVar2.j(i10);
            if (qVar.t(xVar.f7625b)) {
                qVar.f7602R.add(xVar);
                qVar.f7601Q.add(null);
            }
        }
        fVarP = q.p();
        int i110 = fVarP.f29684I;
        B b9 = z.f7627a;
        WindowId windowId2 = viewGroup2.getWindowId();
        while (i11 >= 0) {
            animator = (Animator) fVarP.f(i11);
            if (animator == null) {
            }
        }
        qVar.m(viewGroup2, qVar.f7597M, qVar.f7598N, qVar.f7601Q, qVar.f7602R);
        qVar.z();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewGroup viewGroup = this.f7612H;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        ArrayList arrayList = t.f7614b;
        ViewGroup viewGroup2 = this.f7612H;
        arrayList.remove(viewGroup2);
        ArrayList arrayList2 = (ArrayList) t.a().get(viewGroup2);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((q) it.next()).y(viewGroup2);
            }
        }
        this.f7611G.i(true);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
