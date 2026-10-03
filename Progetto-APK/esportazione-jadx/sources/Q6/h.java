package Q6;

import A0.O;
import java.io.Closeable;
import java.util.Arrays;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements Closeable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public j f6054G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f6055H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public y f6056I;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public byte[] f6058K;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f6057J = -1;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f6059L = -1;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f6060M = -1;

    public final int E(long j8) {
        j jVar = this.f6054G;
        if (jVar == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (j8 >= -1) {
            long j9 = jVar.f6064H;
            if (j8 <= j9) {
                if (j8 == -1 || j8 == j9) {
                    this.f6056I = null;
                    this.f6057J = j8;
                    this.f6058K = null;
                    this.f6059L = -1;
                    this.f6060M = -1;
                    return -1;
                }
                y yVar = jVar.f6063G;
                y yVar2 = this.f6056I;
                long j10 = 0;
                if (yVar2 != null) {
                    long j11 = this.f6057J - ((long) (this.f6059L - yVar2.f6098b));
                    if (j11 > j8) {
                        j9 = j11;
                        yVar2 = yVar;
                        yVar = yVar2;
                    } else {
                        j10 = j11;
                    }
                } else {
                    yVar2 = yVar;
                }
                if (j9 - j8 > j8 - j10) {
                    while (true) {
                        q0.e(yVar2);
                        long j12 = ((long) (yVar2.f6099c - yVar2.f6098b)) + j10;
                        if (j8 < j12) {
                            break;
                        }
                        yVar2 = yVar2.f6102f;
                        j10 = j12;
                    }
                } else {
                    while (j9 > j8) {
                        q0.e(yVar);
                        yVar = yVar.f6103g;
                        q0.e(yVar);
                        j9 -= (long) (yVar.f6099c - yVar.f6098b);
                    }
                    j10 = j9;
                    yVar2 = yVar;
                }
                if (this.f6055H) {
                    q0.e(yVar2);
                    if (yVar2.f6100d) {
                        byte[] bArr = yVar2.f6097a;
                        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                        q0.g(bArrCopyOf, "copyOf(this, size)");
                        y yVar3 = new y(bArrCopyOf, yVar2.f6098b, yVar2.f6099c, false, true);
                        if (jVar.f6063G == yVar2) {
                            jVar.f6063G = yVar3;
                        }
                        yVar2.b(yVar3);
                        y yVar4 = yVar3.f6103g;
                        q0.e(yVar4);
                        yVar4.a();
                        yVar2 = yVar3;
                    }
                }
                this.f6056I = yVar2;
                this.f6057J = j8;
                q0.e(yVar2);
                this.f6058K = yVar2.f6097a;
                int i8 = yVar2.f6098b + ((int) (j8 - j10));
                this.f6059L = i8;
                int i9 = yVar2.f6099c;
                this.f6060M = i9;
                return i9 - i8;
            }
        }
        StringBuilder sbD = p148t.a.d("offset=", j8, " > size=");
        sbD.append(jVar.f6064H);
        throw new ArrayIndexOutOfBoundsException(sbD.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f6054G == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        this.f6054G = null;
        this.f6056I = null;
        this.f6057J = -1L;
        this.f6058K = null;
        this.f6059L = -1;
        this.f6060M = -1;
    }

    public final void k(long j8) {
        j jVar = this.f6054G;
        if (jVar == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (!this.f6055H) {
            throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
        }
        long j9 = jVar.f6064H;
        if (j8 <= j9) {
            if (j8 < 0) {
                throw new IllegalArgumentException(O.z("newSize < 0: ", j8).toString());
            }
            long j10 = j9 - j8;
            while (j10 > 0) {
                y yVar = jVar.f6063G;
                q0.e(yVar);
                y yVar2 = yVar.f6103g;
                q0.e(yVar2);
                int i8 = yVar2.f6099c;
                long j11 = i8 - yVar2.f6098b;
                if (j11 > j10) {
                    yVar2.f6099c = i8 - ((int) j10);
                    break;
                } else {
                    jVar.f6063G = yVar2.a();
                    z.a(yVar2);
                    j10 -= j11;
                }
            }
            this.f6056I = null;
            this.f6057J = j8;
            this.f6058K = null;
            this.f6059L = -1;
            this.f6060M = -1;
        } else if (j8 > j9) {
            long j12 = j8 - j9;
            boolean z7 = true;
            for (long j13 = 0; j12 > j13; j13 = 0) {
                y yVarK0 = jVar.k0(1);
                int iMin = (int) Math.min(j12, 8192 - yVarK0.f6099c);
                int i9 = yVarK0.f6099c + iMin;
                yVarK0.f6099c = i9;
                j12 -= (long) iMin;
                if (z7) {
                    this.f6056I = yVarK0;
                    this.f6057J = j9;
                    this.f6058K = yVarK0.f6097a;
                    this.f6059L = i9 - iMin;
                    this.f6060M = i9;
                    z7 = false;
                }
            }
        }
        jVar.f6064H = j8;
    }
}
