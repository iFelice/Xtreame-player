package com.google.protobuf;

import java.nio.ByteBuffer;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: renamed from: com.google.protobuf.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2958v extends AbstractC2961w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ByteBuffer f24516e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f24517f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f24518g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f24519h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f24520i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f24521j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f24522k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f24523l = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    public C2958v(ByteBuffer byteBuffer, boolean z7) {
        this.f24516e = byteBuffer;
        long j8 = H2.f24255c.j(byteBuffer, H2.f24259g);
        this.f24517f = j8;
        this.f24518g = ((long) byteBuffer.limit()) + j8;
        long jPosition = j8 + ((long) byteBuffer.position());
        this.f24519h = jPosition;
        this.f24520i = jPosition;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final long A() {
        return L();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int B() {
        return AbstractC2961w.c(x());
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final long C() {
        return AbstractC2961w.d(M());
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final String D() throws C2966x1 {
        int iX = x();
        if (iX > 0) {
            long j8 = this.f24518g;
            long j9 = this.f24519h;
            if (iX <= ((int) (j8 - j9))) {
                byte[] bArr = new byte[iX];
                long j10 = iX;
                H2.f24255c.c(j9, bArr, j10);
                String str = new String(bArr, AbstractC2960v1.f24524a);
                this.f24519h += j10;
                return str;
            }
        }
        if (iX == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iX < 0) {
            throw C2966x1.e();
        }
        throw C2966x1.g();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final String E() throws C2966x1 {
        String strZ;
        int iX = x();
        if (iX > 0) {
            long j8 = this.f24518g;
            long j9 = this.f24519h;
            if (iX <= ((int) (j8 - j9))) {
                int i8 = (int) (j9 - this.f24517f);
                I2 i9 = K2.f24269a;
                i9.getClass();
                ByteBuffer byteBuffer = this.f24516e;
                if (byteBuffer.hasArray()) {
                    strZ = i9.Y(byteBuffer.arrayOffset() + i8, byteBuffer.array(), iX);
                } else {
                    strZ = byteBuffer.isDirect() ? i9.Z(byteBuffer, i8, iX) : AbstractC2907i.L(byteBuffer, i8, iX);
                }
                this.f24519h += (long) iX;
                return strZ;
            }
        }
        if (iX == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iX <= 0) {
            throw C2966x1.e();
        }
        throw C2966x1.g();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int F() throws C2966x1 {
        if (g()) {
            this.f24522k = 0;
            return 0;
        }
        int iX = x();
        this.f24522k = iX;
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
        return M();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final boolean I(int i8) throws C2966x1 {
        int i9 = i8 & 7;
        int i10 = 0;
        if (i9 != 0) {
            if (i9 == 1) {
                P(8);
                return true;
            }
            if (i9 == 2) {
                P(x());
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
            P(4);
            return true;
        }
        if (((int) (this.f24518g - this.f24519h)) >= 10) {
            while (i10 < 10) {
                long j8 = this.f24519h;
                this.f24519h = j8 + 1;
                if (H2.f24255c.e(j8) < 0) {
                    i10++;
                }
            }
            throw C2966x1.d();
        }
        while (i10 < 10) {
            long j9 = this.f24519h;
            if (j9 == this.f24518g) {
                throw C2966x1.g();
            }
            this.f24519h = j9 + 1;
            if (H2.f24255c.e(j9) < 0) {
                i10++;
            }
        }
        throw C2966x1.d();
        return true;
    }

    public final int K() throws C2966x1 {
        long j8 = this.f24519h;
        if (this.f24518g - j8 < 4) {
            throw C2966x1.g();
        }
        this.f24519h = 4 + j8;
        G2 g8 = H2.f24255c;
        return ((g8.e(j8 + 3) & 255) << 24) | (g8.e(j8) & 255) | ((g8.e(1 + j8) & 255) << 8) | ((g8.e(2 + j8) & 255) << 16);
    }

    public final long L() throws C2966x1 {
        long j8 = this.f24519h;
        if (this.f24518g - j8 < 8) {
            throw C2966x1.g();
        }
        this.f24519h = 8 + j8;
        G2 g8 = H2.f24255c;
        return ((((long) g8.e(j8 + 7)) & 255) << 56) | (((long) g8.e(j8)) & 255) | ((((long) g8.e(1 + j8)) & 255) << 8) | ((((long) g8.e(2 + j8)) & 255) << 16) | ((((long) g8.e(3 + j8)) & 255) << 24) | ((((long) g8.e(4 + j8)) & 255) << 32) | ((((long) g8.e(5 + j8)) & 255) << 40) | ((((long) g8.e(6 + j8)) & 255) << 48);
    }

    public final long M() {
        long j8;
        long j9;
        long j10;
        int i8;
        long j11 = this.f24519h;
        if (this.f24518g != j11) {
            long j12 = 1 + j11;
            G2 g8 = H2.f24255c;
            byte bE = g8.e(j11);
            if (bE >= 0) {
                this.f24519h = j12;
                return bE;
            }
            if (this.f24518g - j12 >= 9) {
                long j13 = 2 + j11;
                int iE = (g8.e(j12) << 7) ^ bE;
                if (iE >= 0) {
                    long j14 = 3 + j11;
                    int iE2 = iE ^ (g8.e(j13) << MqttWireMessage.MESSAGE_TYPE_DISCONNECT);
                    if (iE2 < 0) {
                        j13 = j11 + 4;
                        int iE3 = iE2 ^ (g8.e(j14) << 21);
                        if (iE3 < 0) {
                            i8 = (-2080896) ^ iE3;
                        } else {
                            j14 = 5 + j11;
                            long jE = ((long) iE3) ^ (((long) g8.e(j13)) << 28);
                            if (jE >= 0) {
                                j10 = 266354560;
                            } else {
                                long j15 = 6 + j11;
                                long jE2 = jE ^ (((long) g8.e(j14)) << 35);
                                if (jE2 < 0) {
                                    j9 = -34093383808L;
                                } else {
                                    j14 = 7 + j11;
                                    jE = jE2 ^ (((long) g8.e(j15)) << 42);
                                    if (jE >= 0) {
                                        j10 = 4363953127296L;
                                    } else {
                                        j15 = 8 + j11;
                                        jE2 = jE ^ (((long) g8.e(j14)) << 49);
                                        if (jE2 < 0) {
                                            j9 = -558586000294016L;
                                        } else {
                                            long j16 = j11 + 9;
                                            long jE3 = (jE2 ^ (((long) g8.e(j15)) << 56)) ^ 71499008037633920L;
                                            if (jE3 < 0) {
                                                long j17 = j11 + 10;
                                                if (g8.e(j16) >= 0) {
                                                    j13 = j17;
                                                    j8 = jE3;
                                                }
                                            } else {
                                                j8 = jE3;
                                                j13 = j16;
                                            }
                                        }
                                    }
                                }
                                j8 = j9 ^ jE2;
                                j13 = j15;
                            }
                            j8 = j10 ^ jE;
                        }
                        this.f24519h = j13;
                        return j8;
                    }
                    j8 = iE2 ^ 16256;
                    j13 = j14;
                    this.f24519h = j13;
                    return j8;
                }
                i8 = iE ^ (-128);
                j8 = i8;
                this.f24519h = j13;
                return j8;
            }
        }
        return N();
    }

    public final long N() throws C2966x1 {
        long j8 = 0;
        for (int i8 = 0; i8 < 64; i8 += 7) {
            long j9 = this.f24519h;
            if (j9 == this.f24518g) {
                throw C2966x1.g();
            }
            this.f24519h = 1 + j9;
            byte bE = H2.f24255c.e(j9);
            j8 |= ((long) (bE & 127)) << i8;
            if ((bE & 128) == 0) {
                return j8;
            }
        }
        throw C2966x1.d();
    }

    public final void O() {
        long j8 = this.f24518g + ((long) this.f24521j);
        this.f24518g = j8;
        int i8 = (int) (j8 - this.f24520i);
        int i9 = this.f24523l;
        if (i8 <= i9) {
            this.f24521j = 0;
            return;
        }
        int i10 = i8 - i9;
        this.f24521j = i10;
        this.f24518g = j8 - ((long) i10);
    }

    public final void P(int i8) throws C2966x1 {
        if (i8 >= 0) {
            long j8 = this.f24518g;
            long j9 = this.f24519h;
            if (i8 <= ((int) (j8 - j9))) {
                this.f24519h = j9 + ((long) i8);
                return;
            }
        }
        if (i8 >= 0) {
            throw C2966x1.g();
        }
        throw C2966x1.e();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final void a(int i8) throws C2966x1 {
        if (this.f24522k != i8) {
            throw new C2966x1("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int e() {
        int i8 = this.f24523l;
        if (i8 == Integer.MAX_VALUE) {
            return -1;
        }
        return i8 - f();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int f() {
        return (int) (this.f24519h - this.f24520i);
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final boolean g() {
        return this.f24519h == this.f24518g;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final void k(int i8) {
        this.f24523l = i8;
        O();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int l(int i8) throws C2966x1 {
        if (i8 < 0) {
            throw C2966x1.e();
        }
        int iF = f() + i8;
        int i9 = this.f24523l;
        if (iF > i9) {
            throw C2966x1.g();
        }
        this.f24523l = iF;
        O();
        return i9;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final boolean m() {
        return M() != 0;
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final C2939q n() throws C2966x1 {
        int iX = x();
        if (iX > 0) {
            long j8 = this.f24518g;
            long j9 = this.f24519h;
            if (iX <= ((int) (j8 - j9))) {
                byte[] bArr = new byte[iX];
                long j10 = iX;
                H2.f24255c.c(j9, bArr, j10);
                this.f24519h += j10;
                C2939q c2939q = r.f24491H;
                return new C2939q(bArr);
            }
        }
        if (iX == 0) {
            return r.f24491H;
        }
        if (iX < 0) {
            throw C2966x1.e();
        }
        throw C2966x1.g();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final double o() {
        return Double.longBitsToDouble(L());
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int p() {
        return x();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int q() {
        return K();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final long r() {
        return L();
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final float s() {
        return Float.intBitsToFloat(K());
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
        return M();
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

    /* JADX WARN: Code duplicated, block: B:36:0x0099 A[PHI: r6
      0x0099: PHI (r6v6 long) = (r6v5 long), (r6v7 long), (r6v9 long) binds: [B:25:0x006d, B:29:0x0080, B:33:0x0091] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0091, code lost:
    
        if (r4.e(r8) < 0) goto L34;
     */
    @Override // com.google.protobuf.AbstractC2961w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int x() {
        /*
            r12 = this;
            long r0 = r12.f24519h
            long r2 = r12.f24518g
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 != 0) goto La
            goto L93
        La:
            r2 = 1
            long r2 = r2 + r0
            com.google.protobuf.G2 r4 = com.google.protobuf.H2.f24255c
            byte r5 = r4.e(r0)
            if (r5 < 0) goto L18
            r12.f24519h = r2
            return r5
        L18:
            long r6 = r12.f24518g
            long r6 = r6 - r2
            r8 = 9
            int r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r10 >= 0) goto L23
            goto L93
        L23:
            r6 = 2
            long r6 = r6 + r0
            byte r2 = r4.e(r2)
            int r2 = r2 << 7
            r2 = r2 ^ r5
            if (r2 >= 0) goto L33
            r0 = r2 ^ (-128(0xffffffffffffff80, float:NaN))
            goto La0
        L33:
            r10 = 3
            long r10 = r10 + r0
            byte r3 = r4.e(r6)
            int r3 = r3 << 14
            r2 = r2 ^ r3
            if (r2 < 0) goto L43
            r0 = r2 ^ 16256(0x3f80, float:2.278E-41)
        L41:
            r6 = r10
            goto La0
        L43:
            r5 = 4
            long r6 = r0 + r5
            byte r3 = r4.e(r10)
            int r3 = r3 << 21
            r2 = r2 ^ r3
            if (r2 >= 0) goto L55
            r0 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto La0
        L55:
            r10 = 5
            long r10 = r10 + r0
            byte r3 = r4.e(r6)
            int r5 = r3 << 28
            r2 = r2 ^ r5
            r5 = 266354560(0xfe03f80, float:2.2112565E-29)
            r2 = r2 ^ r5
            if (r3 >= 0) goto L9e
            r5 = 6
            long r6 = r0 + r5
            byte r3 = r4.e(r10)
            if (r3 >= 0) goto L99
            r10 = 7
            long r10 = r10 + r0
            byte r3 = r4.e(r6)
            if (r3 >= 0) goto L9e
            r5 = 8
            long r6 = r0 + r5
            byte r3 = r4.e(r10)
            if (r3 >= 0) goto L99
            long r8 = r8 + r0
            byte r3 = r4.e(r6)
            if (r3 >= 0) goto L9b
            r5 = 10
            long r6 = r0 + r5
            byte r0 = r4.e(r8)
            if (r0 >= 0) goto L99
        L93:
            long r0 = r12.N()
            int r1 = (int) r0
            return r1
        L99:
            r0 = r2
            goto La0
        L9b:
            r0 = r2
            r6 = r8
            goto La0
        L9e:
            r0 = r2
            goto L41
        La0:
            r12.f24519h = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C2958v.x():int");
    }

    @Override // com.google.protobuf.AbstractC2961w
    public final int z() {
        return K();
    }
}
