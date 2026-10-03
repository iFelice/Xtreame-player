package p118p1;

import W0.F;
import W0.t;
import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import java.io.IOException;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class b implements h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final g f28135G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f28136H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f28137I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final j f28138J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f28139K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f28140L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f28141M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f28142N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public long f28143O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public long f28144P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public long f28145Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public long f28146R;

    public b(j jVar, long j8, long j9, long j10, long j11, boolean z7) {
        H1.d(j8 >= 0 && j9 > j8);
        this.f28138J = jVar;
        this.f28136H = j8;
        this.f28137I = j9;
        if (j10 == j9 - j8 || z7) {
            this.f28140L = j11;
            this.f28139K = 4;
        } else {
            this.f28139K = 0;
        }
        this.f28135G = new g();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0031  */
    @Override // p118p1.h
    public final long J(t tVar) throws IOException {
        long j8;
        long j9;
        int i8 = this.f28139K;
        long j10 = this.f28137I;
        g gVar = this.f28135G;
        if (i8 == 0) {
            long jR = tVar.r();
            this.f28141M = jR;
            this.f28139K = 1;
            long j11 = j10 - 65307;
            if (j11 > jR) {
                return j11;
            }
        } else if (i8 != 1) {
            if (i8 == 2) {
                if (this.f28143O == this.f28144P) {
                    gVar = gVar;
                    j9 = -1;
                    j8 = -1;
                } else {
                    long jR2 = tVar.r();
                    if (gVar.b(tVar, this.f28144P)) {
                        gVar.a(tVar, false);
                        tVar.m();
                        long j12 = this.f28142N;
                        long j13 = gVar.f28162b;
                        long j14 = j12 - j13;
                        int i9 = gVar.f28164d + gVar.f28165e;
                        if (0 > j14 || j14 >= 72000) {
                            if (j14 < 0) {
                                this.f28144P = jR2;
                                this.f28146R = j13;
                            } else {
                                this.f28143O = tVar.r() + ((long) i9);
                                this.f28145Q = gVar.f28162b;
                            }
                            long j15 = this.f28144P;
                            long j16 = this.f28143O;
                            if (j15 - j16 < 100000) {
                                this.f28144P = j16;
                                j8 = j16;
                            } else {
                                long jR3 = tVar.r() - (((long) i9) * (j14 <= 0 ? 2L : 1L));
                                long j17 = this.f28144P;
                                long j18 = this.f28143O;
                                j8 = M.j((((j17 - j18) * j14) / (this.f28146R - this.f28145Q)) + jR3, j18, j17 - 1);
                            }
                            j9 = -1;
                        } else {
                            gVar = gVar;
                            j9 = -1;
                            j8 = -1;
                        }
                    } else {
                        long j19 = this.f28143O;
                        if (j19 == jR2) {
                            throw new IOException("No ogg page can be found.");
                        }
                        j8 = j19;
                    }
                    j9 = -1;
                }
                if (j8 != j9) {
                    return j8;
                }
                this.f28139K = 3;
            } else {
                if (i8 != 3) {
                    if (i8 == 4) {
                        return -1L;
                    }
                    throw new IllegalStateException();
                }
                j9 = -1;
                gVar = gVar;
            }
            g gVar2 = gVar;
            while (true) {
                gVar2.b(tVar, j9);
                gVar2.a(tVar, false);
                if (gVar2.f28162b > this.f28142N) {
                    tVar.m();
                    this.f28139K = 4;
                    return -(this.f28145Q + 2);
                }
                tVar.n(gVar2.f28164d + gVar2.f28165e);
                this.f28143O = tVar.r();
                this.f28145Q = gVar2.f28162b;
                j9 = -1;
            }
        }
        gVar.f28161a = 0;
        gVar.f28162b = 0L;
        gVar.f28163c = 0;
        gVar.f28164d = 0;
        gVar.f28165e = 0;
        if (!gVar.b(tVar, -1L)) {
            throw new EOFException();
        }
        gVar.a(tVar, false);
        tVar.n(gVar.f28164d + gVar.f28165e);
        long j20 = gVar.f28162b;
        while ((gVar.f28161a & 4) != 4 && gVar.b(tVar, -1L) && tVar.r() < j10 && gVar.a(tVar, true)) {
            try {
                tVar.n(gVar.f28164d + gVar.f28165e);
                j20 = gVar.f28162b;
            } catch (EOFException unused) {
            }
        }
        this.f28140L = j20;
        this.f28139K = 4;
        return this.f28141M;
    }

    @Override // p118p1.h
    public final void L(long j8) {
        this.f28142N = M.j(j8, 0L, this.f28140L - 1);
        this.f28139K = 2;
        this.f28143O = this.f28136H;
        this.f28144P = this.f28137I;
        this.f28145Q = 0L;
        this.f28146R = this.f28140L;
    }

    @Override // p118p1.h
    public final F w() {
        if (this.f28140L != 0) {
            return new a(this);
        }
        return null;
    }
}
