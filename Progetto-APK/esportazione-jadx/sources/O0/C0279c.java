package O0;

import p094m0.C3135s;
import p094m0.C3136t;

/* JADX INFO: renamed from: O0.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0279c implements U {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final U f5192G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f5193H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0280d f5194I;

    public C0279c(C0280d c0280d, U u7) {
        this.f5194I = c0280d;
        this.f5192G = u7;
    }

    @Override // O0.U
    public final void b() {
        this.f5192G.b();
    }

    @Override // O0.U
    public final boolean f() {
        return !this.f5194I.b() && this.f5192G.f();
    }

    @Override // O0.U
    public final int j(long j8) {
        if (this.f5194I.b()) {
            return -3;
        }
        return this.f5192G.j(j8);
    }

    @Override // O0.U
    public final int r(B0.Z z7, p171w0.g gVar, int i8) {
        C0280d c0280d = this.f5194I;
        if (c0280d.b()) {
            return -3;
        }
        if (this.f5193H) {
            gVar.setFlags(4);
            return -4;
        }
        long jU = c0280d.u();
        int iR = this.f5192G.r(z7, gVar, i8);
        if (iR != -5) {
            long j8 = c0280d.f5200L;
            if (j8 == Long.MIN_VALUE || ((iR != -4 || gVar.f30906K < j8) && !(iR == -3 && jU == Long.MIN_VALUE && !gVar.f30905J))) {
                return iR;
            }
            gVar.clear();
            gVar.setFlags(4);
            this.f5193H = true;
            return -4;
        }
        C3136t c3136t = z7.f904b;
        c3136t.getClass();
        int i9 = c3136t.f27020K;
        int i10 = c3136t.f27019J;
        if (i10 != 0 || i9 != 0) {
            if (c0280d.f5199K != 0) {
                i10 = 0;
            }
            if (c0280d.f5200L != Long.MIN_VALUE) {
                i9 = 0;
            }
            C3135s c3135sA = c3136t.a();
            c3135sA.f26976I = i10;
            c3135sA.f26977J = i9;
            z7.f904b = c3135sA.a();
        }
        return -5;
    }
}
