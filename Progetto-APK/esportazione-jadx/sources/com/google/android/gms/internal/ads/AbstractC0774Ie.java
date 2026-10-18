package com.google.android.gms.internal.ads;

import android.util.Pair;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ie, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0774Ie {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0904Rd f13891a = new C0904Rd();

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
    }

    public abstract int a(Object obj);

    public abstract int b();

    public abstract int c();

    public abstract C1521je d(int i8, C1521je c1521je, boolean z7);

    public abstract C2196we e(int i8, C2196we c2196we, long j8);

    public final boolean equals(Object obj) {
        int iH;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC0774Ie)) {
            return false;
        }
        AbstractC0774Ie abstractC0774Ie = (AbstractC0774Ie) obj;
        if (abstractC0774Ie.c() == c() && abstractC0774Ie.b() == b()) {
            C2196we c2196we = new C2196we();
            C1521je c1521je = new C1521je();
            C2196we c2196we2 = new C2196we();
            C1521je c1521je2 = new C1521je();
            for (int i8 = 0; i8 < c(); i8++) {
                if (!e(i8, c2196we, 0L).equals(abstractC0774Ie.e(i8, c2196we2, 0L))) {
                    return false;
                }
            }
            for (int i9 = 0; i9 < b(); i9++) {
                if (!d(i9, c1521je, true).equals(abstractC0774Ie.d(i9, c1521je2, true))) {
                    return false;
                }
            }
            int iG = g(true);
            if (iG == abstractC0774Ie.g(true) && (iH = h(true)) == abstractC0774Ie.h(true)) {
                while (iG != iH) {
                    int iJ = j(true, iG, 0);
                    if (iJ != abstractC0774Ie.j(true, iG, 0)) {
                        return false;
                    }
                    iG = iJ;
                }
                return true;
            }
        }
        return false;
    }

    public abstract Object f(int i8);

    public int g(boolean z7) {
        return o() ? -1 : 0;
    }

    public int h(boolean z7) {
        if (o()) {
            return -1;
        }
        return c() - 1;
    }

    public final int hashCode() {
        int i8;
        C2196we c2196we = new C2196we();
        C1521je c1521je = new C1521je();
        int iC = c() + 217;
        int i9 = 0;
        while (true) {
            i8 = iC * 31;
            if (i9 >= c()) {
                break;
            }
            iC = i8 + e(i9, c2196we, 0L).hashCode();
            i9++;
        }
        int iB = b() + i8;
        for (int i10 = 0; i10 < b(); i10++) {
            iB = (iB * 31) + d(i10, c1521je, true).hashCode();
        }
        int iG = g(true);
        while (iG != -1) {
            iB = (iB * 31) + iG;
            iG = j(true, iG, 0);
        }
        return iB;
    }

    public final int i(int i8, C1521je c1521je, C2196we c2196we, int i9, boolean z7) {
        int i10 = d(i8, c1521je, false).f19467c;
        if (e(i10, c2196we, 0L).f21719l != i8) {
            return i8 + 1;
        }
        int iJ = j(z7, i10, i9);
        if (iJ == -1) {
            return -1;
        }
        return e(iJ, c2196we, 0L).f21718k;
    }

    public int j(boolean z7, int i8, int i9) {
        if (i9 == 0) {
            if (i8 == h(z7)) {
                return -1;
            }
            return i8 + 1;
        }
        if (i9 == 1) {
            return i8;
        }
        if (i9 == 2) {
            return i8 == h(z7) ? g(z7) : i8 + 1;
        }
        throw new IllegalStateException();
    }

    public int k(int i8) {
        if (i8 == g(false)) {
            return -1;
        }
        return i8 - 1;
    }

    public final Pair l(C2196we c2196we, C1521je c1521je, int i8, long j8) {
        Pair pairM = m(c2196we, c1521je, i8, j8, 0L);
        pairM.getClass();
        return pairM;
    }

    public final Pair m(C2196we c2196we, C1521je c1521je, int i8, long j8, long j9) {
        p113o3.r.p(i8, c());
        e(i8, c2196we, j9);
        if (j8 == -9223372036854775807L) {
            c2196we.getClass();
            j8 = 0;
        }
        int i9 = c2196we.f21718k;
        d(i9, c1521je, false);
        while (i9 < c2196we.f21719l) {
            c1521je.getClass();
            if (j8 == 0) {
                break;
            }
            int i10 = i9 + 1;
            d(i10, c1521je, false).getClass();
            if (j8 < 0) {
                break;
            }
            i9 = i10;
        }
        d(i9, c1521je, true);
        c1521je.getClass();
        long j10 = c1521je.f19468d;
        if (j10 != -9223372036854775807L) {
            j8 = Math.min(j8, j10 - 1);
        }
        long jMax = Math.max(0L, j8);
        Object obj = c1521je.f19466b;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(jMax));
    }

    public C1521je n(Object obj, C1521je c1521je) {
        return d(a(obj), c1521je, true);
    }

    public final boolean o() {
        return c() == 0;
    }
}
