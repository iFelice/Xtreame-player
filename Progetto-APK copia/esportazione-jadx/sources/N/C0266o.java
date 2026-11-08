package N;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: renamed from: N.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0266o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewParent f4913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewParent f4914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f4915c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f4917e;

    public C0266o(View view) {
        this.f4915c = view;
    }

    public final boolean a(float f8, float f9, boolean z7) {
        ViewParent viewParentF;
        if (!this.f4916d || (viewParentF = f(0)) == null) {
            return false;
        }
        try {
            return viewParentF.onNestedFling(this.f4915c, f8, f9, z7);
        } catch (AbstractMethodError e8) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onNestedFling", e8);
            return false;
        }
    }

    public final boolean b(float f8, float f9) {
        ViewParent viewParentF;
        if (!this.f4916d || (viewParentF = f(0)) == null) {
            return false;
        }
        try {
            return viewParentF.onNestedPreFling(this.f4915c, f8, f9);
        } catch (AbstractMethodError e8) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onNestedPreFling", e8);
            return false;
        }
    }

    public final boolean c(int i8, int i9, int i10, int[] iArr, int[] iArr2) {
        ViewParent viewParentF;
        int i11;
        int i12;
        int[] iArr3;
        if (!this.f4916d || (viewParentF = f(i10)) == null) {
            return false;
        }
        if (i8 == 0 && i9 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        View view = this.f4915c;
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            i11 = iArr2[0];
            i12 = iArr2[1];
        } else {
            i11 = 0;
            i12 = 0;
        }
        if (iArr == null) {
            if (this.f4917e == null) {
                this.f4917e = new int[2];
            }
            iArr3 = this.f4917e;
        } else {
            iArr3 = iArr;
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        boolean z7 = viewParentF instanceof InterfaceC0267p;
        View view2 = this.f4915c;
        if (z7) {
            ((InterfaceC0267p) viewParentF).f(view2, i8, i9, iArr3, i10);
        } else if (i10 == 0) {
            try {
                viewParentF.onNestedPreScroll(view2, i8, i9, iArr3);
            } catch (AbstractMethodError e8) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onNestedPreScroll", e8);
            }
        }
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i11;
            iArr2[1] = iArr2[1] - i12;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public final void d(int i8, int i9, int i10, int[] iArr) {
        e(0, i8, 0, i9, null, i10, iArr);
    }

    public final boolean e(int i8, int i9, int i10, int i11, int[] iArr, int i12, int[] iArr2) {
        ViewParent viewParentF;
        int i13;
        int i14;
        int[] iArr3;
        if (!this.f4916d || (viewParentF = f(i12)) == null) {
            return false;
        }
        if (i8 == 0 && i9 == 0 && i10 == 0 && i11 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        View view = this.f4915c;
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            i13 = iArr[0];
            i14 = iArr[1];
        } else {
            i13 = 0;
            i14 = 0;
        }
        if (iArr2 == null) {
            if (this.f4917e == null) {
                this.f4917e = new int[2];
            }
            int[] iArr4 = this.f4917e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        boolean z7 = viewParentF instanceof InterfaceC0268q;
        View view2 = this.f4915c;
        if (z7) {
            ((InterfaceC0268q) viewParentF).a(view2, i8, i9, i10, i11, i12, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i10;
            iArr3[1] = iArr3[1] + i11;
            if (viewParentF instanceof InterfaceC0267p) {
                ((InterfaceC0267p) viewParentF).b(view2, i8, i9, i10, i11, i12);
            } else if (i12 == 0) {
                try {
                    viewParentF.onNestedScroll(view2, i8, i9, i10, i11);
                } catch (AbstractMethodError e8) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onNestedScroll", e8);
                }
            }
        }
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i13;
            iArr[1] = iArr[1] - i14;
        }
        return true;
    }

    public final ViewParent f(int i8) {
        if (i8 == 0) {
            return this.f4913a;
        }
        if (i8 != 1) {
            return null;
        }
        return this.f4914b;
    }

    public final boolean g(int i8) {
        return f(i8) != null;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:0x0077 A[SYNTHETIC] */
    public final boolean h(int i8, int i9) {
        boolean zOnStartNestedScroll;
        if (g(i9)) {
            return true;
        }
        if (!this.f4916d) {
            return false;
        }
        View view = this.f4915c;
        View view2 = view;
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            boolean z7 = parent instanceof InterfaceC0267p;
            if (z7) {
                zOnStartNestedScroll = ((InterfaceC0267p) parent).c(view2, view, i8, i9);
            } else {
                if (i9 == 0) {
                    try {
                        zOnStartNestedScroll = parent.onStartNestedScroll(view2, view, i8);
                    } catch (AbstractMethodError e8) {
                        Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e8);
                    }
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
            if (zOnStartNestedScroll) {
                if (i9 == 0) {
                    this.f4913a = parent;
                } else if (i9 == 1) {
                    this.f4914b = parent;
                }
                if (z7) {
                    ((InterfaceC0267p) parent).d(view2, view, i8, i9);
                } else if (i9 == 0) {
                    try {
                        parent.onNestedScrollAccepted(view2, view, i8);
                    } catch (AbstractMethodError e9) {
                        Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e9);
                    }
                }
                return true;
            }
            if (parent instanceof View) {
                view2 = (View) parent;
            }
        }
        return false;
    }

    public final void i(int i8) {
        ViewParent viewParentF = f(i8);
        if (viewParentF != null) {
            boolean z7 = viewParentF instanceof InterfaceC0267p;
            View view = this.f4915c;
            if (z7) {
                ((InterfaceC0267p) viewParentF).e(view, i8);
            } else if (i8 == 0) {
                try {
                    viewParentF.onStopNestedScroll(view);
                } catch (AbstractMethodError e8) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onStopNestedScroll", e8);
                }
            }
            if (i8 == 0) {
                this.f4913a = null;
            } else {
                if (i8 != 1) {
                    return;
                }
                this.f4914b = null;
            }
        }
    }
}
