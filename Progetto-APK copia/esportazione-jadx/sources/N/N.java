package N;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class N {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakHashMap f4843a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Field f4844b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f4845c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static ThreadLocal f4846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C0275y f4847e = new C0275y();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final A f4848f = new A();

    public static U a(View view) {
        if (f4843a == null) {
            f4843a = new WeakHashMap();
        }
        U u7 = (U) f4843a.get(view);
        if (u7 != null) {
            return u7;
        }
        U u8 = new U(view);
        f4843a.put(view, u8);
        return u8;
    }

    public static i0 b(View view, i0 i0Var) {
        WindowInsets windowInsetsG = i0Var.g();
        if (windowInsetsG != null) {
            WindowInsets windowInsetsA = C.a(view, windowInsetsG);
            if (!windowInsetsA.equals(windowInsetsG)) {
                return i0.h(windowInsetsA, view);
            }
        }
        return i0Var;
    }

    public static boolean c(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = M.f4839d;
        M m7 = (M) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (m7 == null) {
            m7 = new M();
            m7.f4840a = null;
            m7.f4841b = null;
            m7.f4842c = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, m7);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = m7.f4840a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = M.f4839d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (m7.f4840a == null) {
                            m7.f4840a = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = M.f4839d;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                m7.f4840a.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    m7.f4840a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        View viewA = m7.a(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewA != null && !KeyEvent.isModifierKey(keyCode)) {
                if (m7.f4841b == null) {
                    m7.f4841b = new SparseArray();
                }
                m7.f4841b.put(keyCode, new WeakReference(viewA));
            }
        }
        return viewA != null;
    }

    public static View.AccessibilityDelegate d(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return J.a(view);
        }
        if (f4845c) {
            return null;
        }
        if (f4844b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f4844b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f4845c = true;
                return null;
            }
        }
        try {
            Object obj = f4844b.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f4845c = true;
            return null;
        }
    }

    public static Rect e() {
        if (f4846d == null) {
            f4846d = new ThreadLocal();
        }
        Rect rect = (Rect) f4846d.get();
        if (rect == null) {
            rect = new Rect();
            f4846d.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static String[] f(View view) {
        return Build.VERSION.SDK_INT >= 31 ? L.a(view) : (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void g(View view, int i8) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            int i9 = R.id.tag_accessibility_pane_title;
            int i10 = 8;
            int i11 = 28;
            int i12 = 1;
            boolean z7 = ((CharSequence) new C0276z(i9, i10, i11, i12).d(view)) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z7) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z7 ? 32 : 2048);
                accessibilityEventObtain.setContentChangeTypes(i8);
                if (z7) {
                    accessibilityEventObtain.getText().add((CharSequence) new C0276z(i9, i10, i11, i12).d(view));
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i8 != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i8);
                        return;
                    } catch (AbstractMethodError e8) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e8);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.setEventType(32);
            accessibilityEventObtain2.setContentChangeTypes(i8);
            accessibilityEventObtain2.setSource(view);
            view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.getText().add((CharSequence) new C0276z(i9, i10, i11, i12).d(view));
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
        }
    }

    public static void h(View view, int i8) {
        boolean z7;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i8);
            return;
        }
        Rect rectE = e();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectE.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z7 = !rectE.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z7 = false;
        }
        view.offsetLeftAndRight(i8);
        if (view.getVisibility() == 0) {
            o(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                o((View) parent2);
            }
        }
        if (z7 && rectE.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectE);
        }
    }

    public static void i(View view, int i8) {
        boolean z7;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i8);
            return;
        }
        Rect rectE = e();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectE.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z7 = !rectE.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z7 = false;
        }
        view.offsetTopAndBottom(i8);
        if (view.getVisibility() == 0) {
            o(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                o((View) parent2);
            }
        }
        if (z7 && rectE.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectE);
        }
    }

    public static i0 j(View view, i0 i0Var) {
        WindowInsets windowInsetsG = i0Var.g();
        if (windowInsetsG != null) {
            WindowInsets windowInsetsB = C.b(view, windowInsetsG);
            if (!windowInsetsB.equals(windowInsetsG)) {
                return i0.h(windowInsetsB, view);
            }
        }
        return i0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C0259h k(View view, C0259h c0259h) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + c0259h + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return L.b(view, c0259h);
        }
        Q.j jVar = (Q.j) view.getTag(R.id.tag_on_receive_content_listener);
        InterfaceC0270t interfaceC0270t = f4847e;
        if (jVar == null) {
            if (view instanceof InterfaceC0270t) {
                interfaceC0270t = (InterfaceC0270t) view;
            }
            return interfaceC0270t.a(c0259h);
        }
        C0259h c0259hA = Q.j.a(view, c0259h);
        if (c0259hA == null) {
            return null;
        }
        if (view instanceof InterfaceC0270t) {
            interfaceC0270t = (InterfaceC0270t) view;
        }
        return interfaceC0270t.a(c0259hA);
    }

    public static void l(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i8) {
        if (Build.VERSION.SDK_INT >= 29) {
            J.b(view, context, iArr, attributeSet, typedArray, i8, 0);
        }
    }

    public static void m(View view, C0253b c0253b) {
        if (c0253b == null && (d(view) instanceof C0252a)) {
            c0253b = new C0253b();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        view.setAccessibilityDelegate(c0253b == null ? null : c0253b.f4878b);
    }

    public static void n(View view, CharSequence charSequence) {
        new C0276z(R.id.tag_accessibility_pane_title, 8, 28, true ? 1 : 0).f(view, charSequence);
        A a8 = f4848f;
        if (charSequence == null) {
            a8.f4831G.remove(view);
            view.removeOnAttachStateChangeListener(a8);
            view.getViewTreeObserver().removeOnGlobalLayoutListener(a8);
        } else {
            a8.f4831G.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(a8);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(a8);
            }
        }
    }

    public static void o(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }
}
