package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1046aI extends XG {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final int[] f17860N = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, com.google.android.gms.common.api.d.API_PRIORITY_OTHER};

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f17861I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final XG f17862J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final XG f17863K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f17864L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f17865M;

    public C1046aI(XG xg, XG xg2) {
        this.f17862J = xg;
        this.f17863K = xg2;
        int iN = xg.n();
        this.f17864L = iN;
        this.f17861I = xg2.n() + iN;
        this.f17865M = Math.max(xg.p(), xg2.p()) + 1;
    }

    public static int A(int i8) {
        return i8 >= 47 ? com.google.android.gms.common.api.d.API_PRIORITY_OTHER : f17860N[i8];
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final byte c(int i8) {
        XG.z(i8, this.f17861I);
        return i(i8);
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final boolean equals(Object obj) {
        VG vgA;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof XG)) {
            return false;
        }
        XG xg = (XG) obj;
        int iN = xg.n();
        int i8 = this.f17861I;
        if (i8 != iN) {
            return false;
        }
        if (i8 == 0) {
            return true;
        }
        int i9 = this.f17402G;
        int i10 = xg.f17402G;
        if (i9 != 0 && i10 != 0 && i9 != i10) {
            return false;
        }
        ZH zh = new ZH(this);
        VG vgA2 = zh.next();
        ZH zh2 = new ZH(xg);
        VG vgA3 = zh2.next();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int iN2 = vgA2.n() - i11;
            int iN3 = vgA3.n() - i12;
            int iMin = Math.min(iN2, iN3);
            if (!(i11 == 0 ? vgA2.B(vgA3, i12, iMin) : vgA3.B(vgA2, i11, iMin))) {
                return false;
            }
            i13 += iMin;
            if (i13 >= i8) {
                if (i13 == i8) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == iN2) {
                vgA = zh.next();
                i11 = 0;
            } else {
                i11 += iMin;
            }
            if (iMin == iN3) {
                vgA2 = vgA2;
                vgA2 = vgA;
                vgA3 = zh2.next();
                i12 = 0;
            } else {
                vgA2 = vgA2;
                vgA2 = vgA;
                i12 += iMin;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final byte i(int i8) {
        int i9 = this.f17864L;
        return i8 < i9 ? this.f17862J.i(i8) : this.f17863K.i(i8 - i9);
    }

    @Override // com.google.android.gms.internal.ads.XG, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new YH(this);
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final int n() {
        return this.f17861I;
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final void o(byte[] bArr, int i8, int i9, int i10) {
        int i11 = i8 + i10;
        XG xg = this.f17862J;
        int i12 = this.f17864L;
        if (i11 <= i12) {
            xg.o(bArr, i8, i9, i10);
            return;
        }
        XG xg2 = this.f17863K;
        if (i8 >= i12) {
            xg2.o(bArr, i8 - i12, i9, i10);
            return;
        }
        int i13 = i12 - i8;
        xg.o(bArr, i8, i9, i13);
        xg2.o(bArr, 0, i9 + i13, i10 - i13);
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final int p() {
        return this.f17865M;
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final boolean q() {
        return this.f17861I >= A(this.f17865M);
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final int r(int i8, int i9, int i10) {
        int i11 = i9 + i10;
        XG xg = this.f17862J;
        int i12 = this.f17864L;
        if (i11 <= i12) {
            return xg.r(i8, i9, i10);
        }
        XG xg2 = this.f17863K;
        if (i9 >= i12) {
            return xg2.r(i8, i9 - i12, i10);
        }
        int i13 = i12 - i9;
        return xg2.r(xg.r(i8, i9, i13), 0, i10 - i13);
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final XG s(int i8, int i9) {
        int i10 = this.f17861I;
        int iV = XG.v(i8, i9, i10);
        if (iV == 0) {
            return XG.f17401H;
        }
        if (iV == i10) {
            return this;
        }
        XG xg = this.f17862J;
        int i11 = this.f17864L;
        if (i9 <= i11) {
            return xg.s(i8, i9);
        }
        XG xg2 = this.f17863K;
        if (i8 < i11) {
            return new C1046aI(xg.s(i8, xg.n()), xg2.s(0, i9 - i11));
        }
        return xg2.s(i8 - i11, i9 - i11);
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final AbstractC1200dH t() {
        VG vg;
        ArrayList<ByteBuffer> arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque(this.f17865M);
        arrayDeque.push(this);
        XG xg = this.f17862J;
        while (xg instanceof C1046aI) {
            C1046aI c1046aI = (C1046aI) xg;
            arrayDeque.push(c1046aI);
            xg = c1046aI.f17862J;
        }
        VG vg2 = (VG) xg;
        while (true) {
            if (!(vg2 != null)) {
                int i8 = 0;
                int iRemaining = 0;
                for (ByteBuffer byteBuffer : arrayList) {
                    iRemaining += byteBuffer.remaining();
                    i8 = byteBuffer.hasArray() ? i8 | 1 : byteBuffer.isDirect() ? i8 | 2 : i8 | 4;
                }
                if (i8 == 2) {
                    return new ZG(arrayList, iRemaining);
                }
                BH bh = new BH();
                bh.f12305G = arrayList.iterator();
                bh.f12307I = 0;
                for (ByteBuffer byteBuffer2 : arrayList) {
                    bh.f12307I++;
                }
                bh.f12308J = -1;
                if (!bh.E()) {
                    bh.f12306H = AbstractC2288yH.f22012c;
                    bh.f12308J = 0;
                    bh.f12309K = 0;
                    bh.f12313O = 0L;
                }
                return new C1045aH(bh);
            }
            if (vg2 == null) {
                throw new NoSuchElementException();
            }
            do {
                if (arrayDeque.isEmpty()) {
                    vg = null;
                    break;
                }
                XG xg2 = ((C1046aI) arrayDeque.pop()).f17863K;
                while (xg2 instanceof C1046aI) {
                    C1046aI c1046aI2 = (C1046aI) xg2;
                    arrayDeque.push(c1046aI2);
                    xg2 = c1046aI2.f17862J;
                }
                vg = (VG) xg2;
            } while (vg.n() == 0);
            arrayList.add(ByteBuffer.wrap(vg2.f16987I, vg2.A(), vg2.n()).asReadOnlyBuffer());
            vg2 = vg;
        }
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final void u(S3.e eVar) {
        this.f17862J.u(eVar);
        this.f17863K.u(eVar);
    }

    @Override // com.google.android.gms.internal.ads.XG
    /* JADX INFO: renamed from: w */
    public final AbstractC1349gB iterator() {
        return new YH(this);
    }
}
