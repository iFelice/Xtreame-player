package E0;

import B0.Z;
import O0.U;
import p094m0.C3136t;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class q implements U {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3136t f2555G;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long[] f2557I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f2558J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public F0.g f2559K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f2560L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f2561M;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final F.i f2556H = new F.i(4);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f2562N = -9223372036854775807L;

    public q(F0.g gVar, C3136t c3136t, boolean z7) {
        this.f2555G = c3136t;
        this.f2559K = gVar;
        this.f2557I = gVar.f3046b;
        a(gVar, z7);
    }

    public final void a(F0.g gVar, boolean z7) {
        int i8 = this.f2561M;
        long j8 = -9223372036854775807L;
        long j9 = i8 == 0 ? -9223372036854775807L : this.f2557I[i8 - 1];
        this.f2558J = z7;
        this.f2559K = gVar;
        long[] jArr = gVar.f3046b;
        this.f2557I = jArr;
        long j10 = this.f2562N;
        if (j10 == -9223372036854775807L) {
            if (j9 != -9223372036854775807L) {
                this.f2561M = M.a(jArr, j9, false);
            }
        } else {
            int iA = M.a(jArr, j10, true);
            this.f2561M = iA;
            if (this.f2558J && iA == this.f2557I.length) {
                j8 = j10;
            }
            this.f2562N = j8;
        }
    }

    @Override // O0.U
    public final boolean f() {
        return true;
    }

    @Override // O0.U
    public final int j(long j8) {
        int iMax = Math.max(this.f2561M, M.a(this.f2557I, j8, true));
        int i8 = iMax - this.f2561M;
        this.f2561M = iMax;
        return i8;
    }

    @Override // O0.U
    public final int r(Z z7, p171w0.g gVar, int i8) {
        int i9 = this.f2561M;
        boolean z8 = i9 == this.f2557I.length;
        if (z8 && !this.f2558J) {
            gVar.setFlags(4);
            return -4;
        }
        if ((i8 & 2) != 0 || !this.f2560L) {
            z7.f904b = this.f2555G;
            this.f2560L = true;
            return -5;
        }
        if (z8) {
            return -3;
        }
        if ((i8 & 1) == 0) {
            this.f2561M = i9 + 1;
        }
        if ((i8 & 4) == 0) {
            byte[] bArrC = this.f2556H.c(this.f2559K.f3045a[i9]);
            gVar.f(bArrC.length);
            gVar.f30904I.put(bArrC);
        }
        gVar.f30906K = this.f2557I[i9];
        gVar.setFlags(1);
        return -4;
    }

    @Override // O0.U
    public final void b() {
    }
}
