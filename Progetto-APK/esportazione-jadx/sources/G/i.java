package G;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class i extends h {
    @Override // G.h
    public final Typeface Z(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f3294N, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f3300T.invoke(null, objNewInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e8) {
            throw new RuntimeException(e8);
        }
    }

    @Override // G.h
    public final Method e0(Class cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
