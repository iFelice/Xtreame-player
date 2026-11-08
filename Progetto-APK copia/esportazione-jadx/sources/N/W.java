package N;

import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public abstract class W {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Field f4864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Field f4865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Field f4866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f4867d;

    static {
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            f4864a = declaredField;
            declaredField.setAccessible(true);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            Field declaredField2 = cls.getDeclaredField("mStableInsets");
            f4865b = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = cls.getDeclaredField("mContentInsets");
            f4866c = declaredField3;
            declaredField3.setAccessible(true);
            f4867d = true;
        } catch (ReflectiveOperationException e8) {
            Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e8.getMessage(), e8);
        }
    }
}
