package p086l;

import B0.C0073x;
import N.E;
import N.N;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.PriorityQueue;
import java.util.WeakHashMap;
import p031e.a;
import p117p0.M;
import p125q0.t;
import p125q0.u;

/* JADX INFO: renamed from: l.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3051s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f26368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f26369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f26370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f26371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f26372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f26373f;

    public C3051s(View view) {
        this.f26368a = -1;
        this.f26369b = view;
        this.f26370c = C3063y.a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        if (r7 < r0.f29530H) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(long r7, p117p0.E r9) {
        /*
            r6 = this;
            int r0 = r6.f26368a
            if (r0 == 0) goto Lad
            r1 = -1
            if (r0 == r1) goto L27
            java.lang.Object r0 = r6.f26372e
            java.util.PriorityQueue r0 = (java.util.PriorityQueue) r0
            int r0 = r0.size()
            int r2 = r6.f26368a
            if (r0 < r2) goto L27
            java.lang.Object r0 = r6.f26372e
            java.util.PriorityQueue r0 = (java.util.PriorityQueue) r0
            java.lang.Object r0 = r0.peek()
            q0.t r0 = (p125q0.t) r0
            java.lang.String r2 = p117p0.M.f28050a
            long r2 = r0.f29530H
            int r0 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r0 >= 0) goto L27
            goto Lad
        L27:
            java.lang.Object r0 = r6.f26370c
            java.util.ArrayDeque r0 = (java.util.ArrayDeque) r0
            boolean r2 = r0.isEmpty()
            if (r2 == 0) goto L37
            p0.E r0 = new p0.E
            r0.<init>()
            goto L3d
        L37:
            java.lang.Object r0 = r0.pop()
            p0.E r0 = (p117p0.E) r0
        L3d:
            int r2 = r9.a()
            r0.I(r2)
            byte[] r2 = r9.f28035a
            int r9 = r9.f28036b
            byte[] r3 = r0.f28035a
            int r4 = r0.a()
            r5 = 0
            java.lang.System.arraycopy(r2, r9, r3, r5, r4)
            java.lang.Object r9 = r6.f26373f
            q0.t r9 = (p125q0.t) r9
            if (r9 == 0) goto L64
            long r2 = r9.f29530H
            int r4 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r4 != 0) goto L64
            java.util.ArrayList r7 = r9.f29529G
            r7.add(r0)
            return
        L64:
            java.lang.Object r9 = r6.f26371d
            java.util.ArrayDeque r9 = (java.util.ArrayDeque) r9
            boolean r9 = r9.isEmpty()
            if (r9 == 0) goto L74
            q0.t r9 = new q0.t
            r9.<init>()
            goto L7e
        L74:
            java.lang.Object r9 = r6.f26371d
            java.util.ArrayDeque r9 = (java.util.ArrayDeque) r9
            java.lang.Object r9 = r9.pop()
            q0.t r9 = (p125q0.t) r9
        L7e:
            r9.getClass()
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r4 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r4 == 0) goto L8b
            r5 = 1
        L8b:
            com.google.android.gms.internal.measurement.H1.d(r5)
            java.util.ArrayList r2 = r9.f29529G
            boolean r3 = r2.isEmpty()
            com.google.android.gms.internal.measurement.H1.i(r3)
            r9.f29530H = r7
            r2.add(r0)
            java.lang.Object r7 = r6.f26372e
            java.util.PriorityQueue r7 = (java.util.PriorityQueue) r7
            r7.add(r9)
            r6.f26373f = r9
            int r7 = r6.f26368a
            if (r7 == r1) goto Lac
            r6.c(r7)
        Lac:
            return
        Lad:
            java.lang.Object r0 = r6.f26369b
            q0.u r0 = (p125q0.u) r0
            B0.x r0 = (B0.C0073x) r0
            r0.e(r7, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p086l.C3051s.a(long, p0.E):void");
    }

    public final void b() {
        View view = (View) this.f26369b;
        Drawable background = view.getBackground();
        if (background != null) {
            int i8 = Build.VERSION.SDK_INT;
            if (i8 <= 21 ? i8 == 21 : ((e1) this.f26371d) != null) {
                if (((e1) this.f26373f) == null) {
                    this.f26373f = new e1(0);
                }
                e1 e1Var = (e1) this.f26373f;
                e1Var.f26253d = null;
                e1Var.f26252c = false;
                e1Var.f26254e = null;
                e1Var.f26251b = false;
                WeakHashMap weakHashMap = N.f4843a;
                ColorStateList colorStateListC = E.c(view);
                if (colorStateListC != null) {
                    e1Var.f26252c = true;
                    e1Var.f26253d = colorStateListC;
                }
                PorterDuff.Mode modeD = E.d(view);
                if (modeD != null) {
                    e1Var.f26251b = true;
                    e1Var.f26254e = modeD;
                }
                if (e1Var.f26252c || e1Var.f26251b) {
                    C3063y.d(background, e1Var, view.getDrawableState());
                    return;
                }
            }
            e1 e1Var2 = (e1) this.f26372e;
            if (e1Var2 != null) {
                C3063y.d(background, e1Var2, view.getDrawableState());
                return;
            }
            e1 e1Var3 = (e1) this.f26371d;
            if (e1Var3 != null) {
                C3063y.d(background, e1Var3, view.getDrawableState());
            }
        }
    }

    public final void c(int i8) {
        ArrayList arrayList;
        while (((PriorityQueue) this.f26372e).size() > i8) {
            t tVar = (t) ((PriorityQueue) this.f26372e).poll();
            String str = M.f28050a;
            int i9 = 0;
            while (true) {
                int size = tVar.f29529G.size();
                arrayList = tVar.f29529G;
                if (i9 >= size) {
                    break;
                }
                ((C0073x) ((u) this.f26369b)).e(tVar.f29530H, (p117p0.E) arrayList.get(i9));
                ((ArrayDeque) this.f26370c).push((p117p0.E) arrayList.get(i9));
                i9++;
            }
            arrayList.clear();
            t tVar2 = (t) this.f26373f;
            if (tVar2 != null && tVar2.f29530H == tVar.f29530H) {
                this.f26373f = null;
            }
            ((ArrayDeque) this.f26371d).push(tVar);
        }
    }

    public final ColorStateList d() {
        Object obj = this.f26372e;
        if (((e1) obj) != null) {
            return (ColorStateList) ((e1) obj).f26253d;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        Object obj = this.f26372e;
        if (((e1) obj) != null) {
            return (PorterDuff.Mode) ((e1) obj).f26254e;
        }
        return null;
    }

    public final void f(AttributeSet attributeSet, int i8) {
        ColorStateList colorStateListI;
        Object obj = this.f26369b;
        View view = (View) obj;
        Context context = view.getContext();
        int[] iArr = a.f24711z;
        p096m2.u uVarJ = p096m2.u.J(context, attributeSet, iArr, i8, 0);
        N.l(view, view.getContext(), iArr, attributeSet, (TypedArray) uVarJ.f27279I, i8);
        try {
            if (uVarJ.F(0)) {
                this.f26368a = uVarJ.z(0, -1);
                C3063y c3063y = (C3063y) this.f26370c;
                Context context2 = ((View) obj).getContext();
                int i9 = this.f26368a;
                synchronized (c3063y) {
                    colorStateListI = c3063y.f26420a.i(context2, i9);
                }
                if (colorStateListI != null) {
                    i(colorStateListI);
                }
            }
            if (uVarJ.F(1)) {
                View view2 = (View) obj;
                ColorStateList colorStateListO = uVarJ.o(1);
                int i10 = Build.VERSION.SDK_INT;
                E.i(view2, colorStateListO);
                if (i10 == 21) {
                    Drawable background = view2.getBackground();
                    boolean z7 = (E.c(view2) == null && E.d(view2) == null) ? false : true;
                    if (background != null && z7) {
                        if (background.isStateful()) {
                            background.setState(view2.getDrawableState());
                        }
                        view2.setBackground(background);
                    }
                }
            }
            if (uVarJ.F(2)) {
                View view3 = (View) obj;
                PorterDuff.Mode modeC = AbstractC3054t0.c(uVarJ.x(2, -1), null);
                int i11 = Build.VERSION.SDK_INT;
                E.j(view3, modeC);
                if (i11 == 21) {
                    Drawable background2 = view3.getBackground();
                    boolean z8 = (E.c(view3) == null && E.d(view3) == null) ? false : true;
                    if (background2 != null && z8) {
                        if (background2.isStateful()) {
                            background2.setState(view3.getDrawableState());
                        }
                        view3.setBackground(background2);
                    }
                }
            }
            uVarJ.P();
        } catch (Throwable th) {
            uVarJ.P();
            throw th;
        }
    }

    public final void g() {
        this.f26368a = -1;
        i(null);
        b();
    }

    public final void h(int i8) {
        ColorStateList colorStateListI;
        this.f26368a = i8;
        C3063y c3063y = (C3063y) this.f26370c;
        if (c3063y != null) {
            Context context = ((View) this.f26369b).getContext();
            synchronized (c3063y) {
                colorStateListI = c3063y.f26420a.i(context, i8);
            }
        } else {
            colorStateListI = null;
        }
        i(colorStateListI);
        b();
    }

    public final void i(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((e1) this.f26371d) == null) {
                this.f26371d = new e1(0);
            }
            Object obj = this.f26371d;
            ((e1) obj).f26253d = colorStateList;
            ((e1) obj).f26252c = true;
        } else {
            this.f26371d = null;
        }
        b();
    }

    public final void j(int i8) {
        H1.i(i8 >= 0);
        this.f26368a = i8;
        c(i8);
    }

    public final void k(ColorStateList colorStateList) {
        if (((e1) this.f26372e) == null) {
            this.f26372e = new e1(0);
        }
        e1 e1Var = (e1) this.f26372e;
        e1Var.f26253d = colorStateList;
        e1Var.f26252c = true;
        b();
    }

    public final void l(PorterDuff.Mode mode) {
        if (((e1) this.f26372e) == null) {
            this.f26372e = new e1(0);
        }
        e1 e1Var = (e1) this.f26372e;
        e1Var.f26254e = mode;
        e1Var.f26251b = true;
        b();
    }

    public C3051s(C0073x c0073x) {
        this.f26369b = c0073x;
        this.f26370c = new ArrayDeque();
        this.f26371d = new ArrayDeque();
        this.f26372e = new PriorityQueue();
        this.f26368a = -1;
    }
}
