package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class QN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1534jr f16021a = new C1534jr(32);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PN f16022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PN f16023c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PN f16024d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f16025e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CO f16026f;

    public QN(CO co) {
        this.f16026f = co;
        PN pn = new PN(0L);
        this.f16022b = pn;
        this.f16023c = pn;
        this.f16024d = pn;
    }

    public static PN c(PN pn, long j8, ByteBuffer byteBuffer, int i8) {
        while (j8 >= pn.f15385b) {
            pn = (PN) pn.f15387d;
        }
        while (i8 > 0) {
            int iMin = Math.min(i8, (int) (pn.f15385b - j8));
            byteBuffer.put(((C2347zO) pn.f15386c).f22160a, pn.a(j8), iMin);
            i8 -= iMin;
            j8 += (long) iMin;
            if (j8 == pn.f15385b) {
                pn = (PN) pn.f15387d;
            }
        }
        return pn;
    }

    public static PN d(PN pn, long j8, byte[] bArr, int i8) {
        while (j8 >= pn.f15385b) {
            pn = (PN) pn.f15387d;
        }
        int i9 = i8;
        while (i9 > 0) {
            int iMin = Math.min(i9, (int) (pn.f15385b - j8));
            System.arraycopy(((C2347zO) pn.f15386c).f22160a, pn.a(j8), bArr, i8 - i9, iMin);
            i9 -= iMin;
            j8 += (long) iMin;
            if (j8 == pn.f15385b) {
                pn = (PN) pn.f15387d;
            }
        }
        return pn;
    }

    public static PN e(PN pn, VJ vj, p149t0.d dVar, C1534jr c1534jr) {
        if (vj.b(1073741824)) {
            long j8 = dVar.f30168I;
            int iA = 1;
            c1534jr.g(1);
            PN pnD = d(pn, j8, c1534jr.f19515a, 1);
            long j9 = j8 + 1;
            byte b8 = c1534jr.f19515a[0];
            int i8 = b8 & 128;
            int i9 = b8 & 127;
            p171w0.c cVar = vj.f16992d;
            byte[] bArr = cVar.f30892a;
            if (bArr == null) {
                cVar.f30892a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            boolean z7 = i8 != 0;
            pn = d(pnD, j9, cVar.f30892a, i9);
            long j10 = j9 + ((long) i9);
            if (z7) {
                c1534jr.g(2);
                pn = d(pn, j10, c1534jr.f19515a, 2);
                j10 += 2;
                iA = c1534jr.A();
            }
            int[] iArr = cVar.f30895d;
            if (iArr == null || iArr.length < iA) {
                iArr = new int[iA];
            }
            int[] iArr2 = cVar.f30896e;
            if (iArr2 == null || iArr2.length < iA) {
                iArr2 = new int[iA];
            }
            if (z7) {
                int i10 = iA * 6;
                c1534jr.g(i10);
                pn = d(pn, j10, c1534jr.f19515a, i10);
                j10 += (long) i10;
                c1534jr.j(0);
                for (int i11 = 0; i11 < iA; i11++) {
                    iArr[i11] = c1534jr.A();
                    iArr2[i11] = c1534jr.z();
                }
            } else {
                iArr[0] = 0;
                iArr2[0] = dVar.f30167H - ((int) (j10 - dVar.f30168I));
            }
            C1183d0 c1183d0 = (C1183d0) dVar.f30169J;
            int i12 = Et.f13234a;
            byte[] bArr2 = c1183d0.f18290b;
            byte[] bArr3 = cVar.f30892a;
            cVar.f30897f = iA;
            cVar.f30895d = iArr;
            cVar.f30896e = iArr2;
            cVar.f30893b = bArr2;
            cVar.f30892a = bArr3;
            int i13 = c1183d0.f18289a;
            cVar.f30894c = i13;
            int i14 = c1183d0.f18291c;
            cVar.f30898g = i14;
            int i15 = c1183d0.f18292d;
            cVar.f30899h = i15;
            MediaCodec.CryptoInfo cryptoInfo = cVar.f30900i;
            cryptoInfo.numSubSamples = iA;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr2;
            cryptoInfo.iv = bArr3;
            cryptoInfo.mode = i13;
            if (Et.f13234a >= 24) {
                SJ sj = (SJ) cVar.f30901j;
                sj.getClass();
                MediaCodec.CryptoInfo.Pattern pattern = sj.f16424b;
                pattern.set(i14, i15);
                sj.f16423a.setPattern(pattern);
            }
            long j11 = dVar.f30168I;
            int i16 = (int) (j10 - j11);
            dVar.f30168I = j11 + ((long) i16);
            dVar.f30167H -= i16;
        }
        if (!vj.b(268435456)) {
            vj.f(dVar.f30167H);
            return c(pn, dVar.f30168I, vj.f16993e, dVar.f30167H);
        }
        c1534jr.g(4);
        PN pnD2 = d(pn, dVar.f30168I, c1534jr.f19515a, 4);
        int iZ = c1534jr.z();
        dVar.f30168I += 4;
        dVar.f30167H -= 4;
        vj.f(iZ);
        PN pnC = c(pnD2, dVar.f30168I, vj.f16993e, iZ);
        dVar.f30168I += (long) iZ;
        int i17 = dVar.f30167H - iZ;
        dVar.f30167H = i17;
        ByteBuffer byteBuffer = vj.f16996h;
        if (byteBuffer == null || byteBuffer.capacity() < i17) {
            vj.f16996h = ByteBuffer.allocate(i17);
        } else {
            vj.f16996h.clear();
        }
        return c(pnC, dVar.f30168I, vj.f16996h, dVar.f30167H);
    }

    public final void a(long j8) {
        PN pn;
        if (j8 != -1) {
            while (true) {
                pn = this.f16022b;
                if (j8 < pn.f15385b) {
                    break;
                }
                CO co = this.f16026f;
                C2347zO c2347zO = (C2347zO) pn.f15386c;
                synchronized (co) {
                    C2347zO[] c2347zOArr = (C2347zO[]) co.f12631d;
                    int i8 = co.f12630c;
                    co.f12630c = i8 + 1;
                    c2347zOArr[i8] = c2347zO;
                    co.f12629b--;
                    co.notifyAll();
                }
                PN pn2 = this.f16022b;
                pn2.f15386c = null;
                PN pn3 = (PN) pn2.f15387d;
                pn2.f15387d = null;
                this.f16022b = pn3;
            }
            if (this.f16023c.f15384a < pn.f15384a) {
                this.f16023c = pn;
            }
        }
    }

    public final int b(int i8) {
        C2347zO c2347zO;
        PN pn = this.f16024d;
        if (((C2347zO) pn.f15386c) == null) {
            CO co = this.f16026f;
            synchronized (co) {
                try {
                    int i9 = co.f12629b + 1;
                    co.f12629b = i9;
                    int i10 = co.f12630c;
                    if (i10 > 0) {
                        C2347zO[] c2347zOArr = (C2347zO[]) co.f12631d;
                        int i11 = i10 - 1;
                        co.f12630c = i11;
                        c2347zO = c2347zOArr[i11];
                        c2347zO.getClass();
                        c2347zOArr[i11] = null;
                    } else {
                        c2347zO = new C2347zO(new byte[65536]);
                        C2347zO[] c2347zOArr2 = (C2347zO[]) co.f12631d;
                        int length = c2347zOArr2.length;
                        if (i9 > length) {
                            co.f12631d = (C2347zO[]) Arrays.copyOf(c2347zOArr2, length + length);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            PN pn2 = new PN(this.f16024d.f15385b);
            pn.f15386c = c2347zO;
            pn.f15387d = pn2;
        }
        return Math.min(i8, (int) (this.f16024d.f15385b - this.f16025e));
    }
}
