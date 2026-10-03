package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class Z2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2622q2 f23065a;

    static {
        V2 v5 = V2.f23021c;
        f23065a = new C2622q2();
    }

    public static void A(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof G2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    c2588k2.B(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int iO = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iO += C2588k2.o(((Long) list.get(i10)).longValue());
            }
            c2588k2.A(iO);
            while (i9 < list.size()) {
                c2588k2.C(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        G2 g8 = (G2) list;
        if (!z7) {
            while (i9 < g8.f22922I) {
                c2588k2.B(i8, g8.c(i9));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int iO2 = 0;
        for (int i11 = 0; i11 < g8.f22922I; i11++) {
            iO2 += C2588k2.o(g8.c(i11));
        }
        c2588k2.A(iO2);
        while (i9 < g8.f22922I) {
            c2588k2.C(g8.c(i9));
            i9++;
        }
    }

    public static void B(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof C2636t2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    c2588k2.r(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Integer) list.get(i11)).getClass();
                i10 += 4;
            }
            c2588k2.A(i10);
            while (i9 < list.size()) {
                c2588k2.s(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C2636t2 c2636t2 = (C2636t2) list;
        if (!z7) {
            while (i9 < c2636t2.f23259I) {
                c2588k2.r(i8, c2636t2.c(i9));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < c2636t2.f23259I; i13++) {
            c2636t2.c(i13);
            i12 += 4;
        }
        c2588k2.A(i12);
        while (i9 < c2636t2.f23259I) {
            c2588k2.s(c2636t2.c(i9));
            i9++;
        }
    }

    public static void C(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof G2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    c2588k2.t(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Long) list.get(i11)).getClass();
                i10 += 8;
            }
            c2588k2.A(i10);
            while (i9 < list.size()) {
                c2588k2.u(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        G2 g8 = (G2) list;
        if (!z7) {
            while (i9 < g8.f22922I) {
                c2588k2.t(i8, g8.c(i9));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < g8.f22922I; i13++) {
            g8.c(i13);
            i12 += 8;
        }
        c2588k2.A(i12);
        while (i9 < g8.f22922I) {
            c2588k2.u(g8.c(i9));
            i9++;
        }
    }

    public static void a(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof C2636t2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    int iIntValue = ((Integer) list.get(i9)).intValue();
                    c2588k2.z(i8, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int iG = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                int iIntValue2 = ((Integer) list.get(i10)).intValue();
                iG += C2588k2.G((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            c2588k2.A(iG);
            while (i9 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i9)).intValue();
                c2588k2.A((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i9++;
            }
            return;
        }
        C2636t2 c2636t2 = (C2636t2) list;
        if (!z7) {
            while (i9 < c2636t2.f23259I) {
                int iC = c2636t2.c(i9);
                c2588k2.z(i8, (iC >> 31) ^ (iC + iC));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int iG2 = 0;
        for (int i11 = 0; i11 < c2636t2.f23259I; i11++) {
            int iC2 = c2636t2.c(i11);
            iG2 += C2588k2.G((iC2 >> 31) ^ (iC2 + iC2));
        }
        c2588k2.A(iG2);
        while (i9 < c2636t2.f23259I) {
            int iC3 = c2636t2.c(i9);
            c2588k2.A((iC3 >> 31) ^ (iC3 + iC3));
            i9++;
        }
    }

    public static void b(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof G2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    long jLongValue = ((Long) list.get(i9)).longValue();
                    c2588k2.B(i8, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int iO = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                long jLongValue2 = ((Long) list.get(i10)).longValue();
                iO += C2588k2.o((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            c2588k2.A(iO);
            while (i9 < list.size()) {
                long jLongValue3 = ((Long) list.get(i9)).longValue();
                c2588k2.C((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i9++;
            }
            return;
        }
        G2 g8 = (G2) list;
        if (!z7) {
            while (i9 < g8.f22922I) {
                long jC = g8.c(i9);
                c2588k2.B(i8, (jC >> 63) ^ (jC + jC));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int iO2 = 0;
        for (int i11 = 0; i11 < g8.f22922I; i11++) {
            long jC2 = g8.c(i11);
            iO2 += C2588k2.o((jC2 >> 63) ^ (jC2 + jC2));
        }
        c2588k2.A(iO2);
        while (i9 < g8.f22922I) {
            long jC3 = g8.c(i9);
            c2588k2.C((jC3 >> 63) ^ (jC3 + jC3));
            i9++;
        }
    }

    public static void c(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof C2636t2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    c2588k2.z(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int iG = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iG += C2588k2.G(((Integer) list.get(i10)).intValue());
            }
            c2588k2.A(iG);
            while (i9 < list.size()) {
                c2588k2.A(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C2636t2 c2636t2 = (C2636t2) list;
        if (!z7) {
            while (i9 < c2636t2.f23259I) {
                c2588k2.z(i8, c2636t2.c(i9));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int iG2 = 0;
        for (int i11 = 0; i11 < c2636t2.f23259I; i11++) {
            iG2 += C2588k2.G(c2636t2.c(i11));
        }
        c2588k2.A(iG2);
        while (i9 < c2636t2.f23259I) {
            c2588k2.A(c2636t2.c(i9));
            i9++;
        }
    }

    public static void d(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof G2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    c2588k2.B(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int iO = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iO += C2588k2.o(((Long) list.get(i10)).longValue());
            }
            c2588k2.A(iO);
            while (i9 < list.size()) {
                c2588k2.C(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        G2 g8 = (G2) list;
        if (!z7) {
            while (i9 < g8.f22922I) {
                c2588k2.B(i8, g8.c(i9));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int iO2 = 0;
        for (int i11 = 0; i11 < g8.f22922I; i11++) {
            iO2 += C2588k2.o(g8.c(i11));
        }
        c2588k2.A(iO2);
        while (i9 < g8.f22922I) {
            c2588k2.C(g8.c(i9));
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
        int iO;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2636t2) {
            C2636t2 c2636t2 = (C2636t2) list;
            iO = 0;
            while (i8 < size) {
                iO += C2588k2.o(c2636t2.c(i8));
                i8++;
            }
        } else {
            iO = 0;
            while (i8 < size) {
                iO += C2588k2.o(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iO;
    }

    public static int g(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2588k2.G(i8 << 3) + 4) * size;
    }

    public static int h(List list) {
        return list.size() * 4;
    }

    public static int i(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2588k2.G(i8 << 3) + 8) * size;
    }

    public static int j(List list) {
        return list.size() * 8;
    }

    public static int k(List list) {
        int iO;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2636t2) {
            C2636t2 c2636t2 = (C2636t2) list;
            iO = 0;
            while (i8 < size) {
                iO += C2588k2.o(c2636t2.c(i8));
                i8++;
            }
        } else {
            iO = 0;
            while (i8 < size) {
                iO += C2588k2.o(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iO;
    }

    public static int l(List list) {
        int iO;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof G2) {
            G2 g8 = (G2) list;
            iO = 0;
            while (i8 < size) {
                iO += C2588k2.o(g8.c(i8));
                i8++;
            }
        } else {
            iO = 0;
            while (i8 < size) {
                iO += C2588k2.o(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iO;
    }

    public static int m(int i8, Y2 y7, Object obj) {
        return C2588k2.E((P2) obj, y7) + C2588k2.G(i8 << 3);
    }

    public static int n(List list) {
        int iG;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2636t2) {
            C2636t2 c2636t2 = (C2636t2) list;
            iG = 0;
            while (i8 < size) {
                int iC = c2636t2.c(i8);
                iG += C2588k2.G((iC >> 31) ^ (iC + iC));
                i8++;
            }
        } else {
            iG = 0;
            while (i8 < size) {
                int iIntValue = ((Integer) list.get(i8)).intValue();
                iG += C2588k2.G((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i8++;
            }
        }
        return iG;
    }

    public static int o(List list) {
        int iO;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof G2) {
            G2 g8 = (G2) list;
            iO = 0;
            while (i8 < size) {
                long jC = g8.c(i8);
                iO += C2588k2.o((jC >> 63) ^ (jC + jC));
                i8++;
            }
        } else {
            iO = 0;
            while (i8 < size) {
                long jLongValue = ((Long) list.get(i8)).longValue();
                iO += C2588k2.o((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i8++;
            }
        }
        return iO;
    }

    public static int p(List list) {
        int iG;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C2636t2) {
            C2636t2 c2636t2 = (C2636t2) list;
            iG = 0;
            while (i8 < size) {
                iG += C2588k2.G(c2636t2.c(i8));
                i8++;
            }
        } else {
            iG = 0;
            while (i8 < size) {
                iG += C2588k2.G(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iG;
    }

    public static int q(List list) {
        int iO;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof G2) {
            G2 g8 = (G2) list;
            iO = 0;
            while (i8 < size) {
                iO += C2588k2.o(g8.c(i8));
                i8++;
            }
        } else {
            iO = 0;
            while (i8 < size) {
                iO += C2588k2.o(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iO;
    }

    public static Object r(Object obj, int i8, int i9, Object obj2) {
        AbstractC2631s2 abstractC2631s2;
        C2535b3 c2535b3;
        Object obj3 = obj2;
        if (obj2 == null && (c2535b3 = (abstractC2631s2 = (AbstractC2631s2) obj).zzc) == C2535b3.f23099f) {
            obj3 = c2535b3;
            C2535b3 c2535b3B = C2535b3.b();
            abstractC2631s2.zzc = c2535b3B;
            obj3 = c2535b3B;
        }
        obj3 = c2535b3;
        ((C2535b3) obj3).c(i8 << 3, Long.valueOf(i9));
        return obj3;
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
    public static void s(Object obj, Object obj2) {
        AbstractC2631s2 abstractC2631s2 = (AbstractC2631s2) obj;
        C2535b3 c2535b3 = abstractC2631s2.zzc;
        C2535b3 c2535b4 = ((AbstractC2631s2) obj2).zzc;
        C2535b3 c2535b5 = C2535b3.f23099f;
        if (!c2535b5.equals(c2535b4)) {
            if (c2535b5.equals(c2535b3)) {
                int i8 = c2535b3.f23100a + c2535b4.f23100a;
                int[] iArrCopyOf = Arrays.copyOf(c2535b3.f23101b, i8);
                System.arraycopy(c2535b4.f23101b, 0, iArrCopyOf, c2535b3.f23100a, c2535b4.f23100a);
                Object[] objArrCopyOf = Arrays.copyOf(c2535b3.f23102c, i8);
                System.arraycopy(c2535b4.f23102c, 0, objArrCopyOf, c2535b3.f23100a, c2535b4.f23100a);
                c2535b3 = new C2535b3(i8, iArrCopyOf, objArrCopyOf, true);
            } else {
                c2535b3.getClass();
                if (!c2535b4.equals(c2535b5)) {
                    if (!c2535b3.f23104e) {
                        throw new UnsupportedOperationException();
                    }
                    int i9 = c2535b3.f23100a + c2535b4.f23100a;
                    c2535b3.e(i9);
                    System.arraycopy(c2535b4.f23101b, 0, c2535b3.f23101b, c2535b3.f23100a, c2535b4.f23100a);
                    System.arraycopy(c2535b4.f23102c, 0, c2535b3.f23102c, c2535b3.f23100a, c2535b4.f23100a);
                    c2535b3.f23100a = i9;
                }
            }
        }
        abstractC2631s2.zzc = c2535b3;
    }

    public static void t(int i8, List list, C2594l2 c2594l2, boolean z7) {
        IndexOutOfBoundsException indexOutOfBoundsException;
        IndexOutOfBoundsException indexOutOfBoundsException2;
        if (list == null || list.isEmpty()) {
            return;
        }
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                byte bBooleanValue = ((Boolean) list.get(i9)).booleanValue();
                c2588k2.A(i8 << 3);
                int i10 = c2588k2.f23182K;
                try {
                    int i11 = i10 + 1;
                    try {
                        c2588k2.f23180I[i10] = bBooleanValue;
                        c2588k2.f23182K = i11;
                        i9++;
                    } catch (IndexOutOfBoundsException e8) {
                        indexOutOfBoundsException = e8;
                        i10 = i11;
                        throw new I0.u(i10, c2588k2.f23181J, 1, indexOutOfBoundsException);
                    }
                } catch (IndexOutOfBoundsException e9) {
                    indexOutOfBoundsException = e9;
                }
            }
            return;
        }
        c2588k2.y(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Boolean) list.get(i13)).getClass();
            i12++;
        }
        c2588k2.A(i12);
        while (i9 < list.size()) {
            byte bBooleanValue2 = ((Boolean) list.get(i9)).booleanValue();
            int i14 = c2588k2.f23182K;
            try {
                int i15 = i14 + 1;
                try {
                    c2588k2.f23180I[i14] = bBooleanValue2;
                    c2588k2.f23182K = i15;
                    i9++;
                } catch (IndexOutOfBoundsException e10) {
                    indexOutOfBoundsException2 = e10;
                    i14 = i15;
                    throw new I0.u(i14, c2588k2.f23181J, 1, indexOutOfBoundsException2);
                }
            } catch (IndexOutOfBoundsException e11) {
                indexOutOfBoundsException2 = e11;
            }
        }
    }

    public static void u(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2588k2.t(i8, Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Double) list.get(i11)).getClass();
            i10 += 8;
        }
        c2588k2.A(i10);
        while (i9 < list.size()) {
            c2588k2.u(Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
            i9++;
        }
    }

    public static void v(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof C2636t2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    c2588k2.v(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int iO = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iO += C2588k2.o(((Integer) list.get(i10)).intValue());
            }
            c2588k2.A(iO);
            while (i9 < list.size()) {
                c2588k2.w(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C2636t2 c2636t2 = (C2636t2) list;
        if (!z7) {
            while (i9 < c2636t2.f23259I) {
                c2588k2.v(i8, c2636t2.c(i9));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int iO2 = 0;
        for (int i11 = 0; i11 < c2636t2.f23259I; i11++) {
            iO2 += C2588k2.o(c2636t2.c(i11));
        }
        c2588k2.A(iO2);
        while (i9 < c2636t2.f23259I) {
            c2588k2.w(c2636t2.c(i9));
            i9++;
        }
    }

    public static void w(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof C2636t2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    c2588k2.r(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Integer) list.get(i11)).getClass();
                i10 += 4;
            }
            c2588k2.A(i10);
            while (i9 < list.size()) {
                c2588k2.s(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C2636t2 c2636t2 = (C2636t2) list;
        if (!z7) {
            while (i9 < c2636t2.f23259I) {
                c2588k2.r(i8, c2636t2.c(i9));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < c2636t2.f23259I; i13++) {
            c2636t2.c(i13);
            i12 += 4;
        }
        c2588k2.A(i12);
        while (i9 < c2636t2.f23259I) {
            c2588k2.s(c2636t2.c(i9));
            i9++;
        }
    }

    public static void x(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof G2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    c2588k2.t(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Long) list.get(i11)).getClass();
                i10 += 8;
            }
            c2588k2.A(i10);
            while (i9 < list.size()) {
                c2588k2.u(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        G2 g8 = (G2) list;
        if (!z7) {
            while (i9 < g8.f22922I) {
                c2588k2.t(i8, g8.c(i9));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < g8.f22922I; i13++) {
            g8.c(i13);
            i12 += 8;
        }
        c2588k2.A(i12);
        while (i9 < g8.f22922I) {
            c2588k2.u(g8.c(i9));
            i9++;
        }
    }

    public static void y(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2588k2.r(i8, Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Float) list.get(i11)).getClass();
            i10 += 4;
        }
        c2588k2.A(i10);
        while (i9 < list.size()) {
            c2588k2.s(Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
            i9++;
        }
    }

    public static void z(int i8, List list, C2594l2 c2594l2, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2594l2.getClass();
        boolean z8 = list instanceof C2636t2;
        C2588k2 c2588k2 = c2594l2.f23193a;
        int i9 = 0;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    c2588k2.v(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            c2588k2.y(i8, 2);
            int iO = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iO += C2588k2.o(((Integer) list.get(i10)).intValue());
            }
            c2588k2.A(iO);
            while (i9 < list.size()) {
                c2588k2.w(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C2636t2 c2636t2 = (C2636t2) list;
        if (!z7) {
            while (i9 < c2636t2.f23259I) {
                c2588k2.v(i8, c2636t2.c(i9));
                i9++;
            }
            return;
        }
        c2588k2.y(i8, 2);
        int iO2 = 0;
        for (int i11 = 0; i11 < c2636t2.f23259I; i11++) {
            iO2 += C2588k2.o(c2636t2.c(i11));
        }
        c2588k2.A(iO2);
        while (i9 < c2636t2.f23259I) {
            c2588k2.w(c2636t2.c(i9));
            i9++;
        }
    }
}
