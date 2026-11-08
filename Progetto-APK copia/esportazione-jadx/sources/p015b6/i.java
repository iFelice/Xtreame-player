package p015b6;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f9918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f9919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f9920c;

    public i(ArrayList arrayList) {
        this.f9918a = arrayList;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        if (objArr == null) {
            objArr = m.f9937a;
        }
        if (name.equals("supports") && Boolean.TYPE == returnType) {
            return Boolean.TRUE;
        }
        if (name.equals("unsupported") && Void.TYPE == returnType) {
            this.f9919b = true;
            return null;
        }
        boolean zEquals = name.equals("protocols");
        List list = this.f9918a;
        if (zEquals && objArr.length == 0) {
            return list;
        }
        if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
            Object obj2 = objArr[0];
            if (obj2 instanceof List) {
                List list2 = (List) obj2;
                int size = list2.size();
                for (int i8 = 0; i8 < size; i8++) {
                    if (list.contains(list2.get(i8))) {
                        String str = (String) list2.get(i8);
                        this.f9920c = str;
                        return str;
                    }
                }
                String str2 = (String) list.get(0);
                this.f9920c = str2;
                return str2;
            }
        }
        if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
            return method.invoke(this, objArr);
        }
        this.f9920c = (String) objArr[0];
        return null;
    }
}
