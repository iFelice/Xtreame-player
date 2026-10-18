package N6;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f4973a = 0;

    static {
        x xVar = x.f5003g;
        a(-1, Throwable.class);
        try {
            int i8 = g.f4974a;
        } catch (Throwable unused) {
            x xVar2 = x.f5003g;
        }
    }

    public static final int a(int i8, Class cls) {
        Object objN;
        q0.h(cls, "<this>");
        D6.l.a(cls);
        int i9 = 0;
        do {
            try {
                int i10 = 0;
                for (Field field : cls.getDeclaredFields()) {
                    if (!Modifier.isStatic(field.getModifiers())) {
                        i10++;
                    }
                }
                i9 += i10;
                cls = cls.getSuperclass();
            } catch (Throwable th) {
                objN = q0.n(th);
            }
        } while (cls != null);
        objN = Integer.valueOf(i9);
        Object objValueOf = Integer.valueOf(i8);
        if (objN instanceof p155t6.d) {
            objN = objValueOf;
        }
        return ((Number) objN).intValue();
    }
}
