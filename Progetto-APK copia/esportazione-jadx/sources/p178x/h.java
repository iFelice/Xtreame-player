package p178x;

import java.util.HashSet;
import p170w.c;
import p170w.d;
import p170w.e;
import p193z.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f31149a = new b();

    public static boolean a(d dVar) {
        int[] iArr = dVar.f30847o0;
        int i8 = iArr[0];
        int i9 = iArr[1];
        d dVar2 = dVar.f30810S;
        e eVar = dVar2 != null ? (e) dVar2 : null;
        if (eVar != null) {
            int i10 = eVar.f30847o0[0];
        }
        if (eVar != null) {
            int i11 = eVar.f30847o0[1];
        }
        boolean z7 = i8 == 1 || dVar.y() || i8 == 2 || (i8 == 3 && dVar.f30850r == 0 && dVar.f30813V == 0.0f && dVar.r(0)) || (i8 == 3 && dVar.f30850r == 1 && dVar.s(0, dVar.o()));
        boolean z8 = i9 == 1 || dVar.z() || i9 == 2 || (i9 == 3 && dVar.f30851s == 0 && dVar.f30813V == 0.0f && dVar.r(1)) || (i9 == 3 && dVar.f30851s == 1 && dVar.s(1, dVar.i()));
        if (dVar.f30813V <= 0.0f || !(z7 || z8)) {
            return z7 && z8;
        }
        return true;
    }

    public static void b(int i8, d dVar, f fVar, boolean z7) {
        c cVar;
        c cVar2;
        c cVar3;
        c cVar4;
        if (dVar.f30842m) {
            return;
        }
        if (!(dVar instanceof e) && dVar.x() && a(dVar)) {
            e.R(dVar, fVar, new b());
        }
        c cVarG = dVar.g(2);
        c cVarG2 = dVar.g(4);
        int iC = cVarG.c();
        int iC2 = cVarG2.c();
        HashSet<c> hashSet = cVarG.f30783a;
        char c8 = 0;
        if (hashSet != null && cVarG.f30785c) {
            for (c cVar5 : hashSet) {
                d dVar2 = cVar5.f30786d;
                int i9 = i8 + 1;
                boolean zA = a(dVar2);
                if (dVar2.x() && zA) {
                    e.R(dVar2, fVar, new b());
                }
                c cVar6 = dVar2.f30799H;
                c cVar7 = dVar2.f30801J;
                boolean z8 = (cVar5 == cVar6 && (cVar4 = cVar7.f30788f) != null && cVar4.f30785c) || (cVar5 == cVar7 && (cVar3 = cVar6.f30788f) != null && cVar3.f30785c);
                int i10 = dVar2.f30847o0[c8];
                if (i10 != 3 || zA) {
                    if (!dVar2.x()) {
                        if (cVar5 == cVar6 && cVar7.f30788f == null) {
                            int iD = cVar6.d() + iC;
                            dVar2.F(iD, dVar2.o() + iD);
                            b(i9, dVar2, fVar, z7);
                        } else if (cVar5 == cVar7 && cVar6.f30788f == null) {
                            int iD2 = iC - cVar7.d();
                            dVar2.F(iD2 - dVar2.o(), iD2);
                            b(i9, dVar2, fVar, z7);
                        } else if (z8 && !dVar2.v()) {
                            c(i9, dVar2, fVar, z7);
                        }
                    }
                } else if (i10 == 3 && dVar2.f30854v >= 0 && dVar2.f30853u >= 0 && ((dVar2.f30829f0 == 8 || (dVar2.f30850r == 0 && dVar2.f30813V == 0.0f)) && !dVar2.v() && z8 && !dVar2.v())) {
                    d(i9, dVar, fVar, dVar2, z7);
                }
                c8 = 0;
            }
        }
        if (dVar instanceof p170w.f) {
            return;
        }
        HashSet<c> hashSet2 = cVarG2.f30783a;
        if (hashSet2 != null && cVarG2.f30785c) {
            for (c cVar8 : hashSet2) {
                d dVar3 = cVar8.f30786d;
                int i11 = i8 + 1;
                boolean zA2 = a(dVar3);
                if (dVar3.x() && zA2) {
                    e.R(dVar3, fVar, new b());
                }
                c cVar9 = dVar3.f30799H;
                c cVar10 = dVar3.f30801J;
                boolean z9 = (cVar8 == cVar9 && (cVar2 = cVar10.f30788f) != null && cVar2.f30785c) || (cVar8 == cVar10 && (cVar = cVar9.f30788f) != null && cVar.f30785c);
                int i12 = dVar3.f30847o0[0];
                if (i12 != 3 || zA2) {
                    if (!dVar3.x()) {
                        if (cVar8 == cVar9 && cVar10.f30788f == null) {
                            int iD3 = cVar9.d() + iC2;
                            dVar3.F(iD3, dVar3.o() + iD3);
                            b(i11, dVar3, fVar, z7);
                        } else if (cVar8 == cVar10 && cVar9.f30788f == null) {
                            int iD4 = iC2 - cVar10.d();
                            dVar3.F(iD4 - dVar3.o(), iD4);
                            b(i11, dVar3, fVar, z7);
                        } else if (z9 && !dVar3.v()) {
                            c(i11, dVar3, fVar, z7);
                        }
                    }
                } else if (i12 == 3 && dVar3.f30854v >= 0 && dVar3.f30853u >= 0) {
                    if (dVar3.f30829f0 != 8) {
                        if (dVar3.f30850r == 0) {
                            if (dVar3.f30813V == 0.0f) {
                            }
                        }
                    }
                    if (!dVar3.v() && z9 && !dVar3.v()) {
                        d(i11, dVar, fVar, dVar3, z7);
                    }
                }
            }
        }
        dVar.f30842m = true;
    }

    public static void c(int i8, d dVar, f fVar, boolean z7) {
        float f8 = dVar.f30823c0;
        c cVar = dVar.f30799H;
        int iC = cVar.f30788f.c();
        c cVar2 = dVar.f30801J;
        int iC2 = cVar2.f30788f.c();
        int iD = cVar.d() + iC;
        int iD2 = iC2 - cVar2.d();
        if (iC == iC2) {
            f8 = 0.5f;
        } else {
            iC = iD;
            iC2 = iD2;
        }
        int iO = dVar.o();
        int i9 = (iC2 - iC) - iO;
        if (iC > iC2) {
            i9 = (iC - iC2) - iO;
        }
        int i10 = ((int) (i9 > 0 ? (f8 * i9) + 0.5f : f8 * i9)) + iC;
        int i11 = i10 + iO;
        if (iC > iC2) {
            i11 = i10 - iO;
        }
        dVar.F(i10, i11);
        b(i8 + 1, dVar, fVar, z7);
    }

    public static void d(int i8, d dVar, f fVar, d dVar2, boolean z7) {
        float f8 = dVar2.f30823c0;
        c cVar = dVar2.f30799H;
        int iD = cVar.d() + cVar.f30788f.c();
        c cVar2 = dVar2.f30801J;
        int iC = cVar2.f30788f.c() - cVar2.d();
        if (iC >= iD) {
            int iO = dVar2.o();
            if (dVar2.f30829f0 != 8) {
                int i9 = dVar2.f30850r;
                if (i9 == 2) {
                    iO = (int) (dVar2.f30823c0 * 0.5f * (dVar instanceof e ? dVar.o() : dVar.f30810S.o()));
                } else if (i9 == 0) {
                    iO = iC - iD;
                }
                iO = Math.max(dVar2.f30853u, iO);
                int i10 = dVar2.f30854v;
                if (i10 > 0) {
                    iO = Math.min(i10, iO);
                }
            }
            int i11 = iD + ((int) ((f8 * ((iC - iD) - iO)) + 0.5f));
            dVar2.F(i11, iO + i11);
            b(i8 + 1, dVar2, fVar, z7);
        }
    }

    public static void e(int i8, d dVar, f fVar) {
        float f8 = dVar.f30825d0;
        c cVar = dVar.f30800I;
        int iC = cVar.f30788f.c();
        c cVar2 = dVar.f30802K;
        int iC2 = cVar2.f30788f.c();
        int iD = cVar.d() + iC;
        int iD2 = iC2 - cVar2.d();
        if (iC == iC2) {
            f8 = 0.5f;
        } else {
            iC = iD;
            iC2 = iD2;
        }
        int i9 = dVar.i();
        int i10 = (iC2 - iC) - i9;
        if (iC > iC2) {
            i10 = (iC - iC2) - i9;
        }
        int i11 = (int) (i10 > 0 ? (f8 * i10) + 0.5f : f8 * i10);
        int i12 = iC + i11;
        int i13 = i12 + i9;
        if (iC > iC2) {
            i12 = iC - i11;
            i13 = i12 - i9;
        }
        dVar.G(i12, i13);
        g(i8 + 1, dVar, fVar);
    }

    public static void f(int i8, d dVar, f fVar, d dVar2) {
        float f8 = dVar2.f30825d0;
        c cVar = dVar2.f30800I;
        int iD = cVar.d() + cVar.f30788f.c();
        c cVar2 = dVar2.f30802K;
        int iC = cVar2.f30788f.c() - cVar2.d();
        if (iC >= iD) {
            int i9 = dVar2.i();
            if (dVar2.f30829f0 != 8) {
                int i10 = dVar2.f30851s;
                if (i10 == 2) {
                    i9 = (int) (f8 * 0.5f * (dVar instanceof e ? dVar.i() : dVar.f30810S.i()));
                } else if (i10 == 0) {
                    i9 = iC - iD;
                }
                i9 = Math.max(dVar2.f30856x, i9);
                int i11 = dVar2.f30857y;
                if (i11 > 0) {
                    i9 = Math.min(i11, i9);
                }
            }
            int i12 = iD + ((int) ((f8 * ((iC - iD) - i9)) + 0.5f));
            dVar2.G(i12, i9 + i12);
            g(i8 + 1, dVar2, fVar);
        }
    }

    public static void g(int i8, d dVar, f fVar) {
        c cVar;
        c cVar2;
        c cVar3;
        c cVar4;
        c cVar5;
        if (dVar.f30844n) {
            return;
        }
        if (!(dVar instanceof e) && dVar.x() && a(dVar)) {
            e.R(dVar, fVar, new b());
        }
        c cVarG = dVar.g(3);
        c cVarG2 = dVar.g(5);
        int iC = cVarG.c();
        int iC2 = cVarG2.c();
        HashSet<c> hashSet = cVarG.f30783a;
        if (hashSet != null && cVarG.f30785c) {
            for (c cVar6 : hashSet) {
                d dVar2 = cVar6.f30786d;
                int i9 = i8 + 1;
                boolean zA = a(dVar2);
                if (dVar2.x() && zA) {
                    e.R(dVar2, fVar, new b());
                }
                c cVar7 = dVar2.f30800I;
                c cVar8 = dVar2.f30802K;
                boolean z7 = (cVar6 == cVar7 && (cVar5 = cVar8.f30788f) != null && cVar5.f30785c) || (cVar6 == cVar8 && (cVar4 = cVar7.f30788f) != null && cVar4.f30785c);
                int i10 = dVar2.f30847o0[1];
                if (i10 != 3 || zA) {
                    if (!dVar2.x()) {
                        if (cVar6 == cVar7 && cVar8.f30788f == null) {
                            int iD = cVar7.d() + iC;
                            dVar2.G(iD, dVar2.i() + iD);
                            g(i9, dVar2, fVar);
                        } else if (cVar6 == cVar8 && cVar7.f30788f == null) {
                            int iD2 = iC - cVar8.d();
                            dVar2.G(iD2 - dVar2.i(), iD2);
                            g(i9, dVar2, fVar);
                        } else if (z7 && !dVar2.w()) {
                            e(i9, dVar2, fVar);
                        }
                    }
                } else if (i10 == 3 && dVar2.f30857y >= 0 && dVar2.f30856x >= 0 && (dVar2.f30829f0 == 8 || (dVar2.f30851s == 0 && dVar2.f30813V == 0.0f))) {
                    if (!dVar2.w() && z7 && !dVar2.w()) {
                        f(i9, dVar, fVar, dVar2);
                    }
                }
            }
        }
        if (dVar instanceof p170w.f) {
            return;
        }
        HashSet<c> hashSet2 = cVarG2.f30783a;
        if (hashSet2 != null && cVarG2.f30785c) {
            for (c cVar9 : hashSet2) {
                d dVar3 = cVar9.f30786d;
                int i11 = i8 + 1;
                boolean zA2 = a(dVar3);
                if (dVar3.x() && zA2) {
                    e.R(dVar3, fVar, new b());
                }
                c cVar10 = dVar3.f30800I;
                c cVar11 = dVar3.f30802K;
                boolean z8 = (cVar9 == cVar10 && (cVar3 = cVar11.f30788f) != null && cVar3.f30785c) || (cVar9 == cVar11 && (cVar2 = cVar10.f30788f) != null && cVar2.f30785c);
                int i12 = dVar3.f30847o0[1];
                if (i12 != 3 || zA2) {
                    if (!dVar3.x()) {
                        if (cVar9 == cVar10 && cVar11.f30788f == null) {
                            int iD3 = cVar10.d() + iC2;
                            dVar3.G(iD3, dVar3.i() + iD3);
                            g(i11, dVar3, fVar);
                        } else if (cVar9 == cVar11 && cVar10.f30788f == null) {
                            int iD4 = iC2 - cVar11.d();
                            dVar3.G(iD4 - dVar3.i(), iD4);
                            g(i11, dVar3, fVar);
                        } else if (z8 && !dVar3.w()) {
                            e(i11, dVar3, fVar);
                        }
                    }
                } else if (i12 == 3 && dVar3.f30857y >= 0 && dVar3.f30856x >= 0) {
                    if (dVar3.f30829f0 != 8) {
                        if (dVar3.f30851s == 0) {
                            if (dVar3.f30813V == 0.0f) {
                            }
                        }
                    }
                    if (!dVar3.w() && z8 && !dVar3.w()) {
                        f(i11, dVar, fVar, dVar3);
                    }
                }
            }
        }
        c cVarG3 = dVar.g(6);
        if (cVarG3.f30783a != null && cVarG3.f30785c) {
            int iC3 = cVarG3.c();
            for (c cVar12 : cVarG3.f30783a) {
                d dVar4 = cVar12.f30786d;
                int i13 = i8 + 1;
                boolean zA3 = a(dVar4);
                if (dVar4.x() && zA3) {
                    e.R(dVar4, fVar, new b());
                }
                if (dVar4.f30847o0[1] != 3 || zA3) {
                    if (!dVar4.x() && cVar12 == (cVar = dVar4.f30803L)) {
                        int iD5 = cVar12.d() + iC3;
                        if (dVar4.f30796E) {
                            int i14 = iD5 - dVar4.f30817Z;
                            int i15 = dVar4.f30812U + i14;
                            dVar4.f30816Y = i14;
                            dVar4.f30800I.i(i14);
                            dVar4.f30802K.i(i15);
                            cVar.i(iD5);
                            dVar4.f30840l = true;
                        }
                        g(i13, dVar4, fVar);
                    }
                }
            }
        }
        dVar.f30844n = true;
    }
}
