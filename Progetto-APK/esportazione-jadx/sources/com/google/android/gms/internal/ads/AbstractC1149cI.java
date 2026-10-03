package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1149cI {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2272y1 f18207a;

    static {
        UH uh = UH.f16822c;
        f18207a = new C2272y1();
    }

    public static void A(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                abstractC1407hH.U(i8, Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Double) list.get(i11)).getClass();
            i10 += 8;
        }
        abstractC1407hH.c0(i10);
        while (i9 < list.size()) {
            abstractC1407hH.V(Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
            i9++;
        }
    }

    public static void B(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof C1924rH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    abstractC1407hH.W(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int iN = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iN += AbstractC1407hH.N(((Integer) list.get(i10)).intValue());
            }
            abstractC1407hH.c0(iN);
            while (i9 < list.size()) {
                abstractC1407hH.X(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C1924rH c1924rH = (C1924rH) list;
        if (!z7) {
            while (i9 < c1924rH.f20711I) {
                abstractC1407hH.W(i8, c1924rH.c(i9));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int iN2 = 0;
        for (int i11 = 0; i11 < c1924rH.f20711I; i11++) {
            iN2 += AbstractC1407hH.N(c1924rH.c(i11));
        }
        abstractC1407hH.c0(iN2);
        while (i9 < c1924rH.f20711I) {
            abstractC1407hH.X(c1924rH.c(i9));
            i9++;
        }
    }

    public static void C(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof C1924rH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    abstractC1407hH.S(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Integer) list.get(i11)).getClass();
                i10 += 4;
            }
            abstractC1407hH.c0(i10);
            while (i9 < list.size()) {
                abstractC1407hH.T(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C1924rH c1924rH = (C1924rH) list;
        if (!z7) {
            while (i9 < c1924rH.f20711I) {
                abstractC1407hH.S(i8, c1924rH.c(i9));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < c1924rH.f20711I; i13++) {
            c1924rH.c(i13);
            i12 += 4;
        }
        abstractC1407hH.c0(i12);
        while (i9 < c1924rH.f20711I) {
            abstractC1407hH.T(c1924rH.c(i9));
            i9++;
        }
    }

    public static void D(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof FH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    abstractC1407hH.U(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Long) list.get(i11)).getClass();
                i10 += 8;
            }
            abstractC1407hH.c0(i10);
            while (i9 < list.size()) {
                abstractC1407hH.V(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        FH fh = (FH) list;
        if (!z7) {
            while (i9 < fh.f13345I) {
                abstractC1407hH.U(i8, fh.c(i9));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < fh.f13345I; i13++) {
            fh.c(i13);
            i12 += 8;
        }
        abstractC1407hH.c0(i12);
        while (i9 < fh.f13345I) {
            abstractC1407hH.V(fh.c(i9));
            i9++;
        }
    }

    public static void E(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                abstractC1407hH.S(i8, Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Float) list.get(i11)).getClass();
            i10 += 4;
        }
        abstractC1407hH.c0(i10);
        while (i9 < list.size()) {
            abstractC1407hH.T(Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
            i9++;
        }
    }

    public static void F(int i8, List list, C1459iH c1459iH, InterfaceC1098bI interfaceC1098bI) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            c1459iH.l(i8, interfaceC1098bI, list.get(i9));
        }
    }

    public static void G(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof C1924rH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    abstractC1407hH.W(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int iN = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iN += AbstractC1407hH.N(((Integer) list.get(i10)).intValue());
            }
            abstractC1407hH.c0(iN);
            while (i9 < list.size()) {
                abstractC1407hH.X(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C1924rH c1924rH = (C1924rH) list;
        if (!z7) {
            while (i9 < c1924rH.f20711I) {
                abstractC1407hH.W(i8, c1924rH.c(i9));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int iN2 = 0;
        for (int i11 = 0; i11 < c1924rH.f20711I; i11++) {
            iN2 += AbstractC1407hH.N(c1924rH.c(i11));
        }
        abstractC1407hH.c0(iN2);
        while (i9 < c1924rH.f20711I) {
            abstractC1407hH.X(c1924rH.c(i9));
            i9++;
        }
    }

    public static void a(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof FH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    abstractC1407hH.d0(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int iN = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iN += AbstractC1407hH.N(((Long) list.get(i10)).longValue());
            }
            abstractC1407hH.c0(iN);
            while (i9 < list.size()) {
                abstractC1407hH.e0(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        FH fh = (FH) list;
        if (!z7) {
            while (i9 < fh.f13345I) {
                abstractC1407hH.d0(i8, fh.c(i9));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int iN2 = 0;
        for (int i11 = 0; i11 < fh.f13345I; i11++) {
            iN2 += AbstractC1407hH.N(fh.c(i11));
        }
        abstractC1407hH.c0(iN2);
        while (i9 < fh.f13345I) {
            abstractC1407hH.e0(fh.c(i9));
            i9++;
        }
    }

    public static void b(int i8, List list, C1459iH c1459iH, InterfaceC1098bI interfaceC1098bI) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            c1459iH.o(i8, interfaceC1098bI, list.get(i9));
        }
    }

    public static void c(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof C1924rH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    abstractC1407hH.S(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Integer) list.get(i11)).getClass();
                i10 += 4;
            }
            abstractC1407hH.c0(i10);
            while (i9 < list.size()) {
                abstractC1407hH.T(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C1924rH c1924rH = (C1924rH) list;
        if (!z7) {
            while (i9 < c1924rH.f20711I) {
                abstractC1407hH.S(i8, c1924rH.c(i9));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < c1924rH.f20711I; i13++) {
            c1924rH.c(i13);
            i12 += 4;
        }
        abstractC1407hH.c0(i12);
        while (i9 < c1924rH.f20711I) {
            abstractC1407hH.T(c1924rH.c(i9));
            i9++;
        }
    }

    public static void d(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof FH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    abstractC1407hH.U(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Long) list.get(i11)).getClass();
                i10 += 8;
            }
            abstractC1407hH.c0(i10);
            while (i9 < list.size()) {
                abstractC1407hH.V(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        FH fh = (FH) list;
        if (!z7) {
            while (i9 < fh.f13345I) {
                abstractC1407hH.U(i8, fh.c(i9));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < fh.f13345I; i13++) {
            fh.c(i13);
            i12 += 8;
        }
        abstractC1407hH.c0(i12);
        while (i9 < fh.f13345I) {
            abstractC1407hH.V(fh.c(i9));
            i9++;
        }
    }

    public static void e(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof C1924rH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    int iIntValue = ((Integer) list.get(i9)).intValue();
                    abstractC1407hH.b0(i8, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int iM = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                int iIntValue2 = ((Integer) list.get(i10)).intValue();
                iM += AbstractC1407hH.M((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            abstractC1407hH.c0(iM);
            while (i9 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i9)).intValue();
                abstractC1407hH.c0((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i9++;
            }
            return;
        }
        C1924rH c1924rH = (C1924rH) list;
        if (!z7) {
            while (i9 < c1924rH.f20711I) {
                int iC = c1924rH.c(i9);
                abstractC1407hH.b0(i8, (iC >> 31) ^ (iC + iC));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int iM2 = 0;
        for (int i11 = 0; i11 < c1924rH.f20711I; i11++) {
            int iC2 = c1924rH.c(i11);
            iM2 += AbstractC1407hH.M((iC2 >> 31) ^ (iC2 + iC2));
        }
        abstractC1407hH.c0(iM2);
        while (i9 < c1924rH.f20711I) {
            int iC3 = c1924rH.c(i9);
            abstractC1407hH.c0((iC3 >> 31) ^ (iC3 + iC3));
            i9++;
        }
    }

    public static void f(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof FH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    long jLongValue = ((Long) list.get(i9)).longValue();
                    abstractC1407hH.d0(i8, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int iN = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                long jLongValue2 = ((Long) list.get(i10)).longValue();
                iN += AbstractC1407hH.N((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            abstractC1407hH.c0(iN);
            while (i9 < list.size()) {
                long jLongValue3 = ((Long) list.get(i9)).longValue();
                abstractC1407hH.e0((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i9++;
            }
            return;
        }
        FH fh = (FH) list;
        if (!z7) {
            while (i9 < fh.f13345I) {
                long jC = fh.c(i9);
                abstractC1407hH.d0(i8, (jC >> 63) ^ (jC + jC));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int iN2 = 0;
        for (int i11 = 0; i11 < fh.f13345I; i11++) {
            long jC2 = fh.c(i11);
            iN2 += AbstractC1407hH.N((jC2 >> 63) ^ (jC2 + jC2));
        }
        abstractC1407hH.c0(iN2);
        while (i9 < fh.f13345I) {
            long jC3 = fh.c(i9);
            abstractC1407hH.e0((jC3 >> 63) ^ (jC3 + jC3));
            i9++;
        }
    }

    public static void g(int i8, List list, C1459iH c1459iH) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        for (int i9 = 0; i9 < list.size(); i9++) {
            c1459iH.f19290a.Z(i8, (String) list.get(i9));
        }
    }

    public static void h(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof C1924rH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    abstractC1407hH.b0(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int iM = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iM += AbstractC1407hH.M(((Integer) list.get(i10)).intValue());
            }
            abstractC1407hH.c0(iM);
            while (i9 < list.size()) {
                abstractC1407hH.c0(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        C1924rH c1924rH = (C1924rH) list;
        if (!z7) {
            while (i9 < c1924rH.f20711I) {
                abstractC1407hH.b0(i8, c1924rH.c(i9));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int iM2 = 0;
        for (int i11 = 0; i11 < c1924rH.f20711I; i11++) {
            iM2 += AbstractC1407hH.M(c1924rH.c(i11));
        }
        abstractC1407hH.c0(iM2);
        while (i9 < c1924rH.f20711I) {
            abstractC1407hH.c0(c1924rH.c(i9));
            i9++;
        }
    }

    public static void i(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        boolean z8 = list instanceof FH;
        int i9 = 0;
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        if (!z8) {
            if (!z7) {
                while (i9 < list.size()) {
                    abstractC1407hH.d0(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            abstractC1407hH.a0(i8, 2);
            int iN = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iN += AbstractC1407hH.N(((Long) list.get(i10)).longValue());
            }
            abstractC1407hH.c0(iN);
            while (i9 < list.size()) {
                abstractC1407hH.e0(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        FH fh = (FH) list;
        if (!z7) {
            while (i9 < fh.f13345I) {
                abstractC1407hH.d0(i8, fh.c(i9));
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int iN2 = 0;
        for (int i11 = 0; i11 < fh.f13345I; i11++) {
            iN2 += AbstractC1407hH.N(fh.c(i11));
        }
        abstractC1407hH.c0(iN2);
        while (i9 < fh.f13345I) {
            abstractC1407hH.e0(fh.c(i9));
            i9++;
        }
    }

    public static boolean j(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int k(List list) {
        int iN;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C1924rH) {
            C1924rH c1924rH = (C1924rH) list;
            iN = 0;
            while (i8 < size) {
                iN += AbstractC1407hH.N(c1924rH.c(i8));
                i8++;
            }
        } else {
            iN = 0;
            while (i8 < size) {
                iN += AbstractC1407hH.N(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iN;
    }

    public static int l(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC1407hH.M(i8 << 3) + 4) * size;
    }

    public static int m(List list) {
        return list.size() * 4;
    }

    public static int n(int i8, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC1407hH.M(i8 << 3) + 8) * size;
    }

    public static int o(List list) {
        return list.size() * 8;
    }

    public static int p(List list) {
        int iN;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C1924rH) {
            C1924rH c1924rH = (C1924rH) list;
            iN = 0;
            while (i8 < size) {
                iN += AbstractC1407hH.N(c1924rH.c(i8));
                i8++;
            }
        } else {
            iN = 0;
            while (i8 < size) {
                iN += AbstractC1407hH.N(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iN;
    }

    public static int q(List list) {
        int iN;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof FH) {
            FH fh = (FH) list;
            iN = 0;
            while (i8 < size) {
                iN += AbstractC1407hH.N(fh.c(i8));
                i8++;
            }
        } else {
            iN = 0;
            while (i8 < size) {
                iN += AbstractC1407hH.N(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iN;
    }

    public static int r(int i8, InterfaceC1098bI interfaceC1098bI, Object obj) {
        return AbstractC1407hH.K((NH) obj, interfaceC1098bI) + AbstractC1407hH.M(i8 << 3);
    }

    public static int s(List list) {
        int iM;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C1924rH) {
            C1924rH c1924rH = (C1924rH) list;
            iM = 0;
            while (i8 < size) {
                int iC = c1924rH.c(i8);
                iM += AbstractC1407hH.M((iC >> 31) ^ (iC + iC));
                i8++;
            }
        } else {
            iM = 0;
            while (i8 < size) {
                int iIntValue = ((Integer) list.get(i8)).intValue();
                iM += AbstractC1407hH.M((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i8++;
            }
        }
        return iM;
    }

    public static int t(List list) {
        int iN;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof FH) {
            FH fh = (FH) list;
            iN = 0;
            while (i8 < size) {
                long jC = fh.c(i8);
                iN += AbstractC1407hH.N((jC >> 63) ^ (jC + jC));
                i8++;
            }
        } else {
            iN = 0;
            while (i8 < size) {
                long jLongValue = ((Long) list.get(i8)).longValue();
                iN += AbstractC1407hH.N((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i8++;
            }
        }
        return iN;
    }

    public static int u(List list) {
        int iM;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C1924rH) {
            C1924rH c1924rH = (C1924rH) list;
            iM = 0;
            while (i8 < size) {
                iM += AbstractC1407hH.M(c1924rH.c(i8));
                i8++;
            }
        } else {
            iM = 0;
            while (i8 < size) {
                iM += AbstractC1407hH.M(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iM;
    }

    public static int v(List list) {
        int iN;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof FH) {
            FH fh = (FH) list;
            iN = 0;
            while (i8 < size) {
                iN += AbstractC1407hH.N(fh.c(i8));
                i8++;
            }
        } else {
            iN = 0;
            while (i8 < size) {
                iN += AbstractC1407hH.N(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iN;
    }

    public static Object w(Object obj, int i8, InterfaceC2236xH interfaceC2236xH, InterfaceC2028tH interfaceC2028tH, Object obj2, C2272y1 c2272y1) {
        if (interfaceC2028tH == null) {
            return obj2;
        }
        if (interfaceC2236xH instanceof RandomAccess) {
            int size = interfaceC2236xH.size();
            int i9 = 0;
            for (int i10 = 0; i10 < size; i10++) {
                Integer num = (Integer) interfaceC2236xH.get(i10);
                int iIntValue = num.intValue();
                if (interfaceC2028tH.zza(iIntValue)) {
                    if (i10 != i9) {
                        interfaceC2236xH.set(i9, num);
                    }
                    i9++;
                } else {
                    if (obj2 == null) {
                        c2272y1.getClass();
                        obj2 = C2272y1.f(obj);
                    }
                    c2272y1.getClass();
                    ((C1408hI) obj2).c(i8 << 3, Long.valueOf(iIntValue));
                }
            }
            if (i9 != size) {
                interfaceC2236xH.subList(i9, size).clear();
                return obj2;
            }
        } else {
            Iterator it = interfaceC2236xH.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!interfaceC2028tH.zza(iIntValue2)) {
                    if (obj2 == null) {
                        c2272y1.getClass();
                        obj2 = C2272y1.f(obj);
                    }
                    c2272y1.getClass();
                    ((C1408hI) obj2).c(i8 << 3, Long.valueOf(iIntValue2));
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
    public static void x(Object obj, Object obj2) {
        AbstractC1873qH abstractC1873qH = (AbstractC1873qH) obj;
        C1408hI c1408hI = abstractC1873qH.zzt;
        C1408hI c1408hI2 = ((AbstractC1873qH) obj2).zzt;
        C1408hI c1408hI3 = C1408hI.f19078f;
        if (!c1408hI3.equals(c1408hI2)) {
            if (c1408hI3.equals(c1408hI)) {
                int i8 = c1408hI.f19079a + c1408hI2.f19079a;
                int[] iArrCopyOf = Arrays.copyOf(c1408hI.f19080b, i8);
                System.arraycopy(c1408hI2.f19080b, 0, iArrCopyOf, c1408hI.f19079a, c1408hI2.f19079a);
                Object[] objArrCopyOf = Arrays.copyOf(c1408hI.f19081c, i8);
                System.arraycopy(c1408hI2.f19081c, 0, objArrCopyOf, c1408hI.f19079a, c1408hI2.f19079a);
                c1408hI = new C1408hI(i8, iArrCopyOf, objArrCopyOf, true);
            } else {
                c1408hI.getClass();
                if (!c1408hI2.equals(c1408hI3)) {
                    if (!c1408hI.f19083e) {
                        throw new UnsupportedOperationException();
                    }
                    int i9 = c1408hI.f19079a + c1408hI2.f19079a;
                    c1408hI.e(i9);
                    System.arraycopy(c1408hI2.f19080b, 0, c1408hI.f19080b, c1408hI.f19079a, c1408hI2.f19079a);
                    System.arraycopy(c1408hI2.f19081c, 0, c1408hI.f19081c, c1408hI.f19079a, c1408hI2.f19079a);
                    c1408hI.f19079a = i9;
                }
            }
        }
        abstractC1873qH.zzt = c1408hI;
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
    public static void y(int i8, List list, C1459iH c1459iH, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1407hH abstractC1407hH = c1459iH.f19290a;
        int i9 = 0;
        if (!z7) {
            while (i9 < list.size()) {
                abstractC1407hH.Q(i8, ((Boolean) list.get(i9)).booleanValue());
                i9++;
            }
            return;
        }
        abstractC1407hH.a0(i8, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Boolean) list.get(i11)).getClass();
            i10++;
        }
        abstractC1407hH.c0(i10);
        while (i9 < list.size()) {
            abstractC1407hH.P(((Boolean) list.get(i9)).booleanValue() ? (byte) 1 : (byte) 0);
            i9++;
        }
    }

    public static void z(int i8, List list, C1459iH c1459iH) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1459iH.getClass();
        for (int i9 = 0; i9 < list.size(); i9++) {
            c1459iH.f19290a.R(i8, (XG) list.get(i9));
        }
    }
}
