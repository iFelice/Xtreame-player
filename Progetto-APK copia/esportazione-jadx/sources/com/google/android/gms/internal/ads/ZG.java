package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: loaded from: classes.dex */
public final class ZG extends AbstractC1200dH {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Iterable f17742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Iterator f17743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ByteBuffer f17744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17746g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17748i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f17750k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f17751l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f17752m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17747h = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f17749j = 0;

    public /* synthetic */ ZG(ArrayList arrayList, int i8) {
        this.f17745f = i8;
        this.f17743d = arrayList.iterator();
        if (i8 != 0) {
            D();
            return;
        }
        this.f17744e = AbstractC2288yH.f22012c;
        this.f17750k = 0L;
        this.f17751l = 0L;
        this.f17752m = 0L;
    }

    public final long A() throws AH {
        long j8 = 0;
        for (int i8 = 0; i8 < 64; i8 += 7) {
            byte bE = E();
            j8 |= ((long) (bE & 127)) << i8;
            if ((bE & 128) == 0) {
                return j8;
            }
        }
        throw new AH("CodedInputStream encountered a malformed varint.");
    }

    public final int B() {
        return (int) ((((long) (this.f17745f - this.f17749j)) - this.f17750k) + this.f17751l);
    }

    public final void C(byte[] bArr, int i8) throws AH {
        if (i8 > B()) {
            if (i8 > 0) {
                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            return;
        }
        int i9 = i8;
        while (i9 > 0) {
            if (this.f17752m - this.f17750k == 0) {
                if (!this.f17743d.hasNext()) {
                    throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
                D();
            }
            int iMin = Math.min(i9, (int) (this.f17752m - this.f17750k));
            long j8 = iMin;
            AbstractC1718nI.f20155c.R0(this.f17750k, bArr, i8 - i9, j8);
            i9 -= iMin;
            this.f17750k += j8;
        }
    }

    public final void D() {
        ByteBuffer byteBuffer = (ByteBuffer) this.f17743d.next();
        this.f17744e = byteBuffer;
        this.f17749j += (int) (this.f17750k - this.f17751l);
        long jPosition = byteBuffer.position();
        this.f17750k = jPosition;
        this.f17751l = jPosition;
        this.f17752m = this.f17744e.limit();
        long jH = AbstractC1718nI.h(this.f17744e);
        this.f17750k += jH;
        this.f17751l += jH;
        this.f17752m += jH;
    }

    public final byte E() throws AH {
        if (this.f17752m - this.f17750k == 0) {
            if (!this.f17743d.hasNext()) {
                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            D();
        }
        long j8 = this.f17750k;
        this.f17750k = 1 + j8;
        return AbstractC1718nI.f20155c.J(j8);
    }

    public final int F() {
        long j8 = this.f17752m;
        long j9 = this.f17750k;
        if (j8 - j9 < 4) {
            int iE = E() & 255;
            int iE2 = (E() & 255) << 8;
            return iE | iE2 | ((E() & 255) << 16) | ((E() & 255) << 24);
        }
        this.f17750k = 4 + j9;
        AbstractC1666mI abstractC1666mI = AbstractC1718nI.f20155c;
        int iJ = abstractC1666mI.J(j9) & 255;
        int iJ2 = (abstractC1666mI.J(1 + j9) & 255) << 8;
        return ((abstractC1666mI.J(j9 + 3) & 255) << 24) | iJ | iJ2 | ((abstractC1666mI.J(2 + j9) & 255) << 16);
    }

    public final int G() {
        int i8;
        long j8 = this.f17750k;
        if (this.f17752m != j8) {
            long j9 = j8 + 1;
            AbstractC1666mI abstractC1666mI = AbstractC1718nI.f20155c;
            byte bJ = abstractC1666mI.J(j8);
            if (bJ >= 0) {
                this.f17750k++;
                return bJ;
            }
            if (this.f17752m - this.f17750k >= 10) {
                long j10 = 2 + j8;
                int iJ = (abstractC1666mI.J(j9) << 7) ^ bJ;
                if (iJ < 0) {
                    i8 = iJ ^ (-128);
                } else {
                    long j11 = 3 + j8;
                    int iJ2 = (abstractC1666mI.J(j10) << MqttWireMessage.MESSAGE_TYPE_DISCONNECT) ^ iJ;
                    if (iJ2 >= 0) {
                        i8 = iJ2 ^ 16256;
                    } else {
                        long j12 = 4 + j8;
                        int iJ3 = iJ2 ^ (abstractC1666mI.J(j11) << 21);
                        if (iJ3 < 0) {
                            i8 = (-2080896) ^ iJ3;
                        } else {
                            j11 = 5 + j8;
                            byte bJ2 = abstractC1666mI.J(j12);
                            int i9 = (iJ3 ^ (bJ2 << 28)) ^ 266354560;
                            if (bJ2 < 0) {
                                j12 = 6 + j8;
                                if (abstractC1666mI.J(j11) < 0) {
                                    j11 = 7 + j8;
                                    if (abstractC1666mI.J(j12) < 0) {
                                        j12 = 8 + j8;
                                        if (abstractC1666mI.J(j11) < 0) {
                                            j11 = 9 + j8;
                                            if (abstractC1666mI.J(j12) < 0) {
                                                long j13 = j8 + 10;
                                                if (abstractC1666mI.J(j11) >= 0) {
                                                    i8 = i9;
                                                    j10 = j13;
                                                }
                                            }
                                        }
                                    }
                                }
                                i8 = i9;
                            }
                            i8 = i9;
                        }
                        j10 = j12;
                    }
                    j10 = j11;
                }
                this.f17750k = j10;
                return i8;
            }
        }
        return (int) A();
    }

    public final long H() {
        long j8 = this.f17752m;
        long j9 = this.f17750k;
        if (j8 - j9 < 8) {
            long jE = ((long) E()) & 255;
            long jE2 = (((long) E()) & 255) << 8;
            long jE3 = (((long) E()) & 255) << 16;
            long jE4 = (((long) E()) & 255) << 24;
            long jE5 = (((long) E()) & 255) << 32;
            long jE6 = (((long) E()) & 255) << 40;
            return jE6 | jE | jE2 | jE3 | jE4 | jE5 | ((((long) E()) & 255) << 48) | ((((long) E()) & 255) << 56);
        }
        this.f17750k = 8 + j9;
        AbstractC1666mI abstractC1666mI = AbstractC1718nI.f20155c;
        long J7 = ((long) abstractC1666mI.J(j9)) & 255;
        long J8 = (((long) abstractC1666mI.J(j9 + 1)) & 255) << 8;
        long J9 = (((long) abstractC1666mI.J(j9 + 2)) & 255) << 16;
        long J10 = (((long) abstractC1666mI.J(3 + j9)) & 255) << 24;
        long J11 = (((long) abstractC1666mI.J(j9 + 4)) & 255) << 32;
        long J12 = (((long) abstractC1666mI.J(j9 + 5)) & 255) << 40;
        return ((((long) abstractC1666mI.J(j9 + 7)) & 255) << 56) | J7 | J8 | J9 | J10 | J11 | J12 | ((((long) abstractC1666mI.J(j9 + 6)) & 255) << 48);
    }

    public final long I() {
        long j8;
        long j9;
        long j10;
        long j11 = this.f17750k;
        if (this.f17752m != j11) {
            long j12 = j11 + 1;
            AbstractC1666mI abstractC1666mI = AbstractC1718nI.f20155c;
            byte bJ = abstractC1666mI.J(j11);
            if (bJ >= 0) {
                this.f17750k++;
                return bJ;
            }
            if (this.f17752m - this.f17750k >= 10) {
                long j13 = 2 + j11;
                int iJ = (abstractC1666mI.J(j12) << 7) ^ bJ;
                if (iJ < 0) {
                    j8 = iJ ^ (-128);
                } else {
                    long j14 = 3 + j11;
                    int iJ2 = (abstractC1666mI.J(j13) << MqttWireMessage.MESSAGE_TYPE_DISCONNECT) ^ iJ;
                    if (iJ2 >= 0) {
                        j8 = iJ2 ^ 16256;
                    } else {
                        long j15 = 4 + j11;
                        int iJ3 = iJ2 ^ (abstractC1666mI.J(j14) << 21);
                        if (iJ3 < 0) {
                            j8 = (-2080896) ^ iJ3;
                            j13 = j15;
                        } else {
                            j14 = 5 + j11;
                            long J7 = (((long) abstractC1666mI.J(j15)) << 28) ^ ((long) iJ3);
                            if (J7 >= 0) {
                                j10 = 266354560;
                            } else {
                                long j16 = 6 + j11;
                                long J8 = J7 ^ (((long) abstractC1666mI.J(j14)) << 35);
                                if (J8 < 0) {
                                    j9 = -34093383808L;
                                } else {
                                    j14 = 7 + j11;
                                    J7 = J8 ^ (((long) abstractC1666mI.J(j16)) << 42);
                                    if (J7 >= 0) {
                                        j10 = 4363953127296L;
                                    } else {
                                        j16 = 8 + j11;
                                        J8 = J7 ^ (((long) abstractC1666mI.J(j14)) << 49);
                                        if (J8 < 0) {
                                            j9 = -558586000294016L;
                                        } else {
                                            j14 = 9 + j11;
                                            long J9 = (J8 ^ (((long) abstractC1666mI.J(j16)) << 56)) ^ 71499008037633920L;
                                            if (J9 < 0) {
                                                long j17 = j11 + 10;
                                                if (abstractC1666mI.J(j14) >= 0) {
                                                    j8 = J9;
                                                    j13 = j17;
                                                }
                                            } else {
                                                j8 = J9;
                                            }
                                        }
                                    }
                                }
                                j8 = j9 ^ J8;
                                j13 = j16;
                            }
                            j8 = j10 ^ J7;
                        }
                    }
                    j13 = j14;
                }
                this.f17750k = j13;
                return j8;
            }
        }
        return A();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final boolean a() {
        return (((long) this.f17749j) + this.f17750k) - this.f17751l == ((long) this.f17745f);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final boolean b() {
        return I() != 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final double f() {
        return Double.longBitsToDouble(H());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final float g() {
        return Float.intBitsToFloat(F());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int h() {
        return (int) ((((long) this.f17749j) + this.f17750k) - this.f17751l);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int i(int i8) throws AH {
        if (i8 < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int iH = h() + i8;
        int i9 = this.f17747h;
        if (iH > i9) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f17747h = iH;
        int i10 = this.f17745f + this.f17746g;
        this.f17745f = i10;
        if (i10 > iH) {
            int i11 = i10 - iH;
            this.f17746g = i11;
            this.f17745f = i10 - i11;
        } else {
            this.f17746g = 0;
        }
        return i9;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int j() {
        return G();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int k() {
        return F();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int l() {
        return G();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int m() {
        return F();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int n() {
        return AbstractC1200dH.c(G());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int o() throws AH {
        if (a()) {
            this.f17748i = 0;
            return 0;
        }
        int iG = G();
        this.f17748i = iG;
        if ((iG >>> 3) != 0) {
            return iG;
        }
        throw new AH("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final int p() {
        return G();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long q() {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long r() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long s() {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long t() {
        return AbstractC1200dH.d(I());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final long u() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final VG v() throws AH {
        int iG = G();
        if (iG > 0) {
            long j8 = this.f17752m;
            long j9 = this.f17750k;
            long j10 = iG;
            if (j10 <= j8 - j9) {
                byte[] bArr = new byte[iG];
                AbstractC1718nI.f20155c.R0(j9, bArr, 0L, j10);
                this.f17750k += j10;
                return new VG(bArr);
            }
        }
        if (iG > 0 && iG <= B()) {
            byte[] bArr2 = new byte[iG];
            C(bArr2, iG);
            return new VG(bArr2);
        }
        if (iG == 0) {
            return XG.f17401H;
        }
        if (iG < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final String w() throws AH {
        int iG = G();
        if (iG > 0) {
            long j8 = this.f17752m;
            long j9 = this.f17750k;
            long j10 = iG;
            if (j10 <= j8 - j9) {
                byte[] bArr = new byte[iG];
                AbstractC1718nI.f20155c.R0(j9, bArr, 0L, j10);
                String str = new String(bArr, AbstractC2288yH.f22010a);
                this.f17750k += j10;
                return str;
            }
        }
        if (iG > 0 && iG <= B()) {
            byte[] bArr2 = new byte[iG];
            C(bArr2, iG);
            return new String(bArr2, AbstractC2288yH.f22010a);
        }
        if (iG == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iG < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final String x() throws AH {
        String strK;
        int iG = G();
        if (iG > 0) {
            long j8 = this.f17752m;
            long j9 = this.f17750k;
            long j10 = iG;
            if (j10 <= j8 - j9) {
                long j11 = j9 - this.f17751l;
                ByteBuffer byteBuffer = this.f17744e;
                int i8 = (int) j11;
                C1301fF c1301fF = AbstractC1822pI.f20440a;
                if (byteBuffer.hasArray()) {
                    int iArrayOffset = byteBuffer.arrayOffset();
                    byte[] bArrArray = byteBuffer.array();
                    AbstractC1822pI.f20440a.getClass();
                    strK = C1301fF.j(iArrayOffset + i8, bArrArray, iG);
                } else {
                    strK = byteBuffer.isDirect() ? C1301fF.k(byteBuffer, i8, iG) : C1301fF.k(byteBuffer, i8, iG);
                }
                this.f17750k += j10;
                return strK;
            }
        }
        if (iG >= 0 && iG <= B()) {
            byte[] bArr = new byte[iG];
            C(bArr, iG);
            AbstractC1822pI.f20440a.getClass();
            return C1301fF.j(0, bArr, iG);
        }
        if (iG == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iG <= 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final void y() throws AH {
        if (this.f17748i != 0) {
            throw new AH("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1200dH
    public final void z(int i8) {
        this.f17747h = i8;
        int i9 = this.f17745f + this.f17746g;
        this.f17745f = i9;
        if (i9 <= i8) {
            this.f17746g = 0;
            return;
        }
        int i10 = i9 - i8;
        this.f17746g = i10;
        this.f17745f = i9 - i10;
    }
}
