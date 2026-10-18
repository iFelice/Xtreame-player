package X1;

import A0.O;
import N.N;
import Y.Z;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class l extends Z {
    @Override // Y.Z
    public final void a(View view, Object obj) {
        ((q) obj).b(view);
    }

    @Override // Y.Z
    public final void b(Object obj, ArrayList arrayList) {
        q qVar = (q) obj;
        if (qVar == null) {
            return;
        }
        int i8 = 0;
        if (qVar instanceof v) {
            v vVar = (v) qVar;
            int size = vVar.f7616d0.size();
            while (i8 < size) {
                b((i8 < 0 || i8 >= vVar.f7616d0.size()) ? null : (q) vVar.f7616d0.get(i8), arrayList);
                i8++;
            }
            return;
        }
        if (Z.h(qVar.f7595K) && Z.h(null) && Z.h(null) && Z.h(qVar.f7596L)) {
            int size2 = arrayList.size();
            while (i8 < size2) {
                qVar.b((View) arrayList.get(i8));
                i8++;
            }
        }
    }

    @Override // Y.Z
    public final void c(ViewGroup viewGroup, Object obj) {
        q qVar = (q) obj;
        ArrayList arrayList = t.f7614b;
        if (arrayList.contains(viewGroup)) {
            return;
        }
        WeakHashMap weakHashMap = N.f4843a;
        if (viewGroup.isLaidOut()) {
            arrayList.add(viewGroup);
            q qVarClone = qVar.clone();
            ArrayList arrayList2 = (ArrayList) t.a().get(viewGroup);
            if (arrayList2 != null && arrayList2.size() > 0) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((q) it.next()).v(viewGroup);
                }
            }
            if (qVarClone != null) {
                qVarClone.h(viewGroup, true);
            }
            O.I(viewGroup.getTag(R.id.transition_current_scene));
            viewGroup.setTag(R.id.transition_current_scene, null);
            if (qVarClone != null) {
                s sVar = new s();
                sVar.f7611G = qVarClone;
                sVar.f7612H = viewGroup;
                viewGroup.addOnAttachStateChangeListener(sVar);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(sVar);
            }
        }
    }

    @Override // Y.Z
    public final boolean e(Object obj) {
        return obj instanceof q;
    }

    @Override // Y.Z
    public final Object f(Object obj) {
        if (obj != null) {
            return ((q) obj).clone();
        }
        return null;
    }

    @Override // Y.Z
    public final Object i(Object obj, Object obj2, Object obj3) {
        q qVar = (q) obj;
        q qVar2 = (q) obj2;
        q qVar3 = (q) obj3;
        if (qVar != null && qVar2 != null) {
            v vVar = new v();
            vVar.I(qVar);
            vVar.I(qVar2);
            vVar.f7617e0 = false;
            qVar = vVar;
        } else if (qVar == null) {
            qVar = qVar2 != null ? qVar2 : null;
        }
        if (qVar3 == null) {
            return qVar;
        }
        v vVar2 = new v();
        if (qVar != null) {
            vVar2.I(qVar);
        }
        vVar2.I(qVar3);
        return vVar2;
    }

    @Override // Y.Z
    public final Object j(Object obj, Object obj2) {
        v vVar = new v();
        if (obj != null) {
            vVar.I((q) obj);
        }
        vVar.I((q) obj2);
        return vVar;
    }

    @Override // Y.Z
    public final void k(Object obj, View view, ArrayList arrayList) {
        ((q) obj).a(new j(view, arrayList));
    }

    @Override // Y.Z
    public final void l(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2) {
        ((q) obj).a(new k(this, obj2, arrayList, obj3, arrayList2));
    }

    @Override // Y.Z
    public final void m(View view, Object obj) {
        if (view != null) {
            Z.g(new Rect(), view);
            ((q) obj).B(new i());
        }
    }

    @Override // Y.Z
    public final void n(Object obj, Rect rect) {
        ((q) obj).B(new i());
    }

    @Override // Y.Z
    public final void p(Object obj, View view, ArrayList arrayList) {
        v vVar = (v) obj;
        ArrayList arrayList2 = vVar.f7596L;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            Z.d(arrayList2, (View) arrayList.get(i8));
        }
        arrayList2.add(view);
        arrayList.add(view);
        b(vVar, arrayList);
    }

    @Override // Y.Z
    public final void q(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        v vVar = (v) obj;
        if (vVar != null) {
            ArrayList arrayList3 = vVar.f7596L;
            arrayList3.clear();
            arrayList3.addAll(arrayList2);
            s(vVar, arrayList, arrayList2);
        }
    }

    @Override // Y.Z
    public final Object r(Object obj) {
        if (obj == null) {
            return null;
        }
        v vVar = new v();
        vVar.I((q) obj);
        return vVar;
    }

    public final void s(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        q qVar = (q) obj;
        int i8 = 0;
        if (qVar instanceof v) {
            v vVar = (v) qVar;
            int size = vVar.f7616d0.size();
            while (i8 < size) {
                s((i8 < 0 || i8 >= vVar.f7616d0.size()) ? null : (q) vVar.f7616d0.get(i8), arrayList, arrayList2);
                i8++;
            }
            return;
        }
        if (Z.h(qVar.f7595K) && Z.h(null) && Z.h(null)) {
            ArrayList arrayList3 = qVar.f7596L;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                int size2 = arrayList2 == null ? 0 : arrayList2.size();
                while (i8 < size2) {
                    qVar.b((View) arrayList2.get(i8));
                    i8++;
                }
                for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    qVar.x((View) arrayList.get(size3));
                }
            }
        }
    }
}
