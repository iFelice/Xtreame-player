package com.google.android.gms.internal.pal;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2757l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f23918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2789p0 f23919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2789p0 f23920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C2789p0 f23921d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f23918a = cls;
        f23919b = x(false);
        f23920c = x(true);
        f23921d = new C2789p0();
    }

    public static int A(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2835v.Z0(i8) * size) + B(list);
    }

    public static int B(List list) {
        int iX0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof F) {
            F f8 = (F) list;
            iX0 = 0;
            while (i8 < size) {
                f8.c(i8);
                iX0 += C2835v.X0(f8.f23507H[i8]);
                i8++;
            }
        } else {
            iX0 = 0;
            while (i8 < size) {
                iX0 += C2835v.X0(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iX0;
    }

    public static int C(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2835v.I0(i8 << 3) + 4) * size;
    }

    public static int D(List list) {
        return list.size() * 4;
    }

    public static int E(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2835v.I0(i8 << 3) + 8) * size;
    }

    public static int F(List list) {
        return list.size() * 8;
    }

    public static int G(int i8, List list, InterfaceC2749k0 interfaceC2749k0) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW0 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            iW0 += C2835v.W0(i8, (AbstractC2740j) list.get(i9), interfaceC2749k0);
        }
        return iW0;
    }

    public static int H(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2835v.Z0(i8) * size) + I(list);
    }

    public static int I(List list) {
        int iX0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof F) {
            F f8 = (F) list;
            iX0 = 0;
            while (i8 < size) {
                f8.c(i8);
                iX0 += C2835v.X0(f8.f23507H[i8]);
                i8++;
            }
        } else {
            iX0 = 0;
            while (i8 < size) {
                iX0 += C2835v.X0(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iX0;
    }

    public static int J(int i8, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (C2835v.Z0(i8) * list.size()) + K(list);
    }

    public static int K(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ0 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            iJ0 += C2835v.J0(((Long) list.get(i8)).longValue());
        }
        return iJ0;
    }

    public static int L(int i8, InterfaceC2749k0 interfaceC2749k0, Object obj) {
        AbstractC2740j abstractC2740j = (AbstractC2740j) obj;
        int iI0 = C2835v.I0(i8 << 3);
        D d6 = (D) abstractC2740j;
        int iZza = d6.zzd;
        if (iZza == -1) {
            iZza = interfaceC2749k0.zza(abstractC2740j);
            d6.zzd = iZza;
        }
        return AbstractC2090uc.A(iZza, iZza, iI0);
    }

    public static int M(int i8, List list, InterfaceC2749k0 interfaceC2749k0) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZ0 = C2835v.Z0(i8) * size;
        for (int i9 = 0; i9 < size; i9++) {
            AbstractC2740j abstractC2740j = (AbstractC2740j) list.get(i9);
            D d6 = (D) abstractC2740j;
            int iZza = d6.zzd;
            if (iZza == -1) {
                iZza = interfaceC2749k0.zza(abstractC2740j);
                d6.zzd = iZza;
            }
            iZ0 = AbstractC2090uc.A(iZza, iZza, iZ0);
        }
        return iZ0;
    }

    public static int N(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2835v.Z0(i8) * size) + O(list);
    }

    public static int O(List list) {
        int iI0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof F) {
            F f8 = (F) list;
            iI0 = 0;
            while (i8 < size) {
                f8.c(i8);
                int i9 = f8.f23507H[i8];
                iI0 += C2835v.I0((i9 >> 31) ^ (i9 + i9));
                i8++;
            }
        } else {
            iI0 = 0;
            while (i8 < size) {
                int iIntValue = ((Integer) list.get(i8)).intValue();
                iI0 += C2835v.I0((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i8++;
            }
        }
        return iI0;
    }

    public static int P(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2835v.Z0(i8) * size) + Q(list);
    }

    public static int Q(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ0 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            long jLongValue = ((Long) list.get(i8)).longValue();
            iJ0 += C2835v.J0((jLongValue >> 63) ^ (jLongValue + jLongValue));
        }
        return iJ0;
    }

    public static int R(int i8, List list) {
        int size = list.size();
        int i9 = 0;
        if (size == 0) {
            return 0;
        }
        int iZ0 = C2835v.Z0(i8) * size;
        if (list instanceof O) {
            O o4 = (O) list;
            while (i9 < size) {
                Object objA = o4.a(i9);
                if (objA instanceof r) {
                    int i10 = ((r) objA).i();
                    iZ0 = AbstractC2090uc.A(i10, i10, iZ0);
                } else {
                    iZ0 = C2835v.Y0((String) objA) + iZ0;
                }
                i9++;
            }
        } else {
            while (i9 < size) {
                Object obj = list.get(i9);
                if (obj instanceof r) {
                    int i11 = ((r) obj).i();
                    iZ0 = AbstractC2090uc.A(i11, i11, iZ0);
                } else {
                    iZ0 = C2835v.Y0((String) obj) + iZ0;
                }
                i9++;
            }
        }
        return iZ0;
    }

    public static int S(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2835v.Z0(i8) * size) + T(list);
    }

    public static int T(List list) {
        int iI0;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof F) {
            F f8 = (F) list;
            iI0 = 0;
            while (i8 < size) {
                f8.c(i8);
                iI0 += C2835v.I0(f8.f23507H[i8]);
                i8++;
            }
        } else {
            iI0 = 0;
            while (i8 < size) {
                iI0 += C2835v.I0(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iI0;
    }

    public static int U(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2835v.Z0(i8) * size) + V(list);
    }

    public static int V(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ0 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            iJ0 += C2835v.J0(((Long) list.get(i8)).longValue());
        }
        return iJ0;
    }

    public static Object a(int i8, List list, G g8, Object obj, C2789p0 c2789p0) {
        if (g8 == null) {
            return obj;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i9 = 0;
            for (int i10 = 0; i10 < size; i10++) {
                Integer num = (Integer) list.get(i10);
                int iIntValue = num.intValue();
                if (g8.zza(iIntValue)) {
                    if (i10 != i9) {
                        list.set(i9, num);
                    }
                    i9++;
                } else {
                    obj = b(i8, iIntValue, obj, c2789p0);
                }
            }
            if (i9 != size) {
                list.subList(i9, size).clear();
                return obj;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!g8.zza(iIntValue2)) {
                    obj = b(i8, iIntValue2, obj, c2789p0);
                    it.remove();
                }
            }
        }
        return obj;
    }

    public static Object b(int i8, int i9, Object obj, C2789p0 c2789p0) {
        if (obj == null) {
            c2789p0.getClass();
            obj = C2781o0.b();
        }
        c2789p0.getClass();
        ((C2781o0) obj).c(i8 << 3, Long.valueOf(i9));
        return obj;
    }

    public static void c(C2789p0 c2789p0, Object obj, Object obj2) {
        c2789p0.getClass();
        D d6 = (D) obj;
        C2781o0 c2781o0 = d6.zzc;
        C2781o0 c2781o1 = ((D) obj2).zzc;
        if (!c2781o1.equals(C2781o0.f23969f)) {
            int i8 = c2781o0.f23970a + c2781o1.f23970a;
            int[] iArrCopyOf = Arrays.copyOf(c2781o0.f23971b, i8);
            System.arraycopy(c2781o1.f23971b, 0, iArrCopyOf, c2781o0.f23970a, c2781o1.f23970a);
            Object[] objArrCopyOf = Arrays.copyOf(c2781o0.f23972c, i8);
            System.arraycopy(c2781o1.f23972c, 0, objArrCopyOf, c2781o0.f23970a, c2781o1.f23970a);
            c2781o0 = new C2781o0(i8, iArrCopyOf, objArrCopyOf, true);
        }
        d6.zzc = c2781o0;
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
    public static void d(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                boolean zBooleanValue = ((Boolean) list.get(i9)).booleanValue();
                c2835v.T0(i8 << 3);
                c2835v.K0(zBooleanValue ? (byte) 1 : (byte) 0);
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Boolean) list.get(i11)).getClass();
            i10++;
        }
        c2835v.T0(i10);
        while (i9 < list.size()) {
            c2835v.K0(((Boolean) list.get(i9)).booleanValue() ? (byte) 1 : (byte) 0);
            i9++;
        }
    }

    public static void e(int i8, List list, C2843w c2843w) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2843w.getClass();
        for (int i9 = 0; i9 < list.size(); i9++) {
            c2843w.f24050a.M0(i8, (r) list.get(i9));
        }
    }

    public static void f(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2835v.P0(i8, Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Double) list.get(i11)).getClass();
            i10 += 8;
        }
        c2835v.T0(i10);
        while (i9 < list.size()) {
            c2835v.Q0(Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
            i9++;
        }
    }

    public static void g(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                c2835v.T0(i8 << 3);
                if (iIntValue >= 0) {
                    c2835v.T0(iIntValue);
                } else {
                    c2835v.V0(iIntValue);
                }
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int iX0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iX0 += C2835v.X0(((Integer) list.get(i10)).intValue());
        }
        c2835v.T0(iX0);
        while (i9 < list.size()) {
            int iIntValue2 = ((Integer) list.get(i9)).intValue();
            if (iIntValue2 >= 0) {
                c2835v.T0(iIntValue2);
            } else {
                c2835v.V0(iIntValue2);
            }
            i9++;
        }
    }

    public static void h(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2835v.N0(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Integer) list.get(i11)).getClass();
            i10 += 4;
        }
        c2835v.T0(i10);
        while (i9 < list.size()) {
            c2835v.O0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void i(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2835v.P0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Long) list.get(i11)).getClass();
            i10 += 8;
        }
        c2835v.T0(i10);
        while (i9 < list.size()) {
            c2835v.Q0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void j(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2835v.N0(i8, Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Float) list.get(i11)).getClass();
            i10 += 4;
        }
        c2835v.T0(i10);
        while (i9 < list.size()) {
            c2835v.O0(Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
            i9++;
        }
    }

    public static void k(int i8, List list, C2843w c2843w, InterfaceC2749k0 interfaceC2749k0) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            c2843w.l(i8, interfaceC2749k0, list.get(i9));
        }
    }

    public static void l(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                c2835v.T0(i8 << 3);
                if (iIntValue >= 0) {
                    c2835v.T0(iIntValue);
                } else {
                    c2835v.V0(iIntValue);
                }
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int iX0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iX0 += C2835v.X0(((Integer) list.get(i10)).intValue());
        }
        c2835v.T0(iX0);
        while (i9 < list.size()) {
            int iIntValue2 = ((Integer) list.get(i9)).intValue();
            if (iIntValue2 >= 0) {
                c2835v.T0(iIntValue2);
            } else {
                c2835v.V0(iIntValue2);
            }
            i9++;
        }
    }

    public static void m(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2835v.U0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int iJ0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iJ0 += C2835v.J0(((Long) list.get(i10)).longValue());
        }
        c2835v.T0(iJ0);
        while (i9 < list.size()) {
            c2835v.V0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void n(int i8, List list, C2843w c2843w, InterfaceC2749k0 interfaceC2749k0) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            c2843w.o(i8, interfaceC2749k0, list.get(i9));
        }
    }

    public static void o(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2835v.N0(i8, ((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Integer) list.get(i11)).getClass();
            i10 += 4;
        }
        c2835v.T0(i10);
        while (i9 < list.size()) {
            c2835v.O0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void p(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2835v.P0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Long) list.get(i11)).getClass();
            i10 += 8;
        }
        c2835v.T0(i10);
        while (i9 < list.size()) {
            c2835v.Q0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static void q(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                c2835v.T0(i8 << 3);
                c2835v.T0((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int iI0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            int iIntValue2 = ((Integer) list.get(i10)).intValue();
            iI0 += C2835v.I0((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
        }
        c2835v.T0(iI0);
        while (i9 < list.size()) {
            int iIntValue3 = ((Integer) list.get(i9)).intValue();
            c2835v.T0((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
            i9++;
        }
    }

    public static void r(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                long jLongValue = ((Long) list.get(i9)).longValue();
                c2835v.U0(i8, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int iJ0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            long jLongValue2 = ((Long) list.get(i10)).longValue();
            iJ0 += C2835v.J0((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        c2835v.T0(iJ0);
        while (i9 < list.size()) {
            long jLongValue3 = ((Long) list.get(i9)).longValue();
            c2835v.V0((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i9++;
        }
    }

    public static void s(int i8, List list, C2843w c2843w) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c2843w.getClass();
        boolean z7 = list instanceof O;
        int i9 = 0;
        C2835v c2835v = c2843w.f24050a;
        if (!z7) {
            while (i9 < list.size()) {
                c2835v.R0(i8, (String) list.get(i9));
                i9++;
            }
            return;
        }
        O o4 = (O) list;
        while (i9 < list.size()) {
            Object objA = o4.a(i9);
            if (objA instanceof String) {
                c2835v.R0(i8, (String) objA);
            } else {
                c2835v.M0(i8, (r) objA);
            }
            i9++;
        }
    }

    public static void t(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                c2835v.T0(i8 << 3);
                c2835v.T0(iIntValue);
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int iI0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iI0 += C2835v.I0(((Integer) list.get(i10)).intValue());
        }
        c2835v.T0(iI0);
        while (i9 < list.size()) {
            c2835v.T0(((Integer) list.get(i9)).intValue());
            i9++;
        }
    }

    public static void u(int i8, List list, C2843w c2843w, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C2835v c2835v = c2843w.f24050a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                c2835v.U0(i8, ((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        c2835v.S0(i8, 2);
        int iJ0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            iJ0 += C2835v.J0(((Long) list.get(i10)).longValue());
        }
        c2835v.T0(iJ0);
        while (i9 < list.size()) {
            c2835v.V0(((Long) list.get(i9)).longValue());
            i9++;
        }
    }

    public static boolean v(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int w(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C2835v.I0(i8 << 3) + 1) * size;
    }

    public static C2789p0 x(boolean z7) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (C2789p0) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z7));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static int y(List list) {
        return list.size();
    }

    public static int z(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZ0 = C2835v.Z0(i8) * size;
        for (int i9 = 0; i9 < list.size(); i9++) {
            int i10 = ((r) list.get(i9)).i();
            iZ0 = AbstractC2090uc.A(i10, i10, iZ0);
        }
        return iZ0;
    }
}
