package com.google.protobuf;

import Z3.C0433o;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.protobuf.k2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2918k2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f24462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final B2 f24463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final B2 f24464c;

    static {
        Class<?> cls;
        Class<?> cls2;
        B2 b8 = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f24462a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                b8 = (B2) cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused3) {
            }
        }
        f24463b = b8;
        f24464c = new B2();
    }

    public static Object A(Object obj, int i8, List list, InterfaceC2941q1 interfaceC2941q1, Object obj2, B2 b8) {
        if (interfaceC2941q1 == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i9 = 0;
            for (int i10 = 0; i10 < size; i10++) {
                Integer num = (Integer) list.get(i10);
                int iIntValue = num.intValue();
                if (interfaceC2941q1.a(iIntValue)) {
                    if (i10 != i9) {
                        list.set(i9, num);
                    }
                    i9++;
                } else {
                    obj2 = D(obj, i8, iIntValue, obj2, b8);
                }
            }
            if (i9 != size) {
                list.subList(i9, size).clear();
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!interfaceC2941q1.a(iIntValue2)) {
                    obj2 = D(obj, i8, iIntValue2, obj2, b8);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void B(B2 b8, Object obj, Object obj2) {
        b8.getClass();
        AbstractC2909i1 abstractC2909i1 = (AbstractC2909i1) obj;
        A2 a2E = abstractC2909i1.unknownFields;
        A2 a8 = ((AbstractC2909i1) obj2).unknownFields;
        A2 a9 = A2.f24234f;
        if (!a9.equals(a8)) {
            if (a9.equals(a2E)) {
                a2E = A2.e(a2E, a8);
            } else {
                a2E.getClass();
                if (!a8.equals(a9)) {
                    a2E.a();
                    int i8 = a2E.f24235a + a8.f24235a;
                    a2E.b(i8);
                    System.arraycopy(a8.f24236b, 0, a2E.f24236b, a2E.f24235a, a8.f24235a);
                    System.arraycopy(a8.f24237c, 0, a2E.f24237c, a2E.f24235a, a8.f24235a);
                    a2E.f24235a = i8;
                }
            }
        }
        abstractC2909i1.unknownFields = a2E;
    }

    public static boolean C(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static Object D(Object obj, int i8, int i9, Object obj2, B2 b8) {
        if (obj2 == null) {
            b8.getClass();
            obj2 = B2.a(obj);
        }
        b8.getClass();
        ((A2) obj2).f(i8 << 3, Long.valueOf(i9));
        return obj2;
    }

    public static void E(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).y0(i8, ((Boolean) list.get(i9)).booleanValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Boolean) list.get(i11)).getClass();
            Logger logger = AbstractC2970z.f24550d;
            i10++;
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(i10);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).x0(((Boolean) list.get(i9)).booleanValue() ? (byte) 1 : (byte) 0);
            i9++;
        }
    }

    public static void F(int i8, List list, C0433o c0433o) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c0433o.getClass();
        for (int i9 = 0; i9 < list.size(); i9++) {
            ((AbstractC2970z) c0433o.f8372H).A0(i8, (r) list.get(i9));
        }
    }

    public static void G(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                AbstractC2970z abstractC2970z = (AbstractC2970z) c0433o.f8372H;
                double dDoubleValue = ((Double) list.get(i9)).doubleValue();
                abstractC2970z.getClass();
                abstractC2970z.E0(i8, Double.doubleToRawLongBits(dDoubleValue));
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Double) list.get(i11)).getClass();
            Logger logger = AbstractC2970z.f24550d;
            i10 += 8;
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(i10);
        while (i9 < list.size()) {
            AbstractC2970z abstractC2970z2 = (AbstractC2970z) c0433o.f8372H;
            double dDoubleValue2 = ((Double) list.get(i9)).doubleValue();
            abstractC2970z2.getClass();
            abstractC2970z2.F0(Double.doubleToRawLongBits(dDoubleValue2));
            i9++;
        }
    }

    public static void H(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).G0(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int iI0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iI0 += AbstractC2970z.i0(((Integer) list.get(i10)).intValue());
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(iI0);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).H0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void I(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).C0(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Integer) list.get(i11)).getClass();
            Logger logger = AbstractC2970z.f24550d;
            i10 += 4;
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(i10);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).D0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void J(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).E0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Long) list.get(i11)).getClass();
            Logger logger = AbstractC2970z.f24550d;
            i10 += 8;
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(i10);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).F0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void K(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                AbstractC2970z abstractC2970z = (AbstractC2970z) c0433o.f8372H;
                float fFloatValue = ((Float) list.get(i9)).floatValue();
                abstractC2970z.getClass();
                abstractC2970z.C0(i8, Float.floatToRawIntBits(fFloatValue));
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Float) list.get(i11)).getClass();
            Logger logger = AbstractC2970z.f24550d;
            i10 += 4;
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(i10);
        while (i9 < list.size()) {
            AbstractC2970z abstractC2970z2 = (AbstractC2970z) c0433o.f8372H;
            float fFloatValue2 = ((Float) list.get(i9)).floatValue();
            abstractC2970z2.getClass();
            abstractC2970z2.D0(Float.floatToRawIntBits(fFloatValue2));
            i9++;
        }
    }

    public static void L(int i8, List list, C0433o c0433o, InterfaceC2914j2 interfaceC2914j2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c0433o.getClass();
        for (int i9 = 0; i9 < list.size(); i9++) {
            c0433o.o(i8, interfaceC2914j2, list.get(i9));
        }
    }

    public static void M(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).G0(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int iI0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iI0 += AbstractC2970z.i0(((Integer) list.get(i10)).intValue());
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(iI0);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).H0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void N(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).R0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int iU0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iU0 += AbstractC2970z.u0(((Long) list.get(i10)).longValue());
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(iU0);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).S0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void O(int i8, List list, C0433o c0433o, InterfaceC2914j2 interfaceC2914j2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c0433o.getClass();
        for (int i9 = 0; i9 < list.size(); i9++) {
            c0433o.r(i8, interfaceC2914j2, list.get(i9));
        }
    }

    public static void P(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).C0(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Integer) list.get(i11)).getClass();
            Logger logger = AbstractC2970z.f24550d;
            i10 += 4;
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(i10);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).D0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void Q(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).E0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Long) list.get(i11)).getClass();
            Logger logger = AbstractC2970z.f24550d;
            i10 += 8;
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(i10);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).F0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void R(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                AbstractC2970z abstractC2970z = (AbstractC2970z) c0433o.f8372H;
                int iIntValue = ((Integer) list.get(i9)).intValue();
                abstractC2970z.P0(i8, (iIntValue >> 31) ^ (iIntValue << 1));
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int iS0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            int iIntValue2 = ((Integer) list.get(i10)).intValue();
            iS0 += AbstractC2970z.s0((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(iS0);
        while (i9 < list.size()) {
            AbstractC2970z abstractC2970z2 = (AbstractC2970z) c0433o.f8372H;
            int iIntValue3 = ((Integer) list.get(i9)).intValue();
            abstractC2970z2.Q0((iIntValue3 >> 31) ^ (iIntValue3 << 1));
            i9++;
        }
    }

    public static void S(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                AbstractC2970z abstractC2970z = (AbstractC2970z) c0433o.f8372H;
                long jLongValue = ((Long) list.get(i9)).longValue();
                abstractC2970z.R0(i8, (jLongValue >> 63) ^ (jLongValue << 1));
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int iU0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            long jLongValue2 = ((Long) list.get(i10)).longValue();
            iU0 += AbstractC2970z.u0((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(iU0);
        while (i9 < list.size()) {
            AbstractC2970z abstractC2970z2 = (AbstractC2970z) c0433o.f8372H;
            long jLongValue3 = ((Long) list.get(i9)).longValue();
            abstractC2970z2.S0((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            i9++;
        }
    }

    public static void T(int i8, List list, C0433o c0433o) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c0433o.getClass();
        int i9 = 0;
        if (!(list instanceof A1)) {
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).M0(i8, (String) list.get(i9));
                i9++;
            }
            return;
        }
        A1 a8 = (A1) list;
        while (i9 < list.size()) {
            Object objM = a8.m(i9);
            if (objM instanceof String) {
                ((AbstractC2970z) c0433o.f8372H).M0(i8, (String) objM);
            } else {
                ((AbstractC2970z) c0433o.f8372H).A0(i8, (r) objM);
            }
            i9++;
        }
    }

    public static void U(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).P0(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int iS0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iS0 += AbstractC2970z.s0(((Integer) list.get(i10)).intValue());
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(iS0);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).Q0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void V(int i8, List list, C0433o c0433o, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        if (!z7) {
            c0433o.getClass();
            while (i9 < list.size()) {
                ((AbstractC2970z) c0433o.f8372H).R0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        ((AbstractC2970z) c0433o.f8372H).O0(i8, 2);
        int iU0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iU0 += AbstractC2970z.u0(((Long) list.get(i10)).longValue());
        }
        ((AbstractC2970z) c0433o.f8372H).Q0(iU0);
        while (i9 < list.size()) {
            ((AbstractC2970z) c0433o.f8372H).S0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static int a(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC2970z.Y(i8) * size;
    }

    public static int b(List list) {
        return list.size();
    }

    public static int c(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iQ0 = AbstractC2970z.q0(i8) * size;
        for (int i9 = 0; i9 < list.size(); i9++) {
            iQ0 += AbstractC2970z.a0((r) list.get(i9));
        }
        return iQ0;
    }

    public static int d(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC2970z.q0(i8) * size) + e(list);
    }

    public static int e(List list) {
        int iI0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2921l1) {
            C2921l1 c2921l1 = (C2921l1) list;
            iI0 = 0;
            while (i8 < size) {
                iI0 += AbstractC2970z.i0(c2921l1.n(i8));
                i8++;
            }
        } else {
            iI0 = 0;
            while (i8 < size) {
                iI0 += AbstractC2970z.i0(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iI0;
    }

    public static int f(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC2970z.d0(i8) * size;
    }

    public static int g(List list) {
        return list.size() * 4;
    }

    public static int h(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC2970z.e0(i8) * size;
    }

    public static int i(List list) {
        return list.size() * 8;
    }

    public static int j(int i8, List list, InterfaceC2914j2 interfaceC2914j2) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iG0 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            iG0 += AbstractC2970z.g0(i8, (Q1) list.get(i9), interfaceC2914j2);
        }
        return iG0;
    }

    public static int k(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC2970z.q0(i8) * size) + l(list);
    }

    public static int l(List list) {
        int iI0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2921l1) {
            C2921l1 c2921l1 = (C2921l1) list;
            iI0 = 0;
            while (i8 < size) {
                iI0 += AbstractC2970z.i0(c2921l1.n(i8));
                i8++;
            }
        } else {
            iI0 = 0;
            while (i8 < size) {
                iI0 += AbstractC2970z.i0(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iI0;
    }

    public static int m(int i8, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (AbstractC2970z.q0(i8) * list.size()) + n(list);
    }

    public static int n(List list) {
        int iU0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof F1) {
            F1 f8 = (F1) list;
            iU0 = 0;
            while (i8 < size) {
                f8.l(i8);
                iU0 += AbstractC2970z.u0(f8.f24249H[i8]);
                i8++;
            }
        } else {
            iU0 = 0;
            while (i8 < size) {
                iU0 += AbstractC2970z.u0(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iU0;
    }

    public static int o(int i8, InterfaceC2914j2 interfaceC2914j2, Object obj) {
        int iQ0 = AbstractC2970z.q0(i8);
        int serializedSize = ((AbstractC2879b) ((Q1) obj)).getSerializedSize(interfaceC2914j2);
        return AbstractC2970z.s0(serializedSize) + serializedSize + iQ0;
    }

    public static int p(int i8, List list, InterfaceC2914j2 interfaceC2914j2) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iQ0 = AbstractC2970z.q0(i8) * size;
        for (int i9 = 0; i9 < size; i9++) {
            int serializedSize = ((AbstractC2879b) ((Q1) list.get(i9))).getSerializedSize(interfaceC2914j2);
            iQ0 += AbstractC2970z.s0(serializedSize) + serializedSize;
        }
        return iQ0;
    }

    public static int q(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC2970z.q0(i8) * size) + r(list);
    }

    public static int r(List list) {
        int iS0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2921l1) {
            C2921l1 c2921l1 = (C2921l1) list;
            iS0 = 0;
            while (i8 < size) {
                int iN = c2921l1.n(i8);
                iS0 += AbstractC2970z.s0((iN >> 31) ^ (iN << 1));
                i8++;
            }
        } else {
            iS0 = 0;
            while (i8 < size) {
                int iIntValue = ((Integer) list.get(i8)).intValue();
                iS0 += AbstractC2970z.s0((iIntValue >> 31) ^ (iIntValue << 1));
                i8++;
            }
        }
        return iS0;
    }

    public static int s(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC2970z.q0(i8) * size) + t(list);
    }

    public static int t(List list) {
        int iU0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof F1) {
            F1 f8 = (F1) list;
            iU0 = 0;
            while (i8 < size) {
                f8.l(i8);
                long j8 = f8.f24249H[i8];
                iU0 += AbstractC2970z.u0((j8 >> 63) ^ (j8 << 1));
                i8++;
            }
        } else {
            iU0 = 0;
            while (i8 < size) {
                long jLongValue = ((Long) list.get(i8)).longValue();
                iU0 += AbstractC2970z.u0((jLongValue >> 63) ^ (jLongValue << 1));
                i8++;
            }
        }
        return iU0;
    }

    public static int u(int i8, List list) {
        int size = list.size();
        int i9 = 0;
        if (size == 0) {
            return 0;
        }
        int iQ0 = AbstractC2970z.q0(i8) * size;
        if (list instanceof A1) {
            A1 a8 = (A1) list;
            while (i9 < size) {
                Object objM = a8.m(i9);
                iQ0 = (objM instanceof r ? AbstractC2970z.a0((r) objM) : AbstractC2970z.p0((String) objM)) + iQ0;
                i9++;
            }
        } else {
            while (i9 < size) {
                Object obj = list.get(i9);
                iQ0 = (obj instanceof r ? AbstractC2970z.a0((r) obj) : AbstractC2970z.p0((String) obj)) + iQ0;
                i9++;
            }
        }
        return iQ0;
    }

    public static int v(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC2970z.q0(i8) * size) + w(list);
    }

    public static int w(List list) {
        int iS0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2921l1) {
            C2921l1 c2921l1 = (C2921l1) list;
            iS0 = 0;
            while (i8 < size) {
                iS0 += AbstractC2970z.s0(c2921l1.n(i8));
                i8++;
            }
        } else {
            iS0 = 0;
            while (i8 < size) {
                iS0 += AbstractC2970z.s0(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iS0;
    }

    public static int x(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC2970z.q0(i8) * size) + y(list);
    }

    public static int y(List list) {
        int iU0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof F1) {
            F1 f8 = (F1) list;
            iU0 = 0;
            while (i8 < size) {
                f8.l(i8);
                iU0 += AbstractC2970z.u0(f8.f24249H[i8]);
                i8++;
            }
        } else {
            iU0 = 0;
            while (i8 < size) {
                iU0 += AbstractC2970z.u0(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iU0;
    }

    public static Object z(Object obj, int i8, AbstractList abstractList, InterfaceC2937p1 interfaceC2937p1, Object obj2, B2 b8) {
        if (interfaceC2937p1 == null) {
            return obj2;
        }
        int size = abstractList.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            Integer num = (Integer) abstractList.get(i10);
            int iIntValue = num.intValue();
            if (interfaceC2937p1.b(iIntValue) != null) {
                if (i10 != i9) {
                    abstractList.set(i9, num);
                }
                i9++;
            } else {
                obj2 = D(obj, i8, iIntValue, obj2, b8);
            }
        }
        if (i9 != size) {
            abstractList.subList(i9, size).clear();
        }
        return obj2;
    }
}
