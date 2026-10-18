package P0;

import W0.C0379l;
import W0.C0381n;
import W0.F;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p141s0.M;

/* JADX INFO: loaded from: classes.dex */
public final class o extends f {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final i f5766P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public h f5767Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public long f5768R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public volatile boolean f5769S;

    public o(InterfaceC3184i interfaceC3184i, C3188m c3188m, C3136t c3136t, int i8, Object obj, i iVar) {
        super(interfaceC3184i, c3188m, 2, c3136t, i8, obj, -9223372036854775807L, -9223372036854775807L);
        this.f5766P = iVar;
    }

    @Override // S0.j
    public final void I() {
        this.f5769S = true;
    }

    @Override // S0.j
    public final void p() {
        if (this.f5768R == 0) {
            ((e) this.f5766P).a(this.f5767Q, -9223372036854775807L, -9223372036854775807L);
        }
        try {
            C3188m c3188mC = this.f5721H.c(this.f5768R);
            M m7 = this.f5728O;
            C0381n c0381n = new C0381n(m7, c3188mC.f29968f, m7.a(c3188mC));
            while (!this.f5769S) {
                try {
                    e eVar = (e) this.f5766P;
                    int iH = eVar.f5711G.h(c0381n, e.f5710P);
                    boolean z7 = true;
                    if (iH == 1) {
                        z7 = false;
                    }
                    H1.i(z7);
                    if (iH != 0) {
                        break;
                    }
                } catch (Throwable th) {
                    this.f5768R = c0381n.f7444d - this.f5721H.f29968f;
                    F f8 = ((e) this.f5766P).f5718N;
                    if (f8 instanceof C0379l) {
                    }
                    throw th;
                }
            }
            this.f5768R = c0381n.f7444d - this.f5721H.f29968f;
            F f9 = ((e) this.f5766P).f5718N;
            if (f9 instanceof C0379l) {
            }
            p102n0.c.d(this.f5728O);
        } catch (Throwable th2) {
            p102n0.c.d(this.f5728O);
            throw th2;
        }
    }
}
