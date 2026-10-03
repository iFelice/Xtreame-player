package P0;

import O0.T;
import W0.C0381n;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p141s0.M;

/* JADX INFO: loaded from: classes.dex */
public final class r extends a {

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f5772U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final C3136t f5773V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public long f5774W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f5775X;

    public r(InterfaceC3184i interfaceC3184i, C3188m c3188m, C3136t c3136t, int i8, Object obj, long j8, long j9, long j10, int i9, C3136t c3136t2) {
        super(interfaceC3184i, c3188m, c3136t, i8, obj, j8, j9, -9223372036854775807L, -9223372036854775807L, j10);
        this.f5772U = i9;
        this.f5773V = c3136t2;
    }

    @Override // P0.p
    public final boolean b() {
        return this.f5775X;
    }

    @Override // S0.j
    public final void p() {
        M m7 = this.f5728O;
        c cVar = this.f5697S;
        H1.j(cVar);
        for (T t7 : cVar.f5703b) {
            if (t7.f5137F != 0) {
                t7.f5137F = 0L;
                t7.f5164z = true;
            }
        }
        L lA = cVar.a(this.f5772U);
        lA.b(this.f5773V);
        try {
            long jA = m7.a(this.f5721H.c(this.f5774W));
            if (jA != -1) {
                jA += this.f5774W;
            }
            C0381n c0381n = new C0381n(this.f5728O, this.f5774W, jA);
            for (int iF = 0; iF != -1; iF = lA.f(c0381n, com.google.android.gms.common.api.d.API_PRIORITY_OTHER, true)) {
                this.f5774W += (long) iF;
            }
            lA.d(this.f5726M, 1, (int) this.f5774W, 0, null);
            p102n0.c.d(m7);
            this.f5775X = true;
        } catch (Throwable th) {
            p102n0.c.d(m7);
            throw th;
        }
    }

    @Override // S0.j
    public final void I() {
    }
}
