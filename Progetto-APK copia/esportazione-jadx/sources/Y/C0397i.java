package Y;

import N.ViewTreeObserverOnPreDrawListenerC0271u;
import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import p079k.RunnableC3015g;
import p086l.RunnableC3036k;

/* JADX INFO: renamed from: Y.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0397i extends e0 {
    public static void i(ArrayList arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.isTransitionGroup()) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = viewGroup.getChildAt(i8);
            if (childAt.getVisibility() == 0) {
                i(arrayList, childAt);
            }
        }
    }

    public static void j(View view, p132r.f fVar) {
        WeakHashMap weakHashMap = N.N.f4843a;
        String strF = N.E.f(view);
        if (strF != null) {
            fVar.put(strF, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                View childAt = viewGroup.getChildAt(i8);
                if (childAt.getVisibility() == 0) {
                    j(childAt, fVar);
                }
            }
        }
    }

    public static void k(p132r.f fVar, Collection collection) {
        Iterator it = fVar.entrySet().iterator();
        while (it.hasNext()) {
            View view = (View) ((Map.Entry) it.next()).getValue();
            WeakHashMap weakHashMap = N.N.f4843a;
            if (!collection.contains(N.E.f(view))) {
                it.remove();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00da  */
    @Override // Y.e0
    public final void b(ArrayList arrayList, boolean z7) {
        d0 d0Var;
        HashMap map;
        String str;
        ArrayList arrayList2;
        ArrayList<C0395g> arrayList3;
        d0 d0Var2;
        String str2;
        d0 d0Var3;
        String str3;
        Iterator it;
        d0 d0Var4;
        View view;
        Rect rect;
        View view2;
        Rect rect2;
        d0 d0Var5;
        d0 d0Var6;
        HashMap map2;
        String str4;
        View view3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        int i8;
        View view4;
        Iterator it2 = arrayList.iterator();
        d0 d0Var7 = null;
        d0 d0Var8 = null;
        while (it2.hasNext()) {
            d0 d0Var9 = (d0) it2.next();
            int iF = A0.O.f(d0Var9.f7863c.f7963m0);
            int iB = p156u.h.b(d0Var9.f7861a);
            if (iB != 0) {
                if (iB != 1) {
                    if (iB == 2 || iB == 3) {
                    }
                } else if (iF != 2) {
                    d0Var8 = d0Var9;
                }
            }
            if (iF == 2 && d0Var7 == null) {
                d0Var7 = d0Var9;
            }
        }
        String str5 = "FragmentManager";
        String str6 = " to ";
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Executing operations from " + d0Var7 + " to " + d0Var8);
        }
        ArrayList arrayList10 = new ArrayList();
        ArrayList<C0396h> arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList(arrayList);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((d0) U2.g(arrayList, 1)).f7863c;
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            C0405q c0405q = ((d0) it3.next()).f7863c.f7966p0;
            C0405q c0405q2 = abstractComponentCallbacksC0406s.f7966p0;
            c0405q.f7916b = c0405q2.f7916b;
            c0405q.f7917c = c0405q2.f7917c;
            c0405q.f7918d = c0405q2.f7918d;
            c0405q.f7919e = c0405q2.f7919e;
        }
        Iterator it4 = arrayList.iterator();
        while (true) {
            boolean z8 = false;
            if (!it4.hasNext()) {
                break;
            }
            d0 d0Var10 = (d0) it4.next();
            J.c cVar = new J.c();
            d0Var10.d();
            HashSet hashSet = d0Var10.f7865e;
            hashSet.add(cVar);
            C0395g c0395g = new C0395g(d0Var10, cVar);
            c0395g.f7885d = false;
            c0395g.f7884c = z7;
            arrayList10.add(c0395g);
            J.c cVar2 = new J.c();
            d0Var10.d();
            hashSet.add(cVar2);
            if (z7) {
                if (d0Var10 == d0Var7) {
                    z8 = true;
                }
            } else if (d0Var10 == d0Var8) {
                z8 = true;
            }
            arrayList11.add(new C0396h(d0Var10, cVar2, z7, z8));
            d0Var10.f7864d.add(new K.a(this, arrayList12, d0Var10, 3));
        }
        HashMap map3 = new HashMap();
        Iterator it5 = arrayList11.iterator();
        Z z9 = null;
        while (it5.hasNext()) {
            C0396h c0396h = (C0396h) it5.next();
            if (!c0396h.g()) {
                Object obj = c0396h.f7887c;
                Z zS = c0396h.s(obj);
                Object obj2 = c0396h.f7889e;
                Iterator it6 = it5;
                Z zS2 = c0396h.s(obj2);
                ArrayList arrayList13 = arrayList12;
                ArrayList arrayList14 = arrayList10;
                if (zS != null && zS2 != null && zS != zS2) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + ((d0) c0396h.f24905a).f7863c + " returned Transition " + obj + " which uses a different Transition  type than its shared element transition " + obj2);
                }
                if (zS == null) {
                    zS = zS2;
                }
                if (z9 == null) {
                    z9 = zS;
                } else if (zS != null && z9 != zS) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + ((d0) c0396h.f24905a).f7863c + " returned Transition " + obj + " which uses a different Transition  type than other Fragments.");
                }
                it5 = it6;
                arrayList12 = arrayList13;
                arrayList10 = arrayList14;
            }
        }
        ArrayList arrayList15 = arrayList12;
        ArrayList arrayList16 = arrayList10;
        ViewGroup viewGroup = this.f7873a;
        if (z9 == null) {
            for (C0396h c0396h2 : arrayList11) {
                map3.put((d0) c0396h2.f24905a, Boolean.FALSE);
                c0396h2.c();
            }
            d0Var = d0Var7;
            d0Var2 = d0Var8;
            map = map3;
            str = " to ";
            arrayList2 = arrayList15;
            arrayList3 = arrayList16;
            str2 = "FragmentManager";
        } else {
            View view5 = new View(viewGroup.getContext());
            Rect rect3 = new Rect();
            ArrayList arrayList17 = new ArrayList();
            ArrayList arrayList18 = new ArrayList();
            p132r.f fVar = new p132r.f(0);
            Iterator it7 = arrayList11.iterator();
            Object obj3 = null;
            View view6 = null;
            boolean z10 = false;
            while (it7.hasNext()) {
                ArrayList arrayList19 = arrayList11;
                Object obj4 = ((C0396h) it7.next()).f7889e;
                if (obj4 == null || d0Var7 == null || d0Var8 == null) {
                    rect2 = rect3;
                    d0Var5 = d0Var7;
                    d0Var6 = d0Var8;
                    map2 = map3;
                    str4 = str6;
                    view3 = view6;
                    arrayList4 = arrayList18;
                    arrayList5 = arrayList17;
                } else {
                    Object objR = z9.r(z9.f(obj4));
                    AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = d0Var8.f7863c;
                    C0405q c0405q3 = abstractComponentCallbacksC0406s2.f7966p0;
                    if (c0405q3 == null || (arrayList6 = c0405q3.f7921g) == null) {
                        arrayList6 = new ArrayList();
                    }
                    Rect rect4 = rect3;
                    AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s3 = d0Var7.f7863c;
                    C0405q c0405q4 = abstractComponentCallbacksC0406s3.f7966p0;
                    if (c0405q4 == null || (arrayList7 = c0405q4.f7921g) == null) {
                        arrayList7 = new ArrayList();
                    }
                    str4 = str6;
                    C0405q c0405q5 = abstractComponentCallbacksC0406s3.f7966p0;
                    if (c0405q5 == null || (arrayList8 = c0405q5.f7922h) == null) {
                        arrayList8 = new ArrayList();
                    }
                    HashMap map4 = map3;
                    int i9 = 0;
                    while (i9 < arrayList8.size()) {
                        int iIndexOf = arrayList6.indexOf(arrayList8.get(i9));
                        ArrayList arrayList20 = arrayList8;
                        if (iIndexOf != -1) {
                            arrayList6.set(iIndexOf, (String) arrayList7.get(i9));
                        }
                        i9++;
                        arrayList8 = arrayList20;
                    }
                    C0405q c0405q6 = abstractComponentCallbacksC0406s2.f7966p0;
                    if (c0405q6 == null || (arrayList9 = c0405q6.f7922h) == null) {
                        arrayList9 = new ArrayList();
                    }
                    int i10 = 0;
                    for (int size = arrayList6.size(); i10 < size; size = size) {
                        fVar.put((String) arrayList6.get(i10), (String) arrayList9.get(i10));
                        i10++;
                    }
                    if (Log.isLoggable(str5, 2)) {
                        Log.v(str5, ">>> entering view names <<<");
                        for (Iterator it8 = arrayList9.iterator(); it8.hasNext(); it8 = it8) {
                            Log.v(str5, "Name: " + ((String) it8.next()));
                        }
                        Log.v(str5, ">>> exiting view names <<<");
                        for (Iterator it9 = arrayList6.iterator(); it9.hasNext(); it9 = it9) {
                            Log.v(str5, "Name: " + ((String) it9.next()));
                        }
                    }
                    p132r.f fVar2 = new p132r.f(0);
                    j(abstractComponentCallbacksC0406s3.f7963m0, fVar2);
                    fVar2.m(arrayList6);
                    fVar.m(fVar2.keySet());
                    p132r.f fVar3 = new p132r.f(0);
                    j(abstractComponentCallbacksC0406s2.f7963m0, fVar3);
                    fVar3.m(arrayList9);
                    fVar3.m(fVar.values());
                    X x7 = S.f7790a;
                    for (int i11 = fVar.f29684I - 1; i11 >= 0; i11--) {
                        if (!fVar3.containsKey((String) fVar.j(i11))) {
                            fVar.h(i11);
                        }
                    }
                    k(fVar2, fVar.keySet());
                    k(fVar3, fVar.values());
                    if (fVar.isEmpty()) {
                        arrayList17.clear();
                        arrayList18.clear();
                        fVar = fVar;
                        d0Var5 = d0Var7;
                        d0Var6 = d0Var8;
                        str5 = str5;
                        arrayList15 = arrayList15;
                        arrayList16 = arrayList16;
                        arrayList19 = arrayList19;
                        rect2 = rect4;
                        map2 = map4;
                        obj3 = null;
                        arrayList4 = arrayList18;
                        arrayList5 = arrayList17;
                    } else {
                        View view7 = view6;
                        arrayList4 = arrayList18;
                        d0 d0Var11 = d0Var8;
                        d0 d0Var12 = d0Var8;
                        arrayList5 = arrayList17;
                        ArrayList arrayList21 = arrayList6;
                        d0 d0Var13 = d0Var7;
                        view3 = view7;
                        rect2 = rect4;
                        ViewTreeObserverOnPreDrawListenerC0271u.a(viewGroup, new RunnableC0394f(this, d0Var11, d0Var7, z7, fVar3));
                        arrayList5.addAll(fVar2.values());
                        if (arrayList21.isEmpty()) {
                            i8 = 0;
                        } else {
                            i8 = 0;
                            View view8 = (View) fVar2.get((String) arrayList21.get(0));
                            z9.m(view8, objR);
                            view3 = view8;
                        }
                        arrayList4.addAll(fVar3.values());
                        if (!arrayList9.isEmpty() && (view4 = (View) fVar3.get((String) arrayList9.get(i8))) != null) {
                            ViewTreeObserverOnPreDrawListenerC0271u.a(viewGroup, new RunnableC3015g(this, z9, view4, rect2, 1));
                            z10 = true;
                        }
                        z9.p(objR, view5, arrayList5);
                        z9.l(objR, null, null, objR, arrayList4);
                        Boolean bool = Boolean.TRUE;
                        map2 = map4;
                        d0Var5 = d0Var13;
                        map2.put(d0Var5, bool);
                        d0Var6 = d0Var12;
                        map2.put(d0Var6, bool);
                        obj3 = objR;
                    }
                    map3 = map2;
                    d0Var7 = d0Var5;
                    arrayList17 = arrayList5;
                    arrayList18 = arrayList4;
                    arrayList11 = arrayList19;
                    arrayList16 = arrayList16;
                    rect3 = rect2;
                    str6 = str4;
                    fVar = fVar;
                    str5 = str5;
                    arrayList15 = arrayList15;
                    d0Var8 = d0Var6;
                }
                view6 = view3;
                map3 = map2;
                d0Var7 = d0Var5;
                arrayList17 = arrayList5;
                arrayList18 = arrayList4;
                arrayList11 = arrayList19;
                arrayList16 = arrayList16;
                rect3 = rect2;
                str6 = str4;
                fVar = fVar;
                str5 = str5;
                arrayList15 = arrayList15;
                d0Var8 = d0Var6;
            }
            p132r.f fVar4 = fVar;
            ArrayList<C0396h> arrayList22 = arrayList11;
            Rect rect5 = rect3;
            d0Var = d0Var7;
            d0 d0Var14 = d0Var8;
            map = map3;
            String str7 = str5;
            str = str6;
            View view9 = view6;
            arrayList2 = arrayList15;
            arrayList3 = arrayList16;
            ArrayList arrayList23 = arrayList18;
            ArrayList arrayList24 = arrayList17;
            ArrayList arrayList25 = new ArrayList();
            Iterator it10 = arrayList22.iterator();
            Object objJ = null;
            Object objJ2 = null;
            while (it10.hasNext()) {
                C0396h c0396h3 = (C0396h) it10.next();
                if (c0396h3.g()) {
                    map.put((d0) c0396h3.f24905a, Boolean.FALSE);
                    c0396h3.c();
                } else {
                    Object objF = z9.f(c0396h3.f7887c);
                    d0 d0Var15 = (d0) c0396h3.f24905a;
                    boolean z11 = obj3 != null && (d0Var15 == d0Var || d0Var15 == d0Var14);
                    if (objF == null) {
                        if (!z11) {
                            map.put(d0Var15, Boolean.FALSE);
                            c0396h3.c();
                        }
                        it = it10;
                        d0Var4 = d0Var14;
                        arrayList24 = arrayList24;
                        view = view5;
                        rect = rect5;
                        view2 = view9;
                    } else {
                        it = it10;
                        ArrayList arrayList26 = new ArrayList();
                        d0Var4 = d0Var14;
                        i(arrayList26, d0Var15.f7863c.f7963m0);
                        if (z11) {
                            if (d0Var15 == d0Var) {
                                arrayList26.removeAll(arrayList24);
                            } else {
                                arrayList26.removeAll(arrayList23);
                            }
                        }
                        if (arrayList26.isEmpty()) {
                            z9.a(view5, objF);
                            view = view5;
                        } else {
                            z9.b(objF, arrayList26);
                            z9.l(objF, objF, arrayList26, null, null);
                            view = view5;
                            if (d0Var15.f7861a == 3) {
                                arrayList2.remove(d0Var15);
                                ArrayList arrayList27 = new ArrayList(arrayList26);
                                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s4 = d0Var15.f7863c;
                                arrayList27.remove(abstractComponentCallbacksC0406s4.f7963m0);
                                z9.k(objF, abstractComponentCallbacksC0406s4.f7963m0, arrayList27);
                                ViewTreeObserverOnPreDrawListenerC0271u.a(viewGroup, new RunnableC3036k(5, this, arrayList26));
                            }
                        }
                        if (d0Var15.f7861a == 2) {
                            arrayList25.addAll(arrayList26);
                            rect = rect5;
                            if (z10) {
                                z9.n(objF, rect);
                            }
                            view2 = view9;
                        } else {
                            rect = rect5;
                            view2 = view9;
                            z9.m(view2, objF);
                        }
                        map.put(d0Var15, Boolean.TRUE);
                        if (c0396h3.f7888d) {
                            objJ = z9.j(objJ, objF);
                        } else {
                            objJ2 = z9.j(objJ2, objF);
                        }
                    }
                    rect5 = rect;
                    view9 = view2;
                    view5 = view;
                    arrayList24 = arrayList24;
                    d0Var14 = d0Var4;
                    it10 = it;
                }
            }
            d0Var2 = d0Var14;
            ArrayList arrayList28 = arrayList24;
            Object objI = z9.i(objJ, objJ2, obj3);
            if (objI == null) {
                str2 = str7;
            } else {
                for (C0396h c0396h4 : arrayList22) {
                    if (!c0396h4.g()) {
                        d0 d0Var16 = (d0) c0396h4.f24905a;
                        d0 d0Var17 = d0Var2;
                        boolean z12 = obj3 != null && (d0Var16 == d0Var || d0Var16 == d0Var17);
                        if (c0396h4.f7887c != null || z12) {
                            WeakHashMap weakHashMap = N.N.f4843a;
                            if (viewGroup.isLaidOut()) {
                                str3 = str7;
                                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s5 = ((d0) c0396h4.f24905a).f7863c;
                                z9.o(objI, new K.a(this, c0396h4, d0Var16, 4));
                            } else {
                                str3 = str7;
                                if (Log.isLoggable(str3, 2)) {
                                    Log.v(str3, "SpecialEffectsController: Container " + viewGroup + " has not been laid out. Completing operation " + d0Var16);
                                }
                                c0396h4.c();
                            }
                        } else {
                            str3 = str7;
                        }
                        d0Var2 = d0Var17;
                        str7 = str3;
                    }
                }
                str2 = str7;
                d0 d0Var18 = d0Var2;
                WeakHashMap weakHashMap2 = N.N.f4843a;
                if (viewGroup.isLaidOut()) {
                    S.a(arrayList25, 4);
                    ArrayList arrayList29 = new ArrayList();
                    int size2 = arrayList23.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        View view10 = (View) arrayList23.get(i12);
                        WeakHashMap weakHashMap3 = N.N.f4843a;
                        arrayList29.add(N.E.f(view10));
                        N.E.m(view10, null);
                    }
                    if (Log.isLoggable(str2, 2)) {
                        Log.v(str2, ">>>>> Beginning transition <<<<<");
                        Log.v(str2, ">>>>> SharedElementFirstOutViews <<<<<");
                        for (Iterator it11 = arrayList28.iterator(); it11.hasNext(); it11 = it11) {
                            View view11 = (View) it11.next();
                            Log.v(str2, "View: " + view11 + " Name: " + N.E.f(view11));
                        }
                        Log.v(str2, ">>>>> SharedElementLastInViews <<<<<");
                        for (Iterator it12 = arrayList23.iterator(); it12.hasNext(); it12 = it12) {
                            View view12 = (View) it12.next();
                            Log.v(str2, "View: " + view12 + " Name: " + N.E.f(view12));
                        }
                    }
                    z9.c(viewGroup, objI);
                    int size3 = arrayList23.size();
                    ArrayList arrayList30 = new ArrayList();
                    int i13 = 0;
                    while (i13 < size3) {
                        ArrayList arrayList31 = arrayList28;
                        View view13 = (View) arrayList31.get(i13);
                        WeakHashMap weakHashMap4 = N.N.f4843a;
                        d0 d0Var19 = d0Var18;
                        String strF = N.E.f(view13);
                        arrayList30.add(strF);
                        if (strF == null) {
                            d0Var3 = d0Var;
                        } else {
                            d0Var3 = d0Var;
                            N.E.m(view13, null);
                            p132r.f fVar5 = fVar4;
                            String str8 = (String) fVar5.get(strF);
                            fVar4 = fVar5;
                            for (int i14 = 0; i14 < size3; i14++) {
                                if (str8.equals(arrayList29.get(i14))) {
                                    N.E.m((View) arrayList23.get(i14), strF);
                                    break;
                                }
                            }
                        }
                        i13++;
                        arrayList28 = arrayList31;
                        d0Var18 = d0Var19;
                        d0Var = d0Var3;
                    }
                    d0Var = d0Var;
                    d0Var2 = d0Var18;
                    ArrayList arrayList32 = arrayList28;
                    ViewTreeObserverOnPreDrawListenerC0271u.a(viewGroup, new Y(z9, size3, arrayList23, arrayList29, arrayList32, arrayList30, 0));
                    S.a(arrayList25, 0);
                    z9.q(obj3, arrayList32, arrayList23);
                } else {
                    d0Var2 = d0Var18;
                }
            }
        }
        boolean zContainsValue = map.containsValue(Boolean.TRUE);
        Context context = viewGroup.getContext();
        ArrayList<C0395g> arrayList33 = new ArrayList();
        boolean z13 = false;
        for (C0395g c0395g2 : arrayList3) {
            if (c0395g2.g()) {
                c0395g2.c();
            } else {
                C0410w c0410wS = c0395g2.s(context);
                if (c0410wS == null) {
                    c0395g2.c();
                } else {
                    Animator animator = c0410wS.f7991b;
                    if (animator == null) {
                        arrayList33.add(c0395g2);
                    } else {
                        d0 d0Var20 = (d0) c0395g2.f24905a;
                        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s6 = d0Var20.f7863c;
                        if (Boolean.TRUE.equals(map.get(d0Var20))) {
                            if (Log.isLoggable(str2, 2)) {
                                Log.v(str2, "Ignoring Animator set on " + abstractComponentCallbacksC0406s6 + " as this Fragment was involved in a Transition.");
                            }
                            c0395g2.c();
                        } else {
                            boolean z14 = d0Var20.f7861a == 3;
                            ArrayList arrayList34 = arrayList2;
                            if (z14) {
                                arrayList34.remove(d0Var20);
                            }
                            View view14 = abstractComponentCallbacksC0406s6.f7963m0;
                            viewGroup.startViewTransition(view14);
                            animator.addListener(new C0392d(viewGroup, view14, z14, d0Var20, c0395g2));
                            animator.setTarget(view14);
                            animator.start();
                            if (Log.isLoggable(str2, 2)) {
                                Log.v(str2, "Animator from operation " + d0Var20 + " has started.");
                            }
                            ((J.c) c0395g2.f24906b).a(new p096m2.u(this, animator, d0Var20, 9));
                            arrayList2 = arrayList34;
                            z13 = true;
                        }
                    }
                }
            }
        }
        ArrayList<d0> arrayList35 = arrayList2;
        for (C0395g c0395g3 : arrayList33) {
            d0 d0Var21 = (d0) c0395g3.f24905a;
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s7 = d0Var21.f7863c;
            if (zContainsValue) {
                if (Log.isLoggable(str2, 2)) {
                    Log.v(str2, "Ignoring Animation set on " + abstractComponentCallbacksC0406s7 + " as Animations cannot run alongside Transitions.");
                }
                c0395g3.c();
            } else if (z13) {
                if (Log.isLoggable(str2, 2)) {
                    Log.v(str2, "Ignoring Animation set on " + abstractComponentCallbacksC0406s7 + " as Animations cannot run alongside Animators.");
                }
                c0395g3.c();
            } else {
                View view15 = abstractComponentCallbacksC0406s7.f7963m0;
                C0410w c0410wS2 = c0395g3.s(context);
                c0410wS2.getClass();
                Animation animation = c0410wS2.f7990a;
                animation.getClass();
                if (d0Var21.f7861a != 1) {
                    view15.startAnimation(animation);
                    c0395g3.c();
                } else {
                    viewGroup.startViewTransition(view15);
                    RunnableC0411x runnableC0411x = new RunnableC0411x(animation, viewGroup, view15);
                    runnableC0411x.setAnimationListener(new AnimationAnimationListenerC0393e(d0Var21, viewGroup, view15, c0395g3));
                    view15.startAnimation(runnableC0411x);
                    if (Log.isLoggable(str2, 2)) {
                        Log.v(str2, "Animation from operation " + d0Var21 + " has started.");
                    }
                }
                ((J.c) c0395g3.f24906b).a(new p109o.j(this, view15, viewGroup, c0395g3, d0Var21));
                zContainsValue = zContainsValue;
            }
        }
        for (d0 d0Var22 : arrayList35) {
            A0.O.c(d0Var22.f7861a, d0Var22.f7863c.f7963m0);
        }
        arrayList35.clear();
        if (Log.isLoggable(str2, 2)) {
            Log.v(str2, "Completed executing operations from " + d0Var + str + d0Var2);
        }
    }
}
