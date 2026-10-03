package com.google.android.gms.internal.cast;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class N2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f22505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Q2 f22506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Q2 f22507c;

    static {
        Class<?> cls;
        Class<?> cls2;
        Q2 q7 = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f22505a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                q7 = (Q2) cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused3) {
            }
        }
        f22506b = q7;
        f22507c = new Q2();
    }

    public static void A(int i8, List list, C2433c2 c2433c2, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2429b2.j0(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Integer) list.get(i11)).getClass();
            i10 += 4;
        }
        c2429b2.p0(i10);
        while (i9 < list.size()) {
            c2429b2.k0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void B(int i8, List list, C2433c2 c2433c2, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2429b2.l0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Long) list.get(i11)).getClass();
            i10 += 8;
        }
        c2429b2.p0(i10);
        while (i9 < list.size()) {
            c2429b2.m0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void a(int i8, List list, C2433c2 c2433c2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                c2429b2.p0(i8 << 3);
                c2429b2.p0((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int iW0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            int iIntValue2 = ((Integer) list.get(i10)).intValue();
            iW0 += C2429b2.w0((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
        }
        c2429b2.p0(iW0);
        while (i9 < list.size()) {
            int iIntValue3 = ((Integer) list.get(i9)).intValue();
            c2429b2.p0((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
            i9++;
        }
    }

    public static void b(int i8, List list, C2433c2 c2433c2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                long jLongValue = ((Long) list.get(i9)).longValue();
                c2429b2.q0(i8, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int iX0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            long jLongValue2 = ((Long) list.get(i10)).longValue();
            iX0 += C2429b2.x0((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        c2429b2.p0(iX0);
        while (i9 < list.size()) {
            long jLongValue3 = ((Long) list.get(i9)).longValue();
            c2429b2.r0((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i9++;
        }
    }

    public static void c(int i8, List list, C2433c2 c2433c2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                c2429b2.p0(i8 << 3);
                c2429b2.p0(iIntValue);
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int iW0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iW0 += C2429b2.w0(((Integer) list.get(i10)).intValue());
        }
        c2429b2.p0(iW0);
        while (i9 < list.size()) {
            c2429b2.p0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void d(int i8, List list, C2433c2 c2433c2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2429b2.q0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int iX0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iX0 += C2429b2.x0(((Long) list.get(i10)).longValue());
        }
        c2429b2.p0(iX0);
        while (i9 < list.size()) {
            c2429b2.r0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static boolean e(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int f(List list) {
        int iT0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2461j2) {
            C2461j2 c2461j2 = (C2461j2) list;
            iT0 = 0;
            while (i8 < size) {
                c2461j2.c(i8);
                iT0 += C2429b2.t0(c2461j2.f22749H[i8]);
                i8++;
            }
        } else {
            iT0 = 0;
            while (i8 < size) {
                iT0 += C2429b2.t0(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iT0;
    }

    public static int g(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2429b2.w0(i8 << 3) + 4) * size;
    }

    public static int h(List list) {
        return list.size() * 4;
    }

    public static int i(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2429b2.w0(i8 << 3) + 8) * size;
    }

    public static int j(List list) {
        return list.size() * 8;
    }

    public static int k(List list) {
        int iT0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2461j2) {
            C2461j2 c2461j2 = (C2461j2) list;
            iT0 = 0;
            while (i8 < size) {
                c2461j2.c(i8);
                iT0 += C2429b2.t0(c2461j2.f22749H[i8]);
                i8++;
            }
        } else {
            iT0 = 0;
            while (i8 < size) {
                iT0 += C2429b2.t0(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iT0;
    }

    public static int l(List list) {
        int iX0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2508v2) {
            C2508v2 c2508v2 = (C2508v2) list;
            iX0 = 0;
            while (i8 < size) {
                c2508v2.b(i8);
                iX0 += C2429b2.x0(c2508v2.f22804H[i8]);
                i8++;
            }
        } else {
            iX0 = 0;
            while (i8 < size) {
                iX0 += C2429b2.x0(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iX0;
    }

    public static int m(int i8, M2 m7, Object obj) {
        return C2429b2.w0(i8 << 3) + C2429b2.u0((U1) obj, m7);
    }

    public static int n(List list) {
        int iW0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2461j2) {
            C2461j2 c2461j2 = (C2461j2) list;
            iW0 = 0;
            while (i8 < size) {
                c2461j2.c(i8);
                int i9 = c2461j2.f22749H[i8];
                iW0 += C2429b2.w0((i9 >> 31) ^ (i9 + i9));
                i8++;
            }
        } else {
            iW0 = 0;
            while (i8 < size) {
                int iIntValue = ((Integer) list.get(i8)).intValue();
                iW0 += C2429b2.w0((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i8++;
            }
        }
        return iW0;
    }

    public static int o(List list) {
        int iX0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2508v2) {
            C2508v2 c2508v2 = (C2508v2) list;
            iX0 = 0;
            while (i8 < size) {
                c2508v2.b(i8);
                long j8 = c2508v2.f22804H[i8];
                iX0 += C2429b2.x0((j8 >> 63) ^ (j8 + j8));
                i8++;
            }
        } else {
            iX0 = 0;
            while (i8 < size) {
                long jLongValue = ((Long) list.get(i8)).longValue();
                iX0 += C2429b2.x0((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i8++;
            }
        }
        return iX0;
    }

    public static int p(List list) {
        int iW0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2461j2) {
            C2461j2 c2461j2 = (C2461j2) list;
            iW0 = 0;
            while (i8 < size) {
                c2461j2.c(i8);
                iW0 += C2429b2.w0(c2461j2.f22749H[i8]);
                i8++;
            }
        } else {
            iW0 = 0;
            while (i8 < size) {
                iW0 += C2429b2.w0(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iW0;
    }

    public static int q(List list) {
        int iX0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2508v2) {
            C2508v2 c2508v2 = (C2508v2) list;
            iX0 = 0;
            while (i8 < size) {
                c2508v2.b(i8);
                iX0 += C2429b2.x0(c2508v2.f22804H[i8]);
                i8++;
            }
        } else {
            iX0 = 0;
            while (i8 < size) {
                iX0 += C2429b2.x0(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iX0;
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
    public static void r(Q2 q7, Object obj, Object obj2) {
        q7.getClass();
        AbstractC2457i2 abstractC2457i2 = (AbstractC2457i2) obj;
        P2 p7 = abstractC2457i2.zzc;
        P2 p8 = ((AbstractC2457i2) obj2).zzc;
        P2 p9 = P2.f22516e;
        if (!p9.equals(p8)) {
            if (p9.equals(p7)) {
                p7.getClass();
                p8.getClass();
                int[] iArrCopyOf = Arrays.copyOf(p7.f22517a, 0);
                System.arraycopy(p8.f22517a, 0, iArrCopyOf, 0, 0);
                Object[] objArrCopyOf = Arrays.copyOf(p7.f22518b, 0);
                System.arraycopy(p8.f22518b, 0, objArrCopyOf, 0, 0);
                p7 = new P2(iArrCopyOf, objArrCopyOf, true);
            } else {
                p7.getClass();
                if (!p8.equals(p9)) {
                    if (!p7.f22520d) {
                        throw new UnsupportedOperationException();
                    }
                    int[] iArr = p7.f22517a;
                    int length = iArr.length;
                    System.arraycopy(p8.f22517a, 0, iArr, 0, 0);
                    System.arraycopy(p8.f22518b, 0, p7.f22518b, 0, 0);
                }
            }
        }
        abstractC2457i2.zzc = p7;
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
    public static void s(int i8, List list, C2433c2 c2433c2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                boolean zBooleanValue = ((Boolean) list.get(i9)).booleanValue();
                c2429b2.p0(i8 << 3);
                c2429b2.g0(zBooleanValue ? (byte) 1 : (byte) 0);
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Boolean) list.get(i11)).getClass();
            i10++;
        }
        c2429b2.p0(i10);
        while (i9 < list.size()) {
            c2429b2.g0(((Boolean) list.get(i9)).booleanValue() ? (byte) 1 : (byte) 0);
            i9++;
        }
    }

    public static void t(int i8, List list, C2433c2 c2433c2, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2429b2.l0(i8, Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Double) list.get(i11)).getClass();
            i10 += 8;
        }
        c2429b2.p0(i10);
        while (i9 < list.size()) {
            c2429b2.m0(Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
            i9++;
        }
    }

    public static void u(int i8, List list, C2433c2 c2433c2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                c2429b2.p0(i8 << 3);
                if (iIntValue >= 0) {
                    c2429b2.p0(iIntValue);
                } else {
                    c2429b2.r0(iIntValue);
                }
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int iT0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iT0 += C2429b2.t0(((Integer) list.get(i10)).intValue());
        }
        c2429b2.p0(iT0);
        while (i9 < list.size()) {
            int iIntValue2 = ((Integer) list.get(i9)).intValue();
            if (iIntValue2 >= 0) {
                c2429b2.p0(iIntValue2);
            } else {
                c2429b2.r0(iIntValue2);
            }
            i9++;
        }
    }

    public static void v(int i8, List list, C2433c2 c2433c2, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2429b2.j0(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Integer) list.get(i11)).getClass();
            i10 += 4;
        }
        c2429b2.p0(i10);
        while (i9 < list.size()) {
            c2429b2.k0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void w(int i8, List list, C2433c2 c2433c2, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2429b2.l0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Long) list.get(i11)).getClass();
            i10 += 8;
        }
        c2429b2.p0(i10);
        while (i9 < list.size()) {
            c2429b2.m0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void x(int i8, List list, C2433c2 c2433c2, boolean z7) throws I0.u {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2429b2.j0(i8, Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Float) list.get(i11)).getClass();
            i10 += 4;
        }
        c2429b2.p0(i10);
        while (i9 < list.size()) {
            c2429b2.k0(Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
            i9++;
        }
    }

    public static void y(int i8, List list, C2433c2 c2433c2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                c2429b2.p0(i8 << 3);
                if (iIntValue >= 0) {
                    c2429b2.p0(iIntValue);
                } else {
                    c2429b2.r0(iIntValue);
                }
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int iT0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iT0 += C2429b2.t0(((Integer) list.get(i10)).intValue());
        }
        c2429b2.p0(iT0);
        while (i9 < list.size()) {
            int iIntValue2 = ((Integer) list.get(i9)).intValue();
            if (iIntValue2 >= 0) {
                c2429b2.p0(iIntValue2);
            } else {
                c2429b2.r0(iIntValue2);
            }
            i9++;
        }
    }

    public static void z(int i8, List list, C2433c2 c2433c2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2429b2 c2429b2 = c2433c2.f22664a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2429b2.q0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        c2429b2.o0(i8, 2);
        int iX0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iX0 += C2429b2.x0(((Long) list.get(i10)).longValue());
        }
        c2429b2.p0(iX0);
        while (i9 < list.size()) {
            c2429b2.r0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }
}
