package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1045aH extends AbstractC1200dH {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InputStream f17852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f17853d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17854e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17855f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17856g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17857h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17858i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f17859j = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    public /* synthetic */ C1045aH(InputStream inputStream) {
        Charset charset = AbstractC2288yH.f22010a;
        this.f17852c = inputStream;
        this.f17853d = new byte[4096];
        this.f17854e = 0;
        this.f17856g = 0;
        this.f17858i = 0;
    }

    public final void A(int i8) throws AH {
        InputStream inputStream = this.f17852c;
        int i9 = this.f17854e;
        int i10 = this.f17856g;
        int i11 = i9 - i10;
        if (i8 <= i11 && i8 >= 0) {
            this.f17856g = i10 + i8;
            return;
        }
        if (i8 < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i12 = this.f17858i;
        int i13 = i12 + i10;
        int i14 = this.f17859j;
        if (i13 + i8 > i14) {
            A((i14 - i12) - i10);
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f17858i = i13;
        this.f17854e = 0;
        this.f17856g = 0;
        while (i11 < i8) {
            long j8 = i8 - i11;
            try {
                try {
                    long jSkip = inputStream.skip(j8);
                    if (jSkip < 0 || jSkip > j8) {
                        throw new IllegalStateException(String.valueOf(inputStream.getClass()) + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i11 += (int) jSkip;
                    }
                } catch (AH e8) {
                    e8.f11997G = true;
                    throw e8;
                }
            } catch (Throwable th) {
                this.f17858i += i11;
                C();
                throw th;
            }
        }
        this.f17858i += i11;
        C();
        if (i11 >= i8) {
            return;
        }
        int i15 = this.f17854e;
        int i16 = i15 - this.f17856g;
        this.f17856g = i15;
        D(1);
        while (true) {
            int i17 = i8 - i16;
            int i18 = this.f17854e;
            if (i17 <= i18) {
                this.f17856g = i17;
                return;
            } else {
                i16 += i18;
                this.f17856g = i18;
                D(1);
            }
        }
    }

    public final ArrayList B(int i8) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i8 > 0) {
            int iMin = Math.min(i8, 4096);
            byte[] bArr = new byte[iMin];
            int i9 = 0;
            while (i9 < iMin) {
                int i10 = this.f17852c.read(bArr, i9, iMin - i9);
                if (i10 == -1) {
                    throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
                this.f17858i += i10;
                i9 += i10;
            }
            i8 -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final void C() {
        int i8 = this.f17854e + this.f17855f;
        this.f17854e = i8;
        int i9 = this.f17858i + i8;
        int i10 = this.f17859j;
        if (i9 <= i10) {
            this.f17855f = 0;
            return;
        }
        int i11 = i9 - i10;
        this.f17855f = i11;
        this.f17854e = i8 - i11;
    }

    public final void D(int i8) throws AH {
        if (E(i8)) {
            return;
        }
        if (i8 <= (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - this.f17858i) - this.f17856g) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new AH("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public final boolean E(int i8) throws IOException {
        InputStream inputStream = this.f17852c;
        int i9 = this.f17856g;
        int i10 = i9 + i8;
        int i11 = this.f17854e;
        if (i10 <= i11) {
            throw new IllegalStateException(A0.O.y("refillBuffer() called when ", i8, " bytes were already available in buffer"));
        }
        int i12 = this.f17858i;
        if (i8 > (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i12) - i9 || i12 + i9 + i8 > this.f17859j) {
            return false;
        }
        byte[] bArr = this.f17853d;
        if (i9 > 0) {
            if (i11 > i9) {
                System.arraycopy(bArr, i9, bArr, 0, i11 - i9);
            }
            i12 = this.f17858i + i9;
            this.f17858i = i12;
            i11 = this.f17854e - i9;
            this.f17854e = i11;
            this.f17856g = 0;
        }
        try {
            int i13 = inputStream.read(bArr, i11, Math.min(4096 - i11, (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i12) - i11));
            if (i13 == 0 || i13 < -1 || i13 > 4096) {
                throw new IllegalStateException(String.valueOf(inputStream.getClass()) + "#read(byte[]) returned invalid result: " + i13 + "\nThe InputStream implementation is buggy.");
            }
            if (i13 <= 0) {
                return false;
            }
            this.f17854e += i13;
            C();
            if (this.f17854e >= i8) {
                return true;
            }
            return E(i8);
        } catch (AH e8) {
            e8.f11997G = true;
            throw e8;
        }
    }

    public final byte[] F(int i8) throws IOException {
        byte[] bArrG = G(i8);
        if (bArrG != null) {
            return bArrG;
        }
        int i9 = this.f17856g;
        int i10 = this.f17854e;
        int i11 = i10 - i9;
        this.f17858i += i10;
        this.f17856g = 0;
        this.f17854e = 0;
        ArrayList<byte[]> arrayListB = B(i8 - i11);
        byte[] bArr = new byte[i8];
        System.arraycopy(this.f17853d, i9, bArr, 0, i11);
        for (byte[] bArr2 : arrayListB) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i11, length);
            i11 += length;
        }
        return bArr;
    }

    public final byte[] G(int i8) throws IOException {
        if (i8 == 0) {
            return AbstractC2288yH.f22011b;
        }
        int i9 = this.f17858i;
        int i10 = this.f17856g;
        int i11 = i9 + i10 + i8;
        if ((-2147483647) + i11 > 0) {
            throw new AH("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i12 = this.f17859j;
        if (i11 > i12) {
            A((i12 - i9) - i10);
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i13 = this.f17854e - i10;
        int i14 = i8 - i13;
        InputStream inputStream = this.f17852c;
        if (i14 >= 4096) {
            try {
                if (i14 > inputStream.available()) {
                    return null;
                }
            } catch (AH e8) {
                e8.f11997G = true;
                throw e8;
            }
        }
        byte[] bArr = new byte[i8];
        System.arraycopy(this.f17853d, this.f17856g, bArr, 0, i13);
        this.f17858i += this.f17854e;
        this.f17856g = 0;
        this.f17854e = 0;
        while (i13 < i8) {
            try {
                int i15 = inputStream.read(bArr, i13, i8 - i13);
                if (i15 == -1) {
                    throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
                this.f17858i += i15;
                i13 += i15;
            } catch (AH e9) {
                e9.f11997G = true;
                throw e9;
            }
        }
        return bArr;
    }

    public final int H() throws AH {
        int i8 = this.f17856g;
        if (this.f17854e - i8 < 4) {
            D(4);
            i8 = this.f17856g;
        }
        this.f17856g = i8 + 4;
        byte[] bArr = this.f17853d;
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        int i11 = bArr[i8 + 2] & 255;
        return ((bArr[i8 + 3] & 255) << 24) | (i10 << 8) | i9 | (i11 << 16);
    }

    public final int I() {
        int i8;
        int i9 = this.f17856g;
        int i10 = this.f17854e;
        if (i10 != i9) {
            int i11 = i9 + 1;
            byte[] bArr = this.f17853d;
            byte b8 = bArr[i9];
            if (b8 >= 0) {
                this.f17856g = i11;
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
                this.f17856g = i12;
                return i8;
            }
        }
        return (int) L();
    }

    public final long J() throws AH {
        int i8 = this.f17856g;
        if (this.f17854e - i8 < 8) {
            D(8);
            i8 = this.f17856g;
        }
        this.f17856g = i8 + 8;
        byte[] bArr = this.f17853d;
        long j8 = bArr[i8];
        long j9 = (((long) bArr[i8 + 1]) & 255) << 8;
        long j10 = bArr[i8 + 2];
        long j11 = bArr[i8 + 3];
        return ((((long) bArr[i8 + 7]) & 255) << 56) | (j8 & 255) | j9 | ((j10 & 255) << 16) | ((j11 & 255) << 24) | ((bArr[i8 + 4] & 255) << 32) | ((bArr[i8 + 5] & 255) << 40) | ((bArr[i8 + 6] & 255) << 48);
    }

    public final long K() {
        long j8;
        long j9;
        long j10;
        int i8 = this.f17856g;
        int i9 = this.f17854e;
        if (i9 != i8) {
            int i10 = i8 + 1;
            byte[] bArr = this.f17853d;
            byte b8 = bArr[i8];
            if (b8 >= 0) {
                this.f17856g = i10;
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
                    } else {
                        int i15 = i8 + 4;
                        int i16 = i14 ^ (bArr[i13] << 21);
                        if (i16 < 0) {
                            long j11 = (-2080896) ^ i16;
                            i11 = i15;
                            j8 = j11;
                        } else {
                            i13 = i8 + 5;
                            long j12 = ((long) i16) ^ (((long) bArr[i15]) << 28);
                            if (j12 >= 0) {
                                j10 = 266354560;
                            } else {
                                int i17 = i8 + 6;
                                long j13 = j12 ^ (((long) bArr[i13]) << 35);
                                if (j13 < 0) {
                                    j9 = -34093383808L;
                                } else {
                                    i13 = i8 + 7;
                                    j12 = j13 ^ (((long) bArr[i17]) << 42);
                                    if (j12 >= 0) {
                                        j10 = 4363953127296L;
                                    } else {
                                        i17 = i8 + 8;
                                        j13 = j12 ^ (((long) bArr[i13]) << 49);
                                        if (j13 < 0) {
                                            j9 = -558586000294016L;
                                        } else {
                                            i13 = i8 + 9;
                                            long j14 = (j13 ^ (((long) bArr[i17]) << 56)) ^ 71499008037633920L;
                                            if (j14 < 0) {
                                                int i18 = i8 + 10;
                                                if (bArr[i13] >= 0) {
                                                    j8 = j14;
                                                    i11 = i18;
                                                }
                                            } else {
                                                j8 = j14;
                                            }
                                        }
                                    }
                                }
                                j8 = j13 ^ j9;
                                i11 = i17;
                            }
                            j8 = j12 ^ j10;
                        }
                    }
                    i11 = i13;
                }
                this.f17856g = i11;
                return j8;
            }
        }
        return L();
    }

    public final long L() throws AH {
        long j8 = 0;
        for (int i8 = 0; i8 < 64; i8 += 7) {
            if (this.f17856g == this.f17854e) {
                D(1);
            }
            int i9 = this.f17856g;
            this.f17856g = i9 + 1;
            byte b8 = this.f17853d[i9];
            j8 |= ((long) (b8 & 127)) << i8;
            if ((b8 & 128) == 0) {
                return j8;
            }
        }
        throw new AH("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final boolean a() {
        return this.f17856g == this.f17854e && !E(1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final boolean b() {
        return K() != 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final double f() {
        return Double.longBitsToDouble(J());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final float g() {
        return Float.intBitsToFloat(H());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int h() {
        return this.f17858i + this.f17856g;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int i(int i8) throws AH {
        if (i8 < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i9 = this.f17858i + this.f17856g + i8;
        if (i9 < 0) {
            throw new AH("Failed to parse the message.");
        }
        int i10 = this.f17859j;
        if (i9 > i10) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f17859j = i9;
        C();
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int j() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int k() {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int l() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int m() {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int n() {
        return AbstractC1200dH.c(I());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int o() throws AH {
        if (a()) {
            this.f17857h = 0;
            return 0;
        }
        int I7 = I();
        this.f17857h = I7;
        if ((I7 >>> 3) != 0) {
            return I7;
        }
        throw new AH("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int p() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long q() {
        return J();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long r() {
        return K();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long s() {
        return J();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long t() {
        return AbstractC1200dH.d(K());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long u() {
        return K();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final VG v() throws IOException {
        int I7 = I();
        int i8 = this.f17854e;
        int i9 = this.f17856g;
        int i10 = i8 - i9;
        byte[] bArr = this.f17853d;
        if (I7 <= i10 && I7 > 0) {
            VG vgY = XG.y(i9, bArr, I7);
            this.f17856g += I7;
            return vgY;
        }
        if (I7 == 0) {
            return XG.f17401H;
        }
        if (I7 < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        byte[] bArrG = G(I7);
        if (bArrG != null) {
            return XG.y(0, bArrG, bArrG.length);
        }
        int i11 = this.f17856g;
        int i12 = this.f17854e;
        int i13 = i12 - i11;
        this.f17858i += i12;
        this.f17856g = 0;
        this.f17854e = 0;
        ArrayList<byte[]> arrayListB = B(I7 - i13);
        byte[] bArr2 = new byte[I7];
        System.arraycopy(bArr, i11, bArr2, 0, i13);
        for (byte[] bArr3 : arrayListB) {
            int length = bArr3.length;
            System.arraycopy(bArr3, 0, bArr2, i13, length);
            i13 += length;
        }
        return new VG(bArr2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final String w() throws AH {
        int I7 = I();
        byte[] bArr = this.f17853d;
        if (I7 > 0) {
            int i8 = this.f17854e;
            int i9 = this.f17856g;
            if (I7 <= i8 - i9) {
                String str = new String(bArr, i9, I7, AbstractC2288yH.f22010a);
                this.f17856g += I7;
                return str;
            }
        }
        if (I7 == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (I7 < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (I7 > this.f17854e) {
            return new String(F(I7), AbstractC2288yH.f22010a);
        }
        D(I7);
        String str2 = new String(bArr, this.f17856g, I7, AbstractC2288yH.f22010a);
        this.f17856g += I7;
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final String x() throws IOException {
        int I7 = I();
        int i8 = this.f17856g;
        int i9 = this.f17854e;
        int i10 = i9 - i8;
        byte[] bArrF = this.f17853d;
        if (I7 <= i10 && I7 > 0) {
            this.f17856g = i8 + I7;
        } else {
            if (I7 == 0) {
                return HttpUrl.FRAGMENT_ENCODE_SET;
            }
            if (I7 < 0) {
                throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            i8 = 0;
            if (I7 <= i9) {
                D(I7);
                this.f17856g = I7;
            } else {
                bArrF = F(I7);
            }
        }
        AbstractC1822pI.f20440a.getClass();
        return C1301fF.j(i8, bArrF, I7);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final void y() throws AH {
        if (this.f17857h != 0) {
            throw new AH("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final void z(int i8) {
        this.f17859j = i8;
        C();
    }
}
