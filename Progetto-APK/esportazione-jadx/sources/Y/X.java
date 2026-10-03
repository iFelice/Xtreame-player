package Y;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class X extends Z {
    public static boolean s(Transition transition) {
        return (Z.h(transition.getTargetIds()) && Z.h(transition.getTargetNames()) && Z.h(transition.getTargetTypes())) ? false : true;
    }

    @Override // Y.Z
    public final void a(View view, Object obj) {
        ((Transition) obj).addTarget(view);
    }

    @Override // Y.Z
    public final void b(Object obj, ArrayList arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i8 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i8 < transitionCount) {
                b(transitionSet.getTransitionAt(i8), arrayList);
                i8++;
            }
            return;
        }
        if (s(transition) || !Z.h(transition.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i8 < size) {
            transition.addTarget((View) arrayList.get(i8));
            i8++;
        }
    }

    @Override // Y.Z
    public final void c(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // Y.Z
    public final boolean e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // Y.Z
    public final Object f(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // Y.Z
    public final Object i(Object obj, Object obj2, Object obj3) {
        Transition ordering = (Transition) obj;
        Transition transition = (Transition) obj2;
        Transition transition2 = (Transition) obj3;
        if (ordering != null && transition != null) {
            ordering = new TransitionSet().addTransition(ordering).addTransition(transition).setOrdering(1);
        } else if (ordering == null) {
            ordering = transition != null ? transition : null;
        }
        if (transition2 == null) {
            return ordering;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (ordering != null) {
            transitionSet.addTransition(ordering);
        }
        transitionSet.addTransition(transition2);
        return transitionSet;
    }

    @Override // Y.Z
    public final Object j(Object obj, Object obj2) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        transitionSet.addTransition((Transition) obj2);
        return transitionSet;
    }

    @Override // Y.Z
    public final void k(Object obj, View view, ArrayList arrayList) {
        ((Transition) obj).addListener(new U(view, arrayList));
    }

    @Override // Y.Z
    public final void l(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2) {
        ((Transition) obj).addListener(new V(this, obj2, arrayList, obj3, arrayList2));
    }

    @Override // Y.Z
    public final void m(View view, Object obj) {
        if (view != null) {
            Rect rect = new Rect();
            Z.g(rect, view);
            ((Transition) obj).setEpicenterCallback(new T(rect, 0));
        }
    }

    @Override // Y.Z
    public final void n(Object obj, Rect rect) {
        ((Transition) obj).setEpicenterCallback(new T(rect, 1));
    }

    @Override // Y.Z
    public final void o(Object obj, K.a aVar) {
        ((Transition) obj).addListener(new W(aVar));
    }

    @Override // Y.Z
    public final void p(Object obj, View view, ArrayList arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            Z.d(targets, (View) arrayList.get(i8));
        }
        targets.add(view);
        arrayList.add(view);
        b(transitionSet, arrayList);
    }

    @Override // Y.Z
    public final void q(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            t(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // Y.Z
    public final Object r(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    public final void t(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        int i8 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i8 < transitionCount) {
                t(transitionSet.getTransitionAt(i8), arrayList, arrayList2);
                i8++;
            }
            return;
        }
        if (s(transition) || (targets = transition.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i8 < size) {
            transition.addTarget((View) arrayList2.get(i8));
            i8++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transition.removeTarget((View) arrayList.get(size2));
        }
    }
}
