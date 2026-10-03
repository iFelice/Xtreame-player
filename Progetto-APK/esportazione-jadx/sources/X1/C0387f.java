package X1;

import N.N;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.WeakHashMap;
import p086l.b1;

/* JADX INFO: renamed from: X1.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0387f extends q {

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final String[] f7559d0 = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final b1 f7560e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final b1 f7561f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final b1 f7562g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final b1 f7563h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final b1 f7564i0;

    static {
        new C0383b(PointF.class, "boundsOrigin").f7550a = new Rect();
        f7560e0 = new b1(5, PointF.class, "topLeft");
        f7561f0 = new b1(6, PointF.class, "bottomRight");
        f7562g0 = new b1(7, PointF.class, "bottomRight");
        f7563h0 = new b1(8, PointF.class, "topLeft");
        f7564i0 = new b1(9, PointF.class, "position");
    }

    public static void I(x xVar) {
        View view = xVar.f7625b;
        WeakHashMap weakHashMap = N.f4843a;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        HashMap map = xVar.f7624a;
        map.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        map.put("android:changeBounds:parent", xVar.f7625b.getParent());
    }

    @Override // X1.q
    public final void d(x xVar) {
        I(xVar);
    }

    @Override // X1.q
    public final void g(x xVar) {
        I(xVar);
    }

    @Override // X1.q
    public final Animator l(ViewGroup viewGroup, x xVar, x xVar2) {
        int i8;
        C0387f c0387f;
        Animator animatorOfObject;
        if (xVar == null || xVar2 == null) {
            return null;
        }
        HashMap map = xVar.f7624a;
        HashMap map2 = xVar2.f7624a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = xVar2.f7625b;
        Rect rect = (Rect) map.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) map2.get("android:changeBounds:bounds");
        int i9 = rect.left;
        int i10 = rect2.left;
        int i11 = rect.top;
        int i12 = rect2.top;
        int i13 = rect.right;
        int i14 = rect2.right;
        int i15 = rect.bottom;
        int i16 = rect2.bottom;
        int i17 = i13 - i9;
        int i18 = i15 - i11;
        int i19 = i14 - i10;
        int i20 = i16 - i12;
        Rect rect3 = (Rect) map.get("android:changeBounds:clip");
        Rect rect4 = (Rect) map2.get("android:changeBounds:clip");
        if ((i17 == 0 || i18 == 0) && (i19 == 0 || i20 == 0)) {
            i8 = 0;
        } else {
            i8 = (i9 == i10 && i11 == i12) ? 0 : 1;
            if (i13 != i14 || i15 != i16) {
                i8++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i8++;
        }
        if (i8 <= 0) {
            return null;
        }
        z.a(view, i9, i11, i13, i15);
        if (i8 != 2) {
            c0387f = this;
            if (i9 == i10 && i11 == i12) {
                c0387f.f7610Z.getClass();
                animatorOfObject = ObjectAnimator.ofObject(view, f7562g0, (TypeConverter) null, U1.f.f(i13, i15, i14, i16));
            } else {
                c0387f.f7610Z.getClass();
                animatorOfObject = ObjectAnimator.ofObject(view, f7563h0, (TypeConverter) null, U1.f.f(i9, i11, i10, i12));
            }
        } else if (i17 == i19 && i18 == i20) {
            c0387f = this;
            c0387f.f7610Z.getClass();
            animatorOfObject = ObjectAnimator.ofObject(view, f7564i0, (TypeConverter) null, U1.f.f(i9, i11, i10, i12));
        } else {
            c0387f = this;
            C0386e c0386e = new C0386e();
            c0386e.f7556e = view;
            c0387f.f7610Z.getClass();
            ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(c0386e, f7560e0, (TypeConverter) null, U1.f.f(i9, i11, i10, i12));
            c0387f.f7610Z.getClass();
            ObjectAnimator objectAnimatorOfObject2 = ObjectAnimator.ofObject(c0386e, f7561f0, (TypeConverter) null, U1.f.f(i13, i15, i14, i16));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorOfObject, objectAnimatorOfObject2);
            animatorSet.addListener(new C0384c(c0386e));
            animatorOfObject = animatorSet;
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            Z3.C.l(viewGroup4, true);
            c0387f.a(new C0385d(viewGroup4));
        }
        return animatorOfObject;
    }

    @Override // X1.q
    public final String[] q() {
        return f7559d0;
    }
}
