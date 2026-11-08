package X1;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;
import p086l.b1;

/* JADX INFO: loaded from: classes.dex */
public abstract class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final B f7627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Field f7628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f7629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b1 f7630d;

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            f7627a = new C();
        } else {
            f7627a = new B();
        }
        f7630d = new b1(10, Float.class, "translationAlpha");
        new b1(11, Rect.class, "clipBounds");
    }

    public static void a(View view, int i8, int i9, int i10, int i11) {
        f7627a.i(view, i8, i9, i10, i11);
    }

    public static void b(View view, int i8) {
        if (!f7629c) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f7628b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtils", "fetchViewFlagsField: ");
            }
            f7629c = true;
        }
        Field field = f7628b;
        if (field != null) {
            try {
                f7628b.setInt(view, i8 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }
}
