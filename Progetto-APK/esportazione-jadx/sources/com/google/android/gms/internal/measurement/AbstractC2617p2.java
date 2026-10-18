package com.google.android.gms.internal.measurement;

import N.InterfaceC0264m;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import com.google.android.gms.internal.ads.PB;
import com.google.android.gms.internal.cast.C2523z1;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import pe.hf.black20.R;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.p2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2617p2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f23237a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f23238b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f23239c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Field f23240d;

    public static boolean e(View view, KeyEvent keyEvent) {
        WeakReference weakReference;
        ArrayList arrayList;
        int size;
        int iIndexOfKey;
        WeakHashMap weakHashMap = N.N.f4843a;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList2 = N.M.f4839d;
        N.M m7 = (N.M) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (m7 == null) {
            m7 = new N.M();
            m7.f4840a = null;
            m7.f4841b = null;
            m7.f4842c = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, m7);
        }
        WeakReference weakReference2 = m7.f4842c;
        if (weakReference2 != null && weakReference2.get() == keyEvent) {
            return false;
        }
        m7.f4842c = new WeakReference(keyEvent);
        if (m7.f4841b == null) {
            m7.f4841b = new SparseArray();
        }
        SparseArray sparseArray = m7.f4841b;
        if (keyEvent.getAction() != 1 || (iIndexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) < 0) {
            weakReference = null;
        } else {
            weakReference = (WeakReference) sparseArray.valueAt(iIndexOfKey);
            sparseArray.removeAt(iIndexOfKey);
        }
        if (weakReference == null) {
            weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
        }
        if (weakReference == null) {
            return false;
        }
        View view2 = (View) weakReference.get();
        if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
            return true;
        }
        A0.O.I(arrayList.get(size));
        throw null;
    }

    public static boolean f(InterfaceC0264m interfaceC0264m, View view, Window.Callback callback, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListener;
        if (interfaceC0264m == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return interfaceC0264m.e(keyEvent);
        }
        if (callback instanceof Activity) {
            Activity activity = (Activity) callback;
            activity.onUserInteraction();
            Window window = activity.getWindow();
            if (window.hasFeature(8)) {
                ActionBar actionBar = activity.getActionBar();
                if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                    if (!f23237a) {
                        try {
                            f23238b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
                        } catch (NoSuchMethodException unused) {
                        }
                        f23237a = true;
                    }
                    Method method = f23238b;
                    if (method != null) {
                        try {
                            Object objInvoke = method.invoke(actionBar, keyEvent);
                            if (objInvoke != null && ((Boolean) objInvoke).booleanValue()) {
                                return true;
                            }
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                }
            }
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (N.N.c(decorView, keyEvent)) {
                return true;
            }
            return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
        }
        if (!(callback instanceof Dialog)) {
            return (view != null && N.N.c(view, keyEvent)) || interfaceC0264m.e(keyEvent);
        }
        Dialog dialog = (Dialog) callback;
        if (!f23239c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f23240d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused3) {
            }
            f23239c = true;
        }
        Field field = f23240d;
        if (field != null) {
            try {
                onKeyListener = (DialogInterface.OnKeyListener) field.get(dialog);
            } catch (IllegalAccessException unused4) {
                onKeyListener = null;
            }
        } else {
            onKeyListener = null;
        }
        if (onKeyListener != null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window2 = dialog.getWindow();
        if (window2.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView2 = window2.getDecorView();
        if (N.N.c(decorView2, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView2 != null ? decorView2.getKeyDispatcherState() : null, dialog);
    }

    public static Calendar g(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(locale);
        calendar2.setTimeInMillis(timeInMillis);
        return calendar2;
    }

    public static C2600m2 r() {
        String strB;
        ClassLoader classLoader = AbstractC2617p2.class.getClassLoader();
        if (C2600m2.class.equals(C2600m2.class)) {
            strB = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";
        } else {
            if (!C2600m2.class.getPackage().equals(AbstractC2617p2.class.getPackage())) {
                throw new IllegalArgumentException(C2600m2.class.getName());
            }
            strB = A0.O.B(C2600m2.class.getPackage().getName(), ".BlazeGenerated", C2600m2.class.getSimpleName(), "Loader");
        }
        try {
            try {
                try {
                    A0.O.I(Class.forName(strB, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0]));
                    throw null;
                } catch (InstantiationException e8) {
                    throw new IllegalStateException(e8);
                } catch (NoSuchMethodException e9) {
                    throw new IllegalStateException(e9);
                }
            } catch (IllegalAccessException e10) {
                throw new IllegalStateException(e10);
            } catch (InvocationTargetException e11) {
                throw new IllegalStateException(e11);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(AbstractC2617p2.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    A0.O.I(it.next());
                    throw null;
                } catch (ServiceConfigurationError e12) {
                    Logger.getLogger(C2588k2.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(C2600m2.class.getSimpleName()), (Throwable) e12);
                }
            }
            if (arrayList.size() == 1) {
                return (C2600m2) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (C2600m2) C2600m2.class.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e13) {
                throw new IllegalStateException(e13);
            } catch (NoSuchMethodException e14) {
                throw new IllegalStateException(e14);
            } catch (InvocationTargetException e15) {
                throw new IllegalStateException(e15);
            }
        }
    }

    public boolean a() {
        return false;
    }

    public abstract boolean b(p148t.h hVar, p148t.e eVar, p148t.e eVar2);

    public abstract boolean c(p148t.h hVar, Object obj, Object obj2);

    public abstract boolean d(p148t.h hVar, p148t.g gVar, p148t.g gVar2);

    public abstract void h(p043f3.j jVar);

    public abstract void i(Object obj);

    public abstract void j(p148t.g gVar, p148t.g gVar2);

    public abstract void k(p148t.g gVar, Thread thread);

    public abstract void m();

    public abstract void n();

    public abstract int o(PB pb);

    public abstract C2523z1 p(com.google.android.gms.internal.cast.F1 f8);

    public abstract com.google.android.gms.internal.cast.E1 q(com.google.android.gms.internal.cast.F1 f8);

    public abstract void s(PB pb, Set set);

    public abstract void t(com.google.android.gms.internal.cast.E1 e8, com.google.android.gms.internal.cast.E1 e9);

    public abstract void u(com.google.android.gms.internal.cast.E1 e8, Thread thread);

    public abstract boolean v(com.google.android.gms.internal.cast.F1 f8, C2523z1 c2523z1, C2523z1 c2523z2);

    public abstract boolean w(com.google.android.gms.internal.cast.F1 f8, Object obj, Object obj2);

    public abstract boolean x(com.google.android.gms.internal.cast.F1 f8, com.google.android.gms.internal.cast.E1 e8, com.google.android.gms.internal.cast.E1 e9);

    public void l() {
    }
}
