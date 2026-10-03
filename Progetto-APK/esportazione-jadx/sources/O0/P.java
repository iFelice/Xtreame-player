package O0;

import android.media.MediaCodec;
import android.os.Build;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final S0.d f5123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p117p0.E f5125c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public O f5126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public O f5127e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public O f5128f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f5129g;

    public P(S0.d dVar) {
        this.f5123a = dVar;
        int i8 = dVar.f6323b;
        this.f5124b = i8;
        this.f5125c = new p117p0.E(32);
        O o4 = new O(i8, 0L);
        this.f5126d = o4;
        this.f5127e = o4;
        this.f5128f = o4;
    }

    public static O d(O o4, long j8, ByteBuffer byteBuffer, int i8) {
        while (j8 >= o4.f5120b) {
            o4 = o4.f5122d;
        }
        while (i8 > 0) {
            int iMin = Math.min(i8, (int) (o4.f5120b - j8));
            S0.a aVar = o4.f5121c;
            byteBuffer.put(aVar.f6317a, ((int) (j8 - o4.f5119a)) + aVar.f6318b, iMin);
            i8 -= iMin;
            j8 += (long) iMin;
            if (j8 == o4.f5120b) {
                o4 = o4.f5122d;
            }
        }
        return o4;
    }

    public static O e(O o4, long j8, byte[] bArr, int i8) {
        while (j8 >= o4.f5120b) {
            o4 = o4.f5122d;
        }
        int i9 = i8;
        while (i9 > 0) {
            int iMin = Math.min(i9, (int) (o4.f5120b - j8));
            S0.a aVar = o4.f5121c;
            System.arraycopy(aVar.f6317a, ((int) (j8 - o4.f5119a)) + aVar.f6318b, bArr, i8 - i9, iMin);
            i9 -= iMin;
            j8 += (long) iMin;
            if (j8 == o4.f5120b) {
                o4 = o4.f5122d;
            }
        }
        return o4;
    }

    public static O f(O o4, p171w0.g gVar, p149t0.d dVar, p117p0.E e8) {
        if (gVar.getFlag(1073741824)) {
            long j8 = dVar.f30168I;
            int iF = 1;
            e8.I(1);
            O oE = e(o4, j8, e8.f28035a, 1);
            long j9 = j8 + 1;
            byte b8 = e8.f28035a[0];
            boolean z7 = (b8 & 128) != 0;
            int i8 = b8 & 127;
            p171w0.c cVar = gVar.f30903H;
            byte[] bArr = cVar.f30892a;
            if (bArr == null) {
                cVar.f30892a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            o4 = e(oE, j9, cVar.f30892a, i8);
            long j10 = j9 + ((long) i8);
            if (z7) {
                e8.I(2);
                o4 = e(o4, j10, e8.f28035a, 2);
                j10 += 2;
                iF = e8.F();
            }
            int[] iArr = cVar.f30895d;
            if (iArr == null || iArr.length < iF) {
                iArr = new int[iF];
            }
            int[] iArr2 = cVar.f30896e;
            if (iArr2 == null || iArr2.length < iF) {
                iArr2 = new int[iF];
            }
            if (z7) {
                int i9 = iF * 6;
                e8.I(i9);
                o4 = e(o4, j10, e8.f28035a, i9);
                j10 += (long) i9;
                e8.L(0);
                for (int i10 = 0; i10 < iF; i10++) {
                    iArr[i10] = e8.F();
                    iArr2[i10] = e8.D();
                }
            } else {
                iArr[0] = 0;
                iArr2[0] = dVar.f30167H - ((int) (j10 - dVar.f30168I));
            }
            W0.K k8 = (W0.K) dVar.f30169J;
            String str = p117p0.M.f28050a;
            byte[] bArr2 = k8.f7337b;
            byte[] bArr3 = cVar.f30892a;
            cVar.f30897f = iF;
            cVar.f30895d = iArr;
            cVar.f30896e = iArr2;
            cVar.f30893b = bArr2;
            cVar.f30892a = bArr3;
            int i11 = k8.f7336a;
            cVar.f30894c = i11;
            int i12 = k8.f7338c;
            cVar.f30898g = i12;
            int i13 = k8.f7339d;
            cVar.f30899h = i13;
            MediaCodec.CryptoInfo cryptoInfo = cVar.f30900i;
            cryptoInfo.numSubSamples = iF;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr2;
            cryptoInfo.iv = bArr3;
            cryptoInfo.mode = i11;
            if (Build.VERSION.SDK_INT >= 24) {
                p171w0.b bVar = (p171w0.b) cVar.f30901j;
                bVar.getClass();
                MediaCodec.CryptoInfo.Pattern pattern = bVar.f30891b;
                pattern.set(i12, i13);
                bVar.f30890a.setPattern(pattern);
            }
            long j11 = dVar.f30168I;
            int i14 = (int) (j10 - j11);
            dVar.f30168I = j11 + ((long) i14);
            dVar.f30167H -= i14;
        }
        if (!gVar.hasSupplementalData()) {
            gVar.f(dVar.f30167H);
            return d(o4, dVar.f30168I, gVar.f30904I, dVar.f30167H);
        }
        e8.I(4);
        O oE2 = e(o4, dVar.f30168I, e8.f28035a, 4);
        int iD = e8.D();
        dVar.f30168I += 4;
        dVar.f30167H -= 4;
        gVar.f(iD);
        O oD = d(oE2, dVar.f30168I, gVar.f30904I, iD);
        dVar.f30168I += (long) iD;
        int i15 = dVar.f30167H - iD;
        dVar.f30167H = i15;
        ByteBuffer byteBuffer = gVar.f30907L;
        if (byteBuffer == null || byteBuffer.capacity() < i15) {
            gVar.f30907L = ByteBuffer.allocate(i15);
        } else {
            gVar.f30907L.clear();
        }
        return d(oD, dVar.f30168I, gVar.f30907L, dVar.f30167H);
    }

    public final void a(O o4) {
        if (o4.f5121c == null) {
            return;
        }
        S0.d dVar = this.f5123a;
        synchronized (dVar) {
            O o7 = o4;
            while (o7 != null) {
                try {
                    S0.a[] aVarArr = dVar.f6327f;
                    int i8 = dVar.f6326e;
                    dVar.f6326e = i8 + 1;
                    S0.a aVar = o7.f5121c;
                    aVar.getClass();
                    aVarArr[i8] = aVar;
                    dVar.f6325d--;
                    o7 = o7.f5122d;
                    if (o7 == null || o7.f5121c == null) {
                        o7 = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            dVar.notifyAll();
        }
        o4.f5121c = null;
        o4.f5122d = null;
    }

    public final void b(long j8) {
        O o4;
        if (j8 == -1) {
            return;
        }
        while (true) {
            o4 = this.f5126d;
            if (j8 < o4.f5120b) {
                break;
            }
            S0.d dVar = this.f5123a;
            S0.a aVar = o4.f5121c;
            synchronized (dVar) {
                S0.a[] aVarArr = dVar.f6327f;
                int i8 = dVar.f6326e;
                dVar.f6326e = i8 + 1;
                aVarArr[i8] = aVar;
                dVar.f6325d--;
                dVar.notifyAll();
            }
            O o7 = this.f5126d;
            o7.f5121c = null;
            O o8 = o7.f5122d;
            o7.f5122d = null;
            this.f5126d = o8;
        }
        if (this.f5127e.f5119a < o4.f5119a) {
            this.f5127e = o4;
        }
    }

    public final int c(int i8) {
        S0.a aVar;
        O o4 = this.f5128f;
        if (o4.f5121c == null) {
            S0.d dVar = this.f5123a;
            synchronized (dVar) {
                try {
                    int i9 = dVar.f6325d + 1;
                    dVar.f6325d = i9;
                    int i10 = dVar.f6326e;
                    if (i10 > 0) {
                        S0.a[] aVarArr = dVar.f6327f;
                        int i11 = i10 - 1;
                        dVar.f6326e = i11;
                        aVar = aVarArr[i11];
                        aVar.getClass();
                        dVar.f6327f[dVar.f6326e] = null;
                    } else {
                        S0.a aVar2 = new S0.a(new byte[dVar.f6323b], 0);
                        S0.a[] aVarArr2 = dVar.f6327f;
                        if (i9 > aVarArr2.length) {
                            dVar.f6327f = (S0.a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                        }
                        aVar = aVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            O o7 = new O(this.f5124b, this.f5128f.f5120b);
            o4.f5121c = aVar;
            o4.f5122d = o7;
        }
        return Math.min(i8, (int) (this.f5128f.f5120b - this.f5129g));
    }
}
