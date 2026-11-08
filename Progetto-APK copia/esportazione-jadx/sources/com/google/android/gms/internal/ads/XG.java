package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: loaded from: classes.dex */
public abstract class XG implements Iterable, Serializable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final VG f17401H = new VG(AbstractC2288yH.f22011b);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f17402G = 0;

    static {
        int i8 = RG.f16232a;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:47:0x0118 A[LOOP:0: B:45:0x010e->B:47:0x0118, LOOP_END] */
    public static XG l(Iterator it, int i8) {
        Xu xu;
        XG c1046aI;
        C1046aI c1046aI2;
        if (i8 <= 0) {
            throw new IllegalArgumentException(A0.O.y("length (", i8, ") must be >= 1"));
        }
        if (i8 == 1) {
            return (XG) it.next();
        }
        int i9 = i8 >>> 1;
        XG xgL = l(it, i9);
        XG xgL2 = l(it, i8 - i9);
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - xgL.n() < xgL2.n()) {
            throw new IllegalArgumentException(com.google.protobuf.U2.j("ByteString would be too long: ", xgL.n(), MqttTopic.SINGLE_LEVEL_WILDCARD, xgL2.n()));
        }
        if (xgL2.n() == 0) {
            return xgL;
        }
        if (xgL.n() == 0) {
            return xgL2;
        }
        int iN = xgL2.n() + xgL.n();
        if (iN < 128) {
            int iN2 = xgL.n();
            int iN3 = xgL2.n();
            int i10 = iN2 + iN3;
            byte[] bArr = new byte[i10];
            v(0, iN2, xgL.n());
            v(0, iN2, i10);
            if (iN2 > 0) {
                xgL.o(bArr, 0, 0, iN2);
            }
            v(0, iN3, xgL2.n());
            v(iN2, i10, i10);
            if (iN3 > 0) {
                xgL2.o(bArr, 0, iN2, iN3);
            }
            return new VG(bArr);
        }
        if (xgL instanceof C1046aI) {
            C1046aI c1046aI3 = (C1046aI) xgL;
            XG xg = c1046aI3.f17863K;
            int iN4 = xgL2.n() + xg.n();
            XG xg2 = c1046aI3.f17862J;
            if (iN4 < 128) {
                int iN5 = xg.n();
                int iN6 = xgL2.n();
                int i11 = iN5 + iN6;
                byte[] bArr2 = new byte[i11];
                v(0, iN5, xg.n());
                v(0, iN5, i11);
                if (iN5 > 0) {
                    xg.o(bArr2, 0, 0, iN5);
                }
                v(0, iN6, xgL2.n());
                v(iN5, i11, i11);
                if (iN6 > 0) {
                    xgL2.o(bArr2, 0, iN5, iN6);
                }
                c1046aI2 = new C1046aI(xg2, new VG(bArr2));
            } else {
                if (xg2.p() > xg.p() && c1046aI3.f17865M > xgL2.p()) {
                    return new C1046aI(xg2, new C1046aI(xg, xgL2));
                }
                if (iN >= C1046aI.A(Math.max(xgL.p(), xgL2.p()) + 1)) {
                    xu = new Xu();
                    xu.l(xgL);
                    xu.l(xgL2);
                    c1046aI = (XG) ((ArrayDeque) xu.f17529H).pop();
                    while (!((ArrayDeque) xu.f17529H).isEmpty()) {
                        c1046aI = new C1046aI((XG) ((ArrayDeque) xu.f17529H).pop(), c1046aI);
                    }
                    return c1046aI;
                }
                c1046aI2 = new C1046aI(xgL, xgL2);
            }
        } else {
            if (iN >= C1046aI.A(Math.max(xgL.p(), xgL2.p()) + 1)) {
                xu = new Xu();
                xu.l(xgL);
                xu.l(xgL2);
                c1046aI = (XG) ((ArrayDeque) xu.f17529H).pop();
                while (!((ArrayDeque) xu.f17529H).isEmpty()) {
                    c1046aI = new C1046aI((XG) ((ArrayDeque) xu.f17529H).pop(), c1046aI);
                }
                return c1046aI;
            }
            c1046aI2 = new C1046aI(xgL, xgL2);
        }
        return c1046aI2;
    }

    public static int v(int i8, int i9, int i10) {
        int i11 = i9 - i8;
        if ((i8 | i9 | i11 | (i10 - i9)) >= 0) {
            return i11;
        }
        if (i8 < 0) {
            throw new IndexOutOfBoundsException(A0.O.y("Beginning index: ", i8, " < 0"));
        }
        if (i9 < i8) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Beginning index larger than ending index: ", i8, ", ", i9));
        }
        throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("End index: ", i9, " >= ", i10));
    }

    public static XG x(ArrayList arrayList) {
        int size;
        if (arrayList instanceof Collection) {
            size = arrayList.size();
        } else {
            Iterator it = arrayList.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        }
        return size == 0 ? f17401H : l(arrayList.iterator(), size);
    }

    public static VG y(int i8, byte[] bArr, int i9) {
        v(i8, i8 + i9, bArr.length);
        byte[] bArr2 = new byte[i9];
        System.arraycopy(bArr, i8, bArr2, 0, i9);
        return new VG(bArr2);
    }

    public static void z(int i8, int i9) {
        if (((i9 - (i8 + 1)) | i8) < 0) {
            if (i8 >= 0) {
                throw new ArrayIndexOutOfBoundsException(com.google.protobuf.U2.j("Index > length: ", i8, ", ", i9));
            }
            throw new ArrayIndexOutOfBoundsException(p000a.r.f("Index < 0: ", i8));
        }
    }

    public final byte[] b() {
        int iN = n();
        if (iN == 0) {
            return AbstractC2288yH.f22011b;
        }
        byte[] bArr = new byte[iN];
        o(bArr, 0, 0, iN);
        return bArr;
    }

    public abstract byte c(int i8);

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iR = this.f17402G;
        if (iR == 0) {
            int iN = n();
            iR = r(iN, 0, iN);
            if (iR == 0) {
                iR = 1;
            }
            this.f17402G = iR;
        }
        return iR;
    }

    public abstract byte i(int i8);

    public abstract int n();

    public abstract void o(byte[] bArr, int i8, int i9, int i10);

    public abstract int p();

    public abstract boolean q();

    public abstract int r(int i8, int i9, int i10);

    public abstract XG s(int i8, int i9);

    public abstract AbstractC1200dH t();

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iN = n();
        String strL = n() <= 50 ? Cw.L(this) : Cw.L(s(0, 47)).concat("...");
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(iN);
        sb.append(" contents=\"");
        return p000a.r.j(sb, strL, "\">");
    }

    public abstract void u(S3.e eVar);

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public AbstractC1349gB iterator() {
        return new TG(this);
    }
}
