package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: renamed from: com.google.protobuf.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2954u extends AbstractC2961w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InputStream f24508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f24509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f24510g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24511h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f24512i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f24513j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f24514k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f24515l = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    public C2954u(InputStream inputStream) {
        AbstractC2960v1.a(inputStream, "input");
        this.f24508e = inputStream;
        this.f24509f = new byte[4096];
        this.f24510g = 0;
        this.f24512i = 0;
        this.f24514k = 0;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final long A() {
        return O();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int B() {
        return AbstractC2961w.c(x());
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final long C() {
        return AbstractC2961w.d(P());
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final String D() throws C2966x1 {
        int iX = x();
        byte[] bArr = this.f24509f;
        if (iX > 0) {
            int i8 = this.f24510g;
            int i9 = this.f24512i;
            if (iX <= i8 - i9) {
                String str = new String(bArr, i9, iX, AbstractC2960v1.f24524a);
                this.f24512i += iX;
                return str;
            }
        }
        if (iX == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iX < 0) {
            throw C2966x1.e();
        }
        if (iX > this.f24510g) {
            return new String(K(iX), AbstractC2960v1.f24524a);
        }
        S(iX);
        String str2 = new String(bArr, this.f24512i, iX, AbstractC2960v1.f24524a);
        this.f24512i += iX;
        return str2;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final String E() throws IOException {
        int iX = x();
        int i8 = this.f24512i;
        int i9 = this.f24510g;
        int i10 = i9 - i8;
        byte[] bArrK = this.f24509f;
        if (iX <= i10 && iX > 0) {
            this.f24512i = i8 + iX;
        } else {
            if (iX == 0) {
                return HttpUrl.FRAGMENT_ENCODE_SET;
            }
            if (iX < 0) {
                throw C2966x1.e();
            }
            i8 = 0;
            if (iX <= i9) {
                S(iX);
                this.f24512i = iX;
            } else {
                bArrK = K(iX);
            }
        }
        return K2.f24269a.Y(i8, bArrK, iX);
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int F() throws C2966x1 {
        if (g()) {
            this.f24513j = 0;
            return 0;
        }
        int iX = x();
        this.f24513j = iX;
        if ((iX >>> 3) != 0) {
            return iX;
        }
        throw C2966x1.a();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int G() {
        return x();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final long H() {
        return P();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final boolean I(int i8) throws C2966x1 {
        int i9 = i8 & 7;
        int i10 = 0;
        if (i9 != 0) {
            if (i9 == 1) {
                T(8);
                return true;
            }
            if (i9 == 2) {
                T(x());
                return true;
            }
            if (i9 == 3) {
                J();
                a(((i8 >>> 3) << 3) | 4);
                return true;
            }
            if (i9 == 4) {
                return false;
            }
            if (i9 != 5) {
                throw C2966x1.c();
            }
            T(4);
            return true;
        }
        int i11 = this.f24510g - this.f24512i;
        byte[] bArr = this.f24509f;
        if (i11 >= 10) {
            while (i10 < 10) {
                int i12 = this.f24512i;
                this.f24512i = i12 + 1;
                if (bArr[i12] < 0) {
                    i10++;
                }
            }
            throw C2966x1.d();
        }
        while (i10 < 10) {
            if (this.f24512i == this.f24510g) {
                S(1);
            }
            int i13 = this.f24512i;
            this.f24512i = i13 + 1;
            if (bArr[i13] < 0) {
                i10++;
            }
        }
        throw C2966x1.d();
        return true;
    }

    public final byte[] K(int i8) throws IOException {
        byte[] bArrL = L(i8);
        if (bArrL != null) {
            return bArrL;
        }
        int i9 = this.f24512i;
        int i10 = this.f24510g;
        int length = i10 - i9;
        this.f24514k += i10;
        this.f24512i = 0;
        this.f24510g = 0;
        ArrayList<byte[]> arrayListM = M(i8 - length);
        byte[] bArr = new byte[i8];
        System.arraycopy(this.f24509f, i9, bArr, 0, length);
        for (byte[] bArr2 : arrayListM) {
            System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
            length += bArr2.length;
        }
        return bArr;
    }

    public final byte[] L(int i8) throws IOException {
        if (i8 == 0) {
            return AbstractC2960v1.f24525b;
        }
        if (i8 < 0) {
            throw C2966x1.e();
        }
        int i9 = this.f24514k;
        int i10 = this.f24512i;
        int i11 = i9 + i10 + i8;
        if (i11 - this.f24528c > 0) {
            throw new C2966x1("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i12 = this.f24515l;
        if (i11 > i12) {
            T((i12 - i9) - i10);
            throw C2966x1.g();
        }
        int i13 = this.f24510g - i10;
        int i14 = i8 - i13;
        InputStream inputStream = this.f24508e;
        if (i14 >= 4096) {
            try {
                if (i14 > inputStream.available()) {
                    return null;
                }
            } catch (C2966x1 e8) {
                e8.f24533G = true;
                throw e8;
            }
        }
        byte[] bArr = new byte[i8];
        System.arraycopy(this.f24509f, this.f24512i, bArr, 0, i13);
        this.f24514k += this.f24510g;
        this.f24512i = 0;
        this.f24510g = 0;
        while (i13 < i8) {
            try {
                int i15 = inputStream.read(bArr, i13, i8 - i13);
                if (i15 == -1) {
                    throw C2966x1.g();
                }
                this.f24514k += i15;
                i13 += i15;
            } catch (C2966x1 e9) {
                e9.f24533G = true;
                throw e9;
            }
        }
        return bArr;
    }

    public final ArrayList M(int i8) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i8 > 0) {
            int iMin = Math.min(i8, 4096);
            byte[] bArr = new byte[iMin];
            int i9 = 0;
            while (i9 < iMin) {
                int i10 = this.f24508e.read(bArr, i9, iMin - i9);
                if (i10 == -1) {
                    throw C2966x1.g();
                }
                this.f24514k += i10;
                i9 += i10;
            }
            i8 -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final int N() throws C2966x1 {
        int i8 = this.f24512i;
        if (this.f24510g - i8 < 4) {
            S(4);
            i8 = this.f24512i;
        }
        this.f24512i = i8 + 4;
        byte[] bArr = this.f24509f;
        return ((bArr[i8 + 3] & 255) << 24) | (bArr[i8] & 255) | ((bArr[i8 + 1] & 255) << 8) | ((bArr[i8 + 2] & 255) << 16);
    }

    public final long O() throws C2966x1 {
        int i8 = this.f24512i;
        if (this.f24510g - i8 < 8) {
            S(8);
            i8 = this.f24512i;
        }
        this.f24512i = i8 + 8;
        byte[] bArr = this.f24509f;
        return ((((long) bArr[i8 + 7]) & 255) << 56) | (((long) bArr[i8]) & 255) | ((((long) bArr[i8 + 1]) & 255) << 8) | ((((long) bArr[i8 + 2]) & 255) << 16) | ((((long) bArr[i8 + 3]) & 255) << 24) | ((((long) bArr[i8 + 4]) & 255) << 32) | ((((long) bArr[i8 + 5]) & 255) << 40) | ((((long) bArr[i8 + 6]) & 255) << 48);
    }

    public final long P() {
        long j8;
        long j9;
        long j10;
        long j11;
        int i8 = this.f24512i;
        int i9 = this.f24510g;
        if (i9 != i8) {
            int i10 = i8 + 1;
            byte[] bArr = this.f24509f;
            byte b8 = bArr[i8];
            if (b8 >= 0) {
                this.f24512i = i10;
                return b8;
            }
            if (i9 - i10 >= 9) {
                int i11 = i8 + 2;
                int i12 = (bArr[i10] << 7) ^ b8;
                if (i12 < 0) {
                    j8 = i12 ^ (-128);
                } else {
                    int i13 = i8 + 3;
                    int i14 = (bArr[i11] << MqttWireMessage.MESSAGE_TYPE_DISCONNECT) ^ i12;
                    if (i14 >= 0) {
                        j8 = i14 ^ 16256;
                        i11 = i13;
                    } else {
                        int i15 = i8 + 4;
                        int i16 = i14 ^ (bArr[i13] << 21);
                        if (i16 < 0) {
                            j11 = (-2080896) ^ i16;
                        } else {
                            long j12 = i16;
                            i11 = i8 + 5;
                            long j13 = j12 ^ (((long) bArr[i15]) << 28);
                            if (j13 >= 0) {
                                j10 = 266354560;
                            } else {
                                i15 = i8 + 6;
                                long j14 = j13 ^ (((long) bArr[i11]) << 35);
                                if (j14 < 0) {
                                    j9 = -34093383808L;
                                } else {
                                    i11 = i8 + 7;
                                    j13 = j14 ^ (((long) bArr[i15]) << 42);
                                    if (j13 >= 0) {
                                        j10 = 4363953127296L;
                                    } else {
                                        i15 = i8 + 8;
                                        j14 = j13 ^ (((long) bArr[i11]) << 49);
                                        if (j14 < 0) {
                                            j9 = -558586000294016L;
                                        } else {
                                            i11 = i8 + 9;
                                            long j15 = (j14 ^ (((long) bArr[i15]) << 56)) ^ 71499008037633920L;
                                            if (j15 < 0) {
                                                int i17 = i8 + 10;
                                                if (bArr[i11] >= 0) {
                                                    i11 = i17;
                                                }
                                            }
                                            j8 = j15;
                                        }
                                    }
                                }
                                j11 = j9 ^ j14;
                            }
                            j8 = j10 ^ j13;
                        }
                        i11 = i15;
                        j8 = j11;
                    }
                }
                this.f24512i = i11;
                return j8;
            }
        }
        return Q();
    }

    public final long Q() throws C2966x1 {
        long j8 = 0;
        for (int i8 = 0; i8 < 64; i8 += 7) {
            if (this.f24512i == this.f24510g) {
                S(1);
            }
            int i9 = this.f24512i;
            this.f24512i = i9 + 1;
            byte b8 = this.f24509f[i9];
            j8 |= ((long) (b8 & 127)) << i8;
            if ((b8 & 128) == 0) {
                return j8;
            }
        }
        throw C2966x1.d();
    }

    public final void R() {
        int i8 = this.f24510g + this.f24511h;
        this.f24510g = i8;
        int i9 = this.f24514k + i8;
        int i10 = this.f24515l;
        if (i9 <= i10) {
            this.f24511h = 0;
            return;
        }
        int i11 = i9 - i10;
        this.f24511h = i11;
        this.f24510g = i8 - i11;
    }

    public final void S(int i8) throws C2966x1 {
        if (U(i8)) {
            return;
        }
        if (i8 <= (this.f24528c - this.f24514k) - this.f24512i) {
            throw C2966x1.g();
        }
        throw new C2966x1("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public final void T(int i8) throws C2966x1 {
        int i9 = this.f24510g;
        int i10 = this.f24512i;
        if (i8 <= i9 - i10 && i8 >= 0) {
            this.f24512i = i10 + i8;
            return;
        }
        InputStream inputStream = this.f24508e;
        if (i8 < 0) {
            throw C2966x1.e();
        }
        int i11 = this.f24514k;
        int i12 = i11 + i10;
        int i13 = i12 + i8;
        int i14 = this.f24515l;
        if (i13 > i14) {
            T((i14 - i11) - i10);
            throw C2966x1.g();
        }
        this.f24514k = i12;
        int i15 = i9 - i10;
        this.f24510g = 0;
        this.f24512i = 0;
        while (i15 < i8) {
            long j8 = i8 - i15;
            try {
                try {
                    long jSkip = inputStream.skip(j8);
                    if (jSkip < 0 || jSkip > j8) {
                        throw new IllegalStateException(inputStream.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i15 += (int) jSkip;
                    }
                } catch (C2966x1 e8) {
                    e8.f24533G = true;
                    throw e8;
                }
            } catch (Throwable th) {
                this.f24514k += i15;
                R();
                throw th;
            }
        }
        this.f24514k += i15;
        R();
        if (i15 >= i8) {
            return;
        }
        int i16 = this.f24510g;
        int i17 = i16 - this.f24512i;
        this.f24512i = i16;
        S(1);
        while (true) {
            int i18 = i8 - i17;
            int i19 = this.f24510g;
            if (i18 <= i19) {
                this.f24512i = i18;
                return;
            } else {
                i17 += i19;
                this.f24512i = i19;
                S(1);
            }
        }
    }

    public final boolean U(int i8) throws IOException {
        int i9 = this.f24512i;
        int i10 = i9 + i8;
        int i11 = this.f24510g;
        if (i10 <= i11) {
            throw new IllegalStateException(A0.O.y("refillBuffer() called when ", i8, " bytes were already available in buffer"));
        }
        int i12 = this.f24528c;
        int i13 = this.f24514k;
        if (i8 > (i12 - i13) - i9 || i13 + i9 + i8 > this.f24515l) {
            return false;
        }
        byte[] bArr = this.f24509f;
        if (i9 > 0) {
            if (i11 > i9) {
                System.arraycopy(bArr, i9, bArr, 0, i11 - i9);
            }
            this.f24514k += i9;
            this.f24510g -= i9;
            this.f24512i = 0;
        }
        int i14 = this.f24510g;
        int iMin = Math.min(bArr.length - i14, (this.f24528c - this.f24514k) - i14);
        InputStream inputStream = this.f24508e;
        try {
            int i15 = inputStream.read(bArr, i14, iMin);
            if (i15 == 0 || i15 < -1 || i15 > bArr.length) {
                throw new IllegalStateException(inputStream.getClass() + "#read(byte[]) returned invalid result: " + i15 + "\nThe InputStream implementation is buggy.");
            }
            if (i15 <= 0) {
                return false;
            }
            this.f24510g += i15;
            R();
            if (this.f24510g >= i8) {
                return true;
            }
            return U(i8);
        } catch (C2966x1 e8) {
            e8.f24533G = true;
            throw e8;
        }
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final void a(int i8) throws C2966x1 {
        if (this.f24513j != i8) {
            throw new C2966x1("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int e() {
        int i8 = this.f24515l;
        if (i8 == Integer.MAX_VALUE) {
            return -1;
        }
        return i8 - (this.f24514k + this.f24512i);
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int f() {
        return this.f24514k + this.f24512i;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final boolean g() {
        return this.f24512i == this.f24510g && !U(1);
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final void k(int i8) {
        this.f24515l = i8;
        R();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int l(int i8) throws C2966x1 {
        if (i8 < 0) {
            throw C2966x1.e();
        }
        int i9 = this.f24514k + this.f24512i + i8;
        int i10 = this.f24515l;
        if (i9 > i10) {
            throw C2966x1.g();
        }
        this.f24515l = i9;
        R();
        return i10;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final boolean m() {
        return P() != 0;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final C2939q n() throws IOException {
        int iX = x();
        int i8 = this.f24510g;
        int i9 = this.f24512i;
        int i10 = i8 - i9;
        byte[] bArr = this.f24509f;
        if (iX <= i10 && iX > 0) {
            C2939q c2939qI = r.i(i9, bArr, iX);
            this.f24512i += iX;
            return c2939qI;
        }
        if (iX == 0) {
            return r.f24491H;
        }
        if (iX < 0) {
            throw C2966x1.e();
        }
        byte[] bArrL = L(iX);
        if (bArrL != null) {
            return r.i(0, bArrL, bArrL.length);
        }
        int i11 = this.f24512i;
        int i12 = this.f24510g;
        int length = i12 - i11;
        this.f24514k += i12;
        this.f24512i = 0;
        this.f24510g = 0;
        ArrayList<byte[]> arrayListM = M(iX - length);
        byte[] bArr2 = new byte[iX];
        System.arraycopy(bArr, i11, bArr2, 0, length);
        for (byte[] bArr3 : arrayListM) {
            System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
            length += bArr3.length;
        }
        C2939q c2939q = r.f24491H;
        return new C2939q(bArr2);
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final double o() {
        return Double.longBitsToDouble(O());
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int p() {
        return x();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int q() {
        return N();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final long r() {
        return O();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final float s() {
        return Float.intBitsToFloat(N());
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final void t(int i8, P1 p7, O0 o4) throws C2966x1 {
        b();
        this.f24526a++;
        ((AbstractC2881b1) p7).f(this, o4);
        a((i8 << 3) | 4);
        this.f24526a--;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int u() {
        return x();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final long v() {
        return P();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final void w(P1 p7, O0 o4) throws C2966x1 {
        int iX = x();
        b();
        int iL = l(iX);
        this.f24526a++;
        ((AbstractC2881b1) p7).f(this, o4);
        a(0);
        this.f24526a--;
        if (e() != 0) {
            throw C2966x1.g();
        }
        k(iL);
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int x() {
        int i8;
        int i9 = this.f24512i;
        int i10 = this.f24510g;
        if (i10 != i9) {
            int i11 = i9 + 1;
            byte[] bArr = this.f24509f;
            byte b8 = bArr[i9];
            if (b8 >= 0) {
                this.f24512i = i11;
                return b8;
            }
            if (i10 - i11 >= 9) {
                int i12 = i9 + 2;
                int i13 = (bArr[i11] << 7) ^ b8;
                if (i13 < 0) {
                    i8 = i13 ^ (-128);
                } else {
                    int i14 = i9 + 3;
                    int i15 = (bArr[i12] << MqttWireMessage.MESSAGE_TYPE_DISCONNECT) ^ i13;
                    if (i15 >= 0) {
                        i8 = i15 ^ 16256;
                    } else {
                        int i16 = i9 + 4;
                        int i17 = i15 ^ (bArr[i14] << 21);
                        if (i17 < 0) {
                            i8 = (-2080896) ^ i17;
                        } else {
                            i14 = i9 + 5;
                            byte b9 = bArr[i16];
                            int i18 = (i17 ^ (b9 << 28)) ^ 266354560;
                            if (b9 < 0) {
                                i16 = i9 + 6;
                                if (bArr[i14] < 0) {
                                    i14 = i9 + 7;
                                    if (bArr[i16] < 0) {
                                        i16 = i9 + 8;
                                        if (bArr[i14] < 0) {
                                            i14 = i9 + 9;
                                            if (bArr[i16] < 0) {
                                                int i19 = i9 + 10;
                                                if (bArr[i14] >= 0) {
                                                    i12 = i19;
                                                    i8 = i18;
                                                }
                                            }
                                        }
                                    }
                                }
                                i8 = i18;
                            }
                            i8 = i18;
                        }
                        i12 = i16;
                    }
                    i12 = i14;
                }
                this.f24512i = i12;
                return i8;
            }
        }
        return (int) Q();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int z() {
        return N();
    }
}
