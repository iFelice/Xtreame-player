package X1;

import D0.U;
import N.T;
import O1.C0315n;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class h extends q {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final String[] f7568e0 = {"android:visibility:visibility", "android:visibility:parent"};

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f7569d0;

    public h(int i8) {
        this.f7569d0 = i8;
    }

    public static void I(x xVar) {
        int visibility = xVar.f7625b.getVisibility();
        HashMap map = xVar.f7624a;
        map.put("android:visibility:visibility", Integer.valueOf(visibility));
        map.put("android:visibility:parent", xVar.f7625b.getParent());
        int[] iArr = new int[2];
        xVar.f7625b.getLocationOnScreen(iArr);
        map.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0052  */
    /* JADX WARN: Code duplicated, block: B:7:0x002f  */
    public static E K(x xVar, x xVar2) {
        E e8 = new E();
        e8.f7543a = false;
        e8.f7544b = false;
        if (xVar != null) {
            HashMap map = xVar.f7624a;
            if (map.containsKey("android:visibility:visibility")) {
                e8.f7545c = ((Integer) map.get("android:visibility:visibility")).intValue();
                e8.f7547e = (ViewGroup) map.get("android:visibility:parent");
            } else {
                e8.f7545c = -1;
                e8.f7547e = null;
            }
        } else {
            e8.f7545c = -1;
            e8.f7547e = null;
        }
        if (xVar2 != null) {
            HashMap map2 = xVar2.f7624a;
            if (map2.containsKey("android:visibility:visibility")) {
                e8.f7546d = ((Integer) map2.get("android:visibility:visibility")).intValue();
                e8.f7548f = (ViewGroup) map2.get("android:visibility:parent");
            } else {
                e8.f7546d = -1;
                e8.f7548f = null;
            }
        } else {
            e8.f7546d = -1;
            e8.f7548f = null;
        }
        if (xVar != null && xVar2 != null) {
            int i8 = e8.f7545c;
            int i9 = e8.f7546d;
            if (i8 != i9 || e8.f7547e != e8.f7548f) {
                if (i8 != i9) {
                    if (i8 == 0) {
                        e8.f7544b = false;
                        e8.f7543a = true;
                    } else if (i9 == 0) {
                        e8.f7544b = true;
                        e8.f7543a = true;
                    }
                } else if (e8.f7548f == null) {
                    e8.f7544b = false;
                    e8.f7543a = true;
                } else if (e8.f7547e == null) {
                    e8.f7544b = true;
                    e8.f7543a = true;
                }
            }
        } else if (xVar == null && e8.f7546d == 0) {
            e8.f7544b = true;
            e8.f7543a = true;
        } else if (xVar2 == null && e8.f7545c == 0) {
            e8.f7544b = false;
            e8.f7543a = true;
        }
        return e8;
    }

    public final ObjectAnimator J(View view, float f8, float f9) {
        if (f8 == f9) {
            return null;
        }
        z.f7627a.j(view, f8);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, z.f7630d, f9);
        objectAnimatorOfFloat.addListener(new C0315n(view));
        a(new C0388g(0, this, view));
        return objectAnimatorOfFloat;
    }

    @Override // X1.q
    public final void d(x xVar) {
        I(xVar);
    }

    @Override // X1.q
    public final void g(x xVar) {
        I(xVar);
        xVar.f7624a.put("android:fade:transitionAlpha", Float.valueOf(z.f7627a.g(xVar.f7625b)));
    }

    @Override // X1.q
    public final Animator l(ViewGroup viewGroup, x xVar, x xVar2) {
        int id;
        Float f8;
        Float f9;
        E eK = K(xVar, xVar2);
        if (!eK.f7543a) {
            return null;
        }
        if (eK.f7547e == null && eK.f7548f == null) {
            return null;
        }
        float fFloatValue = 1.0f;
        if (eK.f7544b) {
            if ((this.f7569d0 & 1) != 1 || xVar2 == null) {
                return null;
            }
            if (xVar == null) {
                View view = (View) xVar2.f7625b.getParent();
                if (K(o(view, false), r(view, false)).f7543a) {
                    return null;
                }
            }
            View view2 = xVar2.f7625b;
            float fFloatValue2 = (xVar == null || (f9 = (Float) xVar.f7624a.get("android:fade:transitionAlpha")) == null) ? 0.0f : f9.floatValue();
            return J(view2, fFloatValue2 != 1.0f ? fFloatValue2 : 0.0f, 1.0f);
        }
        int i8 = eK.f7546d;
        if ((this.f7569d0 & 2) != 2) {
            return null;
        }
        View viewA = xVar != null ? xVar.f7625b : null;
        View viewA2 = xVar2 != null ? xVar2.f7625b : null;
        if (viewA2 == null || viewA2.getParent() == null) {
            if (viewA2 == null) {
                if (viewA != null) {
                    if (viewA.getParent() != null) {
                        if (viewA.getParent() instanceof View) {
                            View view3 = (View) viewA.getParent();
                            if (K(r(view3, true), o(view3, true)).f7543a) {
                                if (view3.getParent() == null && (id = view3.getId()) != -1) {
                                    viewGroup.findViewById(id);
                                }
                                viewA = null;
                            } else {
                                viewA2 = w.a(viewGroup, viewA, view3);
                                viewA = viewA2;
                            }
                        }
                    }
                    viewA2 = null;
                }
                viewA2 = null;
                viewA = null;
            } else {
                viewA = viewA2;
                viewA2 = null;
            }
        } else if (i8 == 4 || viewA == viewA2) {
            viewA = null;
        } else {
            viewA = w.a(viewGroup, viewA, (View) viewA.getParent());
            viewA2 = null;
        }
        if (viewA == null || xVar == null) {
            if (viewA2 == null) {
                return null;
            }
            int visibility = viewA2.getVisibility();
            z.b(viewA2, 0);
            z.f7627a.getClass();
            if (xVar != null && (f8 = (Float) xVar.f7624a.get("android:fade:transitionAlpha")) != null) {
                fFloatValue = f8.floatValue();
            }
            ObjectAnimator objectAnimatorJ = J(viewA2, fFloatValue, 0.0f);
            if (objectAnimatorJ == null) {
                z.b(viewA2, visibility);
                return objectAnimatorJ;
            }
            D d6 = new D(i8, viewA2);
            objectAnimatorJ.addListener(d6);
            objectAnimatorJ.addPauseListener(d6);
            a(d6);
            return objectAnimatorJ;
        }
        HashMap map = xVar.f7624a;
        int[] iArr = (int[]) map.get("android:visibility:screenLocation");
        int i9 = iArr[0];
        int i10 = iArr[1];
        int[] iArr2 = new int[2];
        viewGroup.getLocationOnScreen(iArr2);
        viewA.offsetLeftAndRight((i9 - iArr2[0]) - viewA.getLeft());
        viewA.offsetTopAndBottom((i10 - iArr2[1]) - viewA.getTop());
        U u7 = new U(viewGroup);
        ((ViewGroupOverlay) u7.f1868H).add(viewA);
        z.f7627a.getClass();
        Float f10 = (Float) map.get("android:fade:transitionAlpha");
        ObjectAnimator objectAnimatorJ2 = J(viewA, f10 != null ? f10.floatValue() : 1.0f, 0.0f);
        if (objectAnimatorJ2 == null) {
            u7.B(viewA);
            return objectAnimatorJ2;
        }
        objectAnimatorJ2.addListener(new T(this, u7, viewA, 1));
        return objectAnimatorJ2;
    }

    @Override // X1.q
    public final /* bridge */ /* synthetic */ String[] q() {
        return f7568e0;
    }

    @Override // X1.q
    public final boolean s(x xVar, x xVar2) {
        if (xVar == null && xVar2 == null) {
            return false;
        }
        if (xVar != null && xVar2 != null && xVar2.f7624a.containsKey("android:visibility:visibility") != xVar.f7624a.containsKey("android:visibility:visibility")) {
            return false;
        }
        E eK = K(xVar, xVar2);
        if (eK.f7543a) {
            return eK.f7545c == 0 || eK.f7546d == 0;
        }
        return false;
    }
}
