package p000a;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.Field;
import p032e0.EnumC2981i;
import p032e0.InterfaceC2983k;
import p032e0.m;

/* JADX INFO: loaded from: classes.dex */
public final class p implements InterfaceC2983k {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static int f8600H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static Field f8601I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static Field f8602J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static Field f8603K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Activity f8604G;

    @Override // p032e0.InterfaceC2983k
    public final void b(m mVar, EnumC2981i enumC2981i) {
        if (enumC2981i != EnumC2981i.ON_DESTROY) {
            return;
        }
        if (f8600H == 0) {
            try {
                f8600H = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f8602J = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                f8603K = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f8601I = declaredField3;
                declaredField3.setAccessible(true);
                f8600H = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f8600H == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f8604G.getSystemService("input_method");
            try {
                Object obj = f8601I.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f8602J.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f8603K.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused2) {
                            }
                        } catch (ClassCastException unused3) {
                        } catch (IllegalAccessException unused4) {
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (IllegalAccessException unused5) {
            }
        }
    }
}
