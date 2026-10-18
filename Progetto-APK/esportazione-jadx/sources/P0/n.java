package P0;

import O0.T;
import W0.C0381n;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;
import p094m0.O;
import p117p0.E;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p141s0.M;

/* JADX INFO: loaded from: classes.dex */
public final class n extends a {

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f5760U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final long f5761V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final i f5762W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public long f5763X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public volatile boolean f5764Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f5765Z;

    public n(InterfaceC3184i interfaceC3184i, C3188m c3188m, C3136t c3136t, int i8, Object obj, long j8, long j9, long j10, long j11, long j12, int i9, long j13, i iVar) {
        super(interfaceC3184i, c3188m, c3136t, i8, obj, j8, j9, j10, j11, j12);
        this.f5760U = i9;
        this.f5761V = j13;
        this.f5762W = iVar;
    }

    @Override // S0.j
    public final void I() {
        this.f5764Y = true;
    }

    @Override // P0.p
    public final long a() {
        return this.f5770P + ((long) this.f5760U);
    }

    @Override // P0.p
    public final boolean b() {
        return this.f5765Z;
    }

    public final void d(c cVar) {
        C3136t c3136t = this.f5723J;
        if (O.m(c3136t.f27040n)) {
            int i8 = c3136t.f27023N;
            int i9 = c3136t.f27024O;
            if ((i8 <= 1 && i9 <= 1) || i8 == -1 || i9 == -1) {
                return;
            }
            L lA = cVar.a(4);
            int i10 = i8 * i9;
            long j8 = (this.f5727N - this.f5726M) / ((long) i10);
            for (int i11 = 1; i11 < i10; i11++) {
                lA.e(0, new E());
                lA.d(((long) i11) * j8, 0, 0, 0, null);
            }
        }
    }

    @Override // S0.j
    public final void p() {
        c cVar = this.f5697S;
        H1.j(cVar);
        if (this.f5763X == 0) {
            long j8 = this.f5761V;
            for (T t7 : cVar.f5703b) {
                if (t7.f5137F != j8) {
                    t7.f5137F = j8;
                    t7.f5164z = true;
                }
            }
            i iVar = this.f5762W;
            long j9 = this.f5695Q;
            long j10 = j9 == -9223372036854775807L ? -9223372036854775807L : j9 - this.f5761V;
            long j11 = this.f5696R;
            ((e) iVar).a(cVar, j10, j11 == -9223372036854775807L ? -9223372036854775807L : j11 - this.f5761V);
        }
        try {
            C3188m c3188mC = this.f5721H.c(this.f5763X);
            M m7 = this.f5728O;
            C0381n c0381n = new C0381n(m7, c3188mC.f29968f, m7.a(c3188mC));
            while (!this.f5764Y) {
                try {
                    int iH = ((e) this.f5762W).f5711G.h(c0381n, e.f5710P);
                    H1.i(iH != 1);
                    if (iH != 0) {
                        break;
                    }
                } catch (Throwable th) {
                    this.f5763X = c0381n.f7444d - this.f5721H.f29968f;
                    throw th;
                }
            }
            d(cVar);
            this.f5763X = c0381n.f7444d - this.f5721H.f29968f;
            p102n0.c.d(this.f5728O);
            this.f5765Z = !this.f5764Y;
        } catch (Throwable th2) {
            p102n0.c.d(this.f5728O);
            throw th2;
        }
    }
}
