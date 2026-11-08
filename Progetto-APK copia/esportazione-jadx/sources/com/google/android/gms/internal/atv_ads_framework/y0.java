package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f22396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final A0 f22397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final A0 f22398c;

    static {
        Class<?> cls;
        Class<?> cls2;
        A0 a8 = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f22396a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                a8 = (A0) cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused3) {
            }
        }
        f22397b = a8;
        f22398c = new A0();
    }

    public static int A(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) + 8) * size;
    }

    public static int B(List list) {
        return list.size() * 8;
    }

    public static int C(int i8, List list, InterfaceC2418w0 interfaceC2418w0) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW = 0;
        for (int i9 = 0; i9 < size; i9++) {
            iW += L.W(i8, (E) list.get(i9), interfaceC2418w0);
        }
        return iW;
    }

    public static int D(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) * size) + E(list);
    }

    public static int E(List list) {
        int iX;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof V) {
            V v5 = (V) list;
            iX = 0;
            while (i8 < size) {
                v5.c(i8);
                iX += L.X(v5.f22294H[i8]);
                i8++;
            }
        } else {
            iX = 0;
            while (i8 < size) {
                iX += L.X(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iX;
    }

    public static int F(int i8, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) * list.size()) + G(list);
    }

    public static int G(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iA0 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            iA0 += L.a0(((Long) list.get(i8)).longValue());
        }
        return iA0;
    }

    public static int H(int i8, InterfaceC2418w0 interfaceC2418w0, Object obj) {
        Logger logger = L.f22274g;
        int iA = ((E) obj).a(interfaceC2418w0);
        return L.Z(i8 << 3) + L.Z(iA) + iA;
    }

    public static int I(int i8, List list, InterfaceC2418w0 interfaceC2418w0) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZ = L.Z(i8 << 3) * size;
        for (int i9 = 0; i9 < size; i9++) {
            int iA = ((E) list.get(i9)).a(interfaceC2418w0);
            iZ = AbstractC2090uc.w(iA, iA, iZ);
        }
        return iZ;
    }

    public static int J(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) * size) + K(list);
    }

    public static int K(List list) {
        int iZ;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof V) {
            V v5 = (V) list;
            iZ = 0;
            while (i8 < size) {
                v5.c(i8);
                int i9 = v5.f22294H[i8];
                iZ += L.Z((i9 >> 31) ^ (i9 + i9));
                i8++;
            }
        } else {
            iZ = 0;
            while (i8 < size) {
                int iIntValue = ((Integer) list.get(i8)).intValue();
                iZ += L.Z((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i8++;
            }
        }
        return iZ;
    }

    public static int L(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) * size) + M(list);
    }

    public static int M(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iA0 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            long jLongValue = ((Long) list.get(i8)).longValue();
            iA0 += L.a0((jLongValue >> 63) ^ (jLongValue + jLongValue));
        }
        return iA0;
    }

    public static int N(int i8, List list) {
        int size = list.size();
        int i9 = 0;
        if (size == 0) {
            return 0;
        }
        boolean z7 = list instanceof InterfaceC2379c0;
        int iZ = L.Z(i8 << 3) * size;
        if (z7) {
            InterfaceC2379c0 interfaceC2379c0 = (InterfaceC2379c0) list;
            while (i9 < size) {
                Object objD = interfaceC2379c0.d(i9);
                if (objD instanceof J) {
                    int iN = ((J) objD).n();
                    iZ = AbstractC2090uc.w(iN, iN, iZ);
                } else {
                    iZ = L.Y((String) objD) + iZ;
                }
                i9++;
            }
        } else {
            while (i9 < size) {
                Object obj = list.get(i9);
                if (obj instanceof J) {
                    int iN2 = ((J) obj).n();
                    iZ = AbstractC2090uc.w(iN2, iN2, iZ);
                } else {
                    iZ = L.Y((String) obj) + iZ;
                }
                i9++;
            }
        }
        return iZ;
    }

    public static int O(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) * size) + P(list);
    }

    public static int P(List list) {
        int iZ;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof V) {
            V v5 = (V) list;
            iZ = 0;
            while (i8 < size) {
                v5.c(i8);
                iZ += L.Z(v5.f22294H[i8]);
                i8++;
            }
        } else {
            iZ = 0;
            while (i8 < size) {
                iZ += L.Z(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iZ;
    }

    public static int Q(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) * size) + R(list);
    }

    public static int R(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iA0 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            iA0 += L.a0(((Long) list.get(i8)).longValue());
        }
        return iA0;
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
    public static void a(A0 a8, Object obj, Object obj2) {
        a8.getClass();
        U u7 = (U) obj;
        z0 z0Var = u7.zzc;
        z0 z0Var2 = ((U) obj2).zzc;
        z0 z0Var3 = z0.f22406e;
        if (!z0Var3.equals(z0Var2)) {
            if (z0Var3.equals(z0Var)) {
                z0Var.getClass();
                z0Var2.getClass();
                int[] iArrCopyOf = Arrays.copyOf(z0Var.f22407a, 0);
                System.arraycopy(z0Var2.f22407a, 0, iArrCopyOf, 0, 0);
                Object[] objArrCopyOf = Arrays.copyOf(z0Var.f22408b, 0);
                System.arraycopy(z0Var2.f22408b, 0, objArrCopyOf, 0, 0);
                z0Var = new z0(iArrCopyOf, objArrCopyOf, true);
            } else {
                z0Var.getClass();
                if (!z0Var2.equals(z0Var3)) {
                    if (!z0Var.f22410d) {
                        throw new UnsupportedOperationException();
                    }
                    int[] iArr = z0Var.f22407a;
                    int length = iArr.length;
                    System.arraycopy(z0Var2.f22407a, 0, iArr, 0, 0);
                    System.arraycopy(z0Var2.f22408b, 0, z0Var.f22408b, 0, 0);
                }
            }
        }
        u7.zzc = z0Var;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void b(int i8, List list, M m7, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                boolean zBooleanValue = ((Boolean) list.get(i9)).booleanValue();
                l4.T(i8 << 3);
                l4.K(zBooleanValue ? (byte) 1 : (byte) 0);
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Boolean) list.get(i11)).getClass();
            i10++;
        }
        l4.T(i10);
        while (i9 < list.size()) {
            l4.K(((Boolean) list.get(i9)).booleanValue() ? (byte) 1 : (byte) 0);
            i9++;
        }
    }

    public static void c(int i8, List list, M m7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m7.getClass();
        for (int i9 = 0; i9 < list.size(); i9++) {
            m7.f22280a.M(i8, (J) list.get(i9));
        }
    }

    public static void d(int i8, List list, M m7, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                l4.P(i8, Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Double) list.get(i11)).getClass();
            i10 += 8;
        }
        l4.T(i10);
        while (i9 < list.size()) {
            l4.Q(Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
            i9++;
        }
    }

    public static void e(int i8, List list, M m7, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                l4.T(i8 << 3);
                if (iIntValue >= 0) {
                    l4.T(iIntValue);
                } else {
                    l4.V(iIntValue);
                }
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int iX = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iX += L.X(((Integer) list.get(i10)).intValue());
        }
        l4.T(iX);
        while (i9 < list.size()) {
            int iIntValue2 = ((Integer) list.get(i9)).intValue();
            if (iIntValue2 >= 0) {
                l4.T(iIntValue2);
            } else {
                l4.V(iIntValue2);
            }
            i9++;
        }
    }

    public static void f(int i8, List list, M m7, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                l4.N(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Integer) list.get(i11)).getClass();
            i10 += 4;
        }
        l4.T(i10);
        while (i9 < list.size()) {
            l4.O(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void g(int i8, List list, M m7, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                l4.P(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Long) list.get(i11)).getClass();
            i10 += 8;
        }
        l4.T(i10);
        while (i9 < list.size()) {
            l4.Q(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void h(int i8, List list, M m7, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                l4.N(i8, Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Float) list.get(i11)).getClass();
            i10 += 4;
        }
        l4.T(i10);
        while (i9 < list.size()) {
            l4.O(Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
            i9++;
        }
    }

    public static void i(int i8, List list, M m7, InterfaceC2418w0 interfaceC2418w0) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            m7.k(i8, interfaceC2418w0, list.get(i9));
        }
    }

    public static void j(int i8, List list, M m7, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                l4.T(i8 << 3);
                if (iIntValue >= 0) {
                    l4.T(iIntValue);
                } else {
                    l4.V(iIntValue);
                }
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int iX = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iX += L.X(((Integer) list.get(i10)).intValue());
        }
        l4.T(iX);
        while (i9 < list.size()) {
            int iIntValue2 = ((Integer) list.get(i9)).intValue();
            if (iIntValue2 >= 0) {
                l4.T(iIntValue2);
            } else {
                l4.V(iIntValue2);
            }
            i9++;
        }
    }

    public static void k(int i8, List list, M m7, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                l4.U(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int iA0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iA0 += L.a0(((Long) list.get(i10)).longValue());
        }
        l4.T(iA0);
        while (i9 < list.size()) {
            l4.V(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void l(int i8, List list, M m7, InterfaceC2418w0 interfaceC2418w0) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            m7.n(i8, interfaceC2418w0, list.get(i9));
        }
    }

    public static void m(int i8, List list, M m7, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                l4.N(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Integer) list.get(i11)).getClass();
            i10 += 4;
        }
        l4.T(i10);
        while (i9 < list.size()) {
            l4.O(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void n(int i8, List list, M m7, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                l4.P(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Long) list.get(i11)).getClass();
            i10 += 8;
        }
        l4.T(i10);
        while (i9 < list.size()) {
            l4.Q(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void o(int i8, List list, M m7, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                l4.T(i8 << 3);
                l4.T((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int iZ = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            int iIntValue2 = ((Integer) list.get(i10)).intValue();
            iZ += L.Z((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
        }
        l4.T(iZ);
        while (i9 < list.size()) {
            int iIntValue3 = ((Integer) list.get(i9)).intValue();
            l4.T((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
            i9++;
        }
    }

    public static void p(int i8, List list, M m7, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                long jLongValue = ((Long) list.get(i9)).longValue();
                l4.U(i8, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int iA0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            long jLongValue2 = ((Long) list.get(i10)).longValue();
            iA0 += L.a0((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        l4.T(iA0);
        while (i9 < list.size()) {
            long jLongValue3 = ((Long) list.get(i9)).longValue();
            l4.V((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i9++;
        }
    }

    public static void q(int i8, List list, M m7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        m7.getClass();
        boolean z7 = list instanceof InterfaceC2379c0;
        int i9 = 0;
        L l4 = m7.f22280a;
        if (!z7) {
            while (i9 < list.size()) {
                l4.R(i8, (String) list.get(i9));
                i9++;
            }
            return;
        }
        InterfaceC2379c0 interfaceC2379c0 = (InterfaceC2379c0) list;
        while (i9 < list.size()) {
            Object objD = interfaceC2379c0.d(i9);
            if (objD instanceof String) {
                l4.R(i8, (String) objD);
            } else {
                l4.M(i8, (J) objD);
            }
            i9++;
        }
    }

    public static void r(int i8, List list, M m7, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                l4.T(i8 << 3);
                l4.T(iIntValue);
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int iZ = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iZ += L.Z(((Integer) list.get(i10)).intValue());
        }
        l4.T(iZ);
        while (i9 < list.size()) {
            l4.T(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void s(int i8, List list, M m7, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        L l4 = m7.f22280a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                l4.U(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        l4.S(i8, 2);
        int iA0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iA0 += L.a0(((Long) list.get(i10)).longValue());
        }
        l4.T(iA0);
        while (i9 < list.size()) {
            l4.V(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static boolean t(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int u(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) + 1) * size;
    }

    public static int v(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZ = L.Z(i8 << 3) * size;
        for (int i9 = 0; i9 < list.size(); i9++) {
            int iN = ((J) list.get(i9)).n();
            iZ = AbstractC2090uc.w(iN, iN, iZ);
        }
        return iZ;
    }

    public static int w(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) * size) + x(list);
    }

    public static int x(List list) {
        int iX;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof V) {
            V v5 = (V) list;
            iX = 0;
            while (i8 < size) {
                v5.c(i8);
                iX += L.X(v5.f22294H[i8]);
                i8++;
            }
        } else {
            iX = 0;
            while (i8 < size) {
                iX += L.X(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iX;
    }

    public static int y(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (L.Z(i8 << 3) + 4) * size;
    }

    public static int z(List list) {
        return list.size() * 4;
    }
}
