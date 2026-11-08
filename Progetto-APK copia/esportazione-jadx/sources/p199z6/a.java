package p199z6;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import p086l.Z0;
import p185x6.e;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements e, d, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final e f31926G;

    public a(e eVar) {
        this.f31926G = eVar;
    }

    @Override // p199z6.d
    public final d a() {
        e eVar = this.f31926G;
        if (eVar instanceof d) {
            return (d) eVar;
        }
        return null;
    }

    @Override // p185x6.e
    public final void b(Object obj) {
        e eVar = this;
        while (true) {
            a aVar = (a) eVar;
            e eVar2 = aVar.f31926G;
            q0.e(eVar2);
            try {
                obj = aVar.f(obj);
                if (obj == p192y6.a.f31454G) {
                    return;
                }
            } catch (Throwable th) {
                obj = q0.n(th);
            }
            aVar.g();
            if (!(eVar2 instanceof a)) {
                eVar2.b(obj);
                return;
            }
            eVar = eVar2;
        }
    }

    public e d(Object obj, e eVar) {
        q0.h(eVar, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public final StackTraceElement e() {
        int iIntValue;
        String strC;
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        e eVar = (e) getClass().getAnnotation(e.class);
        String str = null;
        if (eVar == null) {
            return null;
        }
        int iV = eVar.v();
        if (iV > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + iV + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            iIntValue = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int i8 = iIntValue >= 0 ? eVar.l()[iIntValue] : -1;
        Z0 z7 = f.f31931b;
        Z0 z8 = f.f31930a;
        if (z7 == null) {
            try {
                Z0 z9 = new Z0(Class.class.getDeclaredMethod("getModule", new Class[0]), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
                f.f31931b = z9;
                z7 = z9;
            } catch (Exception unused2) {
                f.f31931b = z8;
                z7 = z8;
            }
        }
        if (z7 != z8 && (method = z7.f26214a) != null && (objInvoke = method.invoke(getClass(), new Object[0])) != null && (method2 = z7.f26215b) != null && (objInvoke2 = method2.invoke(objInvoke, new Object[0])) != null) {
            Method method3 = z7.f26216c;
            Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, new Object[0]) : null;
            if (objInvoke3 instanceof String) {
                str = (String) objInvoke3;
            }
        }
        if (str == null) {
            strC = eVar.c();
        } else {
            strC = str + '/' + eVar.c();
        }
        return new StackTraceElement(strC, eVar.m(), eVar.f(), i8);
    }

    public abstract Object f(Object obj);

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object objE = e();
        if (objE == null) {
            objE = getClass().getName();
        }
        sb.append(objE);
        return sb.toString();
    }

    public void g() {
    }
}
