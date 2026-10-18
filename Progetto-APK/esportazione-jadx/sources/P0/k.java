package P0;

import B0.Z;
import O0.D;
import O0.T;
import O0.U;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class k implements U {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final m f5731G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final T f5732H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f5733I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f5734J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ m f5735K;

    public k(m mVar, m mVar2, T t7, int i8) {
        this.f5735K = mVar;
        this.f5731G = mVar2;
        this.f5732H = t7;
        this.f5733I = i8;
    }

    public final void a() {
        if (this.f5734J) {
            return;
        }
        m mVar = this.f5735K;
        D d6 = mVar.f5742M;
        int[] iArr = mVar.f5737H;
        int i8 = this.f5733I;
        d6.b(iArr[i8], mVar.f5738I[i8], 0, null, mVar.f5755Z);
        this.f5734J = true;
    }

    public final void c() {
        m mVar = this.f5735K;
        boolean[] zArr = mVar.f5739J;
        int i8 = this.f5733I;
        H1.i(zArr[i8]);
        mVar.f5739J[i8] = false;
    }

    @Override // O0.U
    public final boolean f() {
        m mVar = this.f5735K;
        return !mVar.A() && this.f5732H.y(mVar.f5759d0);
    }

    @Override // O0.U
    public final int j(long j8) {
        m mVar = this.f5735K;
        if (mVar.A()) {
            return 0;
        }
        boolean z7 = mVar.f5759d0;
        T t7 = this.f5732H;
        int iV = t7.v(j8, z7);
        t7.I(iV);
        if (iV > 0) {
            a();
        }
        return iV;
    }

    @Override // O0.U
    public final int r(Z z7, p171w0.g gVar, int i8) {
        m mVar = this.f5735K;
        if (mVar.A()) {
            return -3;
        }
        a();
        return this.f5732H.D(z7, gVar, i8, mVar.f5759d0);
    }

    @Override // O0.U
    public final void b() {
    }
}
