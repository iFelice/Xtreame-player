package p086l;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: l.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3058v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Method f26396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Method f26397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Method f26398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f26399d;

    static {
        try {
            Class cls = Integer.TYPE;
            Class cls2 = Float.TYPE;
            Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
            f26396a = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
            f26397b = declaredMethod2;
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
            f26398c = declaredMethod3;
            declaredMethod3.setAccessible(true);
            f26399d = true;
        } catch (NoSuchMethodException e8) {
            e8.printStackTrace();
        }
    }
}
