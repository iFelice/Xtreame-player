package p111o1;

import K.k;
import W0.J;
import W0.t;
import android.support.v4.media.session.PlaybackStateCompat;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f27797a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean a(int i8, boolean z7) {
        if ((i8 >>> 8) == 3368816) {
            return true;
        }
        if (i8 == 1751476579 && z7) {
            return true;
        }
        int[] iArr = f27797a;
        for (int i9 = 0; i9 < 29; i9++) {
            if (iArr[i9] == i8) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x0116  */
    /* JADX WARN: Code duplicated, block: B:77:0x0119  */
    /* JADX WARN: Code duplicated, block: B:79:0x011d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x011f  */
    /* JADX WARN: Code duplicated, block: B:81:0x0122  */
    /* JADX WARN: Code duplicated, block: B:83:0x0125 A[RETURN] */
    public static J b(t tVar, boolean z7, boolean z8) {
        boolean z9;
        long jT;
        int i8;
        boolean z10;
        int[] iArr;
        long j8 = tVar.j();
        long j9 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        long j10 = -1;
        if (j8 != -1 && j8 <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j9 = j8;
        }
        int i9 = (int) j9;
        E e8 = new E(64);
        int i10 = 0;
        int i11 = 0;
        boolean z11 = false;
        while (true) {
            if (i11 < i9) {
                e8.I(8);
                if (tVar.e(e8.f28035a, i10, 8, true)) {
                    long jB = e8.B();
                    int iL = e8.l();
                    if (jB == 1) {
                        tVar.c(8, e8.f28035a, 8);
                        i8 = 16;
                        e8.K(16);
                        jT = e8.t();
                    } else {
                        if (jB == 0) {
                            long j11 = tVar.j();
                            if (j11 != j10) {
                                jB = (j11 - tVar.f()) + ((long) 8);
                            }
                        }
                        jT = jB;
                        i8 = 8;
                    }
                    long j12 = i8;
                    if (jT < j12) {
                        return new a(iL, jT, i8);
                    }
                    i11 += i8;
                    if (iL == 1836019574) {
                        i9 += (int) jT;
                        if (j8 != -1 && i9 > j8) {
                            i9 = (int) j8;
                        }
                        j10 = -1;
                    } else if (iL == 1836019558 || iL == 1836475768) {
                        z9 = true;
                    } else {
                        long j13 = j8;
                        if (iL == 1835295092) {
                            z11 = true;
                        }
                        if ((((long) i11) + jT) - j12 >= i9) {
                            z9 = false;
                        } else {
                            int i12 = (int) (jT - j12);
                            i11 += i12;
                            if (iL == 1718909296) {
                                if (i12 < 8) {
                                    return new a(iL, i12, 8);
                                }
                                e8.I(i12);
                                tVar.c(0, e8.f28035a, i12);
                                int iL2 = e8.l();
                                if (a(iL2, z8)) {
                                    z11 = true;
                                }
                                e8.M(4);
                                int iA = e8.a() / 4;
                                if (!z11 && iA > 0) {
                                    iArr = new int[iA];
                                    int i13 = 0;
                                    while (true) {
                                        if (i13 >= iA) {
                                            z10 = z11;
                                            break;
                                        }
                                        int iL3 = e8.l();
                                        iArr[i13] = iL3;
                                        if (a(iL3, z8)) {
                                            z10 = true;
                                            break;
                                        }
                                        i13++;
                                    }
                                } else {
                                    z10 = z11;
                                    iArr = null;
                                }
                                if (!z10) {
                                    return new k(iArr, iL2);
                                }
                                z11 = z10;
                            } else if (i12 != 0) {
                                tVar.g(i12);
                            }
                            j8 = j13;
                            j10 = -1;
                            i10 = 0;
                        }
                    }
                }
                if (!z11) {
                    return j.f27754I;
                }
                if (z7 != z9) {
                    return z9 ? j.f27752G : j.f27753H;
                }
                return null;
            }
            z9 = false;
            if (!z11) {
                return j.f27754I;
            }
            if (z7 != z9) {
                if (z9) {
                }
            }
            return null;
        }
    }
}
