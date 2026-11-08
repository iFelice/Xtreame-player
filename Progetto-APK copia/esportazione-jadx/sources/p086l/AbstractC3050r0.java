package p086l;

import android.graphics.drawable.Drawable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: l.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3050r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f26350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Method f26351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Field f26352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Field f26353d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Field f26354e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Field f26355f;

    /* JADX WARN: Code duplicated, block: B:26:0x0058  */
    /* JADX WARN: Code duplicated, block: B:27:0x0065  */
    static {
        Method method;
        Field field;
        Field field2;
        Field field3;
        Field field4;
        boolean z7;
        try {
            Class<?> cls = Class.forName("android.graphics.Insets");
            method = Drawable.class.getMethod("getOpticalInsets", new Class[0]);
            try {
                field = cls.getField("left");
                try {
                    field2 = cls.getField("top");
                    try {
                        field3 = cls.getField("right");
                        try {
                            field4 = cls.getField("bottom");
                            z7 = true;
                        } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused) {
                            field4 = null;
                            z7 = false;
                        }
                    } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused2) {
                        field3 = null;
                    }
                } catch (ClassNotFoundException unused3) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z7 = false;
                    if (z7) {
                        f26351b = method;
                        f26352c = field;
                        f26353d = field2;
                        f26354e = field3;
                        f26355f = field4;
                        f26350a = true;
                        return;
                    }
                    f26351b = null;
                    f26352c = null;
                    f26353d = null;
                    f26354e = null;
                    f26355f = null;
                    f26350a = false;
                } catch (NoSuchFieldException unused4) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z7 = false;
                    if (z7) {
                        f26351b = method;
                        f26352c = field;
                        f26353d = field2;
                        f26354e = field3;
                        f26355f = field4;
                        f26350a = true;
                        return;
                    }
                    f26351b = null;
                    f26352c = null;
                    f26353d = null;
                    f26354e = null;
                    f26355f = null;
                    f26350a = false;
                } catch (NoSuchMethodException unused5) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z7 = false;
                    if (z7) {
                        f26351b = method;
                        f26352c = field;
                        f26353d = field2;
                        f26354e = field3;
                        f26355f = field4;
                        f26350a = true;
                        return;
                    }
                    f26351b = null;
                    f26352c = null;
                    f26353d = null;
                    f26354e = null;
                    f26355f = null;
                    f26350a = false;
                }
            } catch (ClassNotFoundException unused6) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z7 = false;
                if (z7) {
                    f26351b = method;
                    f26352c = field;
                    f26353d = field2;
                    f26354e = field3;
                    f26355f = field4;
                    f26350a = true;
                    return;
                }
                f26351b = null;
                f26352c = null;
                f26353d = null;
                f26354e = null;
                f26355f = null;
                f26350a = false;
            } catch (NoSuchFieldException unused7) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z7 = false;
                if (z7) {
                    f26351b = method;
                    f26352c = field;
                    f26353d = field2;
                    f26354e = field3;
                    f26355f = field4;
                    f26350a = true;
                    return;
                }
                f26351b = null;
                f26352c = null;
                f26353d = null;
                f26354e = null;
                f26355f = null;
                f26350a = false;
            } catch (NoSuchMethodException unused8) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z7 = false;
                if (z7) {
                    f26351b = method;
                    f26352c = field;
                    f26353d = field2;
                    f26354e = field3;
                    f26355f = field4;
                    f26350a = true;
                    return;
                }
                f26351b = null;
                f26352c = null;
                f26353d = null;
                f26354e = null;
                f26355f = null;
                f26350a = false;
            }
        } catch (ClassNotFoundException unused9) {
            method = null;
            field = null;
        } catch (NoSuchFieldException unused10) {
            method = null;
            field = null;
        } catch (NoSuchMethodException unused11) {
            method = null;
            field = null;
        }
        if (z7) {
            f26351b = method;
            f26352c = field;
            f26353d = field2;
            f26354e = field3;
            f26355f = field4;
            f26350a = true;
            return;
        }
        f26351b = null;
        f26352c = null;
        f26353d = null;
        f26354e = null;
        f26355f = null;
        f26350a = false;
    }
}
