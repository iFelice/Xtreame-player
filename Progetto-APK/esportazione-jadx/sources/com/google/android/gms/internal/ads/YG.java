package com.google.android.gms.internal.ads;

import java.util.Arrays;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: loaded from: classes.dex */
public final class YG extends AbstractC1200dH {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f17589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17590d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17592f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f17593g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17594h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17595i = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    public /* synthetic */ YG(byte[] bArr, int i8, int i9) {
        this.f17589c = bArr;
        this.f17590d = i9 + i8;
        this.f17592f = i8;
        this.f17593g = i8;
    }

    public final void A() {
        int i8 = this.f17590d + this.f17591e;
        this.f17590d = i8;
        int i9 = i8 - this.f17593g;
        int i10 = this.f17595i;
        if (i9 <= i10) {
            this.f17591e = 0;
            return;
        }
        int i11 = i9 - i10;
        this.f17591e = i11;
        this.f17590d = i8 - i11;
    }

    public final int B() throws AH {
        int i8 = this.f17592f;
        if (this.f17590d - i8 < 4) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f17592f = i8 + 4;
        byte[] bArr = this.f17589c;
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        int i11 = bArr[i8 + 2] & 255;
        return ((bArr[i8 + 3] & 255) << 24) | (i10 << 8) | i9 | (i11 << 16);
    }

    public final int C() {
        int i8;
        int i9 = this.f17592f;
        int i10 = this.f17590d;
        if (i10 != i9) {
            int i11 = i9 + 1;
            byte[] bArr = this.f17589c;
            byte b8 = bArr[i9];
            if (b8 >= 0) {
                this.f17592f = i11;
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
                this.f17592f = i12;
                return i8;
            }
        }
        return (int) F();
    }

    public final long D() throws AH {
        int i8 = this.f17592f;
        if (this.f17590d - i8 < 8) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f17592f = i8 + 8;
        byte[] bArr = this.f17589c;
        long j8 = bArr[i8];
        long j9 = (((long) bArr[i8 + 1]) & 255) << 8;
        long j10 = bArr[i8 + 2];
        long j11 = bArr[i8 + 3];
        return ((((long) bArr[i8 + 7]) & 255) << 56) | (j8 & 255) | j9 | ((j10 & 255) << 16) | ((j11 & 255) << 24) | ((bArr[i8 + 4] & 255) << 32) | ((bArr[i8 + 5] & 255) << 40) | ((bArr[i8 + 6] & 255) << 48);
    }

    public final long E() {
        long j8;
        long j9;
        long j10;
        int i8 = this.f17592f;
        int i9 = this.f17590d;
        if (i9 != i8) {
            int i10 = i8 + 1;
            byte[] bArr = this.f17589c;
            byte b8 = bArr[i8];
            if (b8 >= 0) {
                this.f17592f = i10;
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
                this.f17592f = i11;
                return j8;
            }
        }
        return F();
    }

    public final long F() throws AH {
        long j8 = 0;
        for (int i8 = 0; i8 < 64; i8 += 7) {
            int i9 = this.f17592f;
            if (i9 == this.f17590d) {
                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            this.f17592f = i9 + 1;
            byte b8 = this.f17589c[i9];
            j8 |= ((long) (b8 & 127)) << i8;
            if ((b8 & 128) == 0) {
                return j8;
            }
        }
        throw new AH("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final boolean a() {
        return this.f17592f == this.f17590d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final boolean b() {
        return E() != 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final double f() {
        return Double.longBitsToDouble(D());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final float g() {
        return Float.intBitsToFloat(B());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int h() {
        return this.f17592f - this.f17593g;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int i(int i8) throws AH {
        if (i8 < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i9 = (this.f17592f - this.f17593g) + i8;
        if (i9 < 0) {
            throw new AH("Failed to parse the message.");
        }
        int i10 = this.f17595i;
        if (i9 > i10) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f17595i = i9;
        A();
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int j() {
        return C();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int k() {
        return B();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int l() {
        return C();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int m() {
        return B();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int n() {
        return AbstractC1200dH.c(C());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int o() throws AH {
        if (a()) {
            this.f17594h = 0;
            return 0;
        }
        int iC = C();
        this.f17594h = iC;
        if ((iC >>> 3) != 0) {
            return iC;
        }
        throw new AH("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int p() {
        return C();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long q() {
        return D();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long r() {
        return E();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long s() {
        return D();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long t() {
        return AbstractC1200dH.d(E());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long u() {
        return E();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final VG v() throws AH {
        int iC = C();
        byte[] bArr = this.f17589c;
        if (iC > 0) {
            int i8 = this.f17590d;
            int i9 = this.f17592f;
            if (iC <= i8 - i9) {
                VG vgY = XG.y(i9, bArr, iC);
                this.f17592f += iC;
                return vgY;
            }
        }
        if (iC == 0) {
            return XG.f17401H;
        }
        if (iC > 0) {
            int i10 = this.f17590d;
            int i11 = this.f17592f;
            if (iC <= i10 - i11) {
                int i12 = iC + i11;
                this.f17592f = i12;
                return new VG(Arrays.copyOfRange(bArr, i11, i12));
            }
        }
        if (iC <= 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final String w() throws AH {
        int iC = C();
        if (iC > 0) {
            int i8 = this.f17590d;
            int i9 = this.f17592f;
            if (iC <= i8 - i9) {
                String str = new String(this.f17589c, i9, iC, AbstractC2288yH.f22010a);
                this.f17592f += iC;
                return str;
            }
        }
        if (iC == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iC < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final String x() throws AH {
        int iC = C();
        if (iC > 0) {
            int i8 = this.f17590d;
            int i9 = this.f17592f;
            if (iC <= i8 - i9) {
                AbstractC1822pI.f20440a.getClass();
                String strJ = C1301fF.j(i9, this.f17589c, iC);
                this.f17592f += iC;
                return strJ;
            }
        }
        if (iC == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iC <= 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final void y() throws AH {
        if (this.f17594h != 0) {
            throw new AH("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final void z(int i8) {
        this.f17595i = i8;
        A();
    }
}
