package Y;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class F {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p132r.m f7700b = new p132r.m();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ K f7701a;

    public F(K k8) {
        this.f7701a = k8;
    }

    public static Class b(ClassLoader classLoader, String str) throws ClassNotFoundException {
        p132r.m mVar = f7700b;
        p132r.m mVar2 = (p132r.m) mVar.get(classLoader);
        if (mVar2 == null) {
            mVar2 = new p132r.m();
            mVar.put(classLoader, mVar2);
        }
        Class cls = (Class) mVar2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        mVar2.put(str, cls2);
        return cls2;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e8) {
            throw new r(p000a.r.g("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), 0, e8);
        } catch (ClassNotFoundException e9) {
            throw new r(p000a.r.g("Unable to instantiate fragment ", str, ": make sure class name exists"), 0, e9);
        }
    }

    public final AbstractComponentCallbacksC0406s a(String str) {
        Context context = this.f7701a.f7742u.f7980N;
        Object obj = AbstractComponentCallbacksC0406s.f7929B0;
        try {
            return (AbstractComponentCallbacksC0406s) c(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e8) {
            throw new r(p000a.r.g("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), 0, e8);
        } catch (InstantiationException e9) {
            throw new r(p000a.r.g("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), 0, e9);
        } catch (NoSuchMethodException e10) {
            throw new r(p000a.r.g("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), 0, e10);
        } catch (InvocationTargetException e11) {
            throw new r(p000a.r.g("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), 0, e11);
        }
    }
}
