package O0;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class I implements U {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f5050G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ L f5051H;

    public I(L l4, int i8) {
        this.f5051H = l4;
        this.f5050G = i8;
    }

    @Override // O0.U
    public final void b() throws IOException {
        L l4 = this.f5051H;
        l4.f5081b0[this.f5050G].A();
        int iY = l4.f5063J.Y(l4.f5091l0);
        S0.m mVar = l4.f5073T;
        IOException iOException = mVar.f6368I;
        if (iOException != null) {
            throw iOException;
        }
        S0.i iVar = mVar.f6367H;
        if (iVar != null) {
            if (iY == Integer.MIN_VALUE) {
                iY = iVar.f6353G;
            }
            IOException iOException2 = iVar.f6357K;
            if (iOException2 != null && iVar.f6358L > iY) {
                throw iOException2;
            }
        }
    }

    @Override // O0.U
    public final boolean f() {
        L l4 = this.f5051H;
        return !l4.G() && l4.f5081b0[this.f5050G].y(l4.f5101v0);
    }

    @Override // O0.U
    public final int j(long j8) {
        L l4 = this.f5051H;
        if (l4.G()) {
            return 0;
        }
        int i8 = this.f5050G;
        l4.B(i8);
        T t7 = l4.f5081b0[i8];
        int iV = t7.v(j8, l4.f5101v0);
        t7.I(iV);
        if (iV != 0) {
            return iV;
        }
        l4.C(i8);
        return iV;
    }

    @Override // O0.U
    public final int r(B0.Z z7, p171w0.g gVar, int i8) {
        L l4 = this.f5051H;
        if (l4.G()) {
            return -3;
        }
        int i9 = this.f5050G;
        l4.B(i9);
        int iD = l4.f5081b0[i9].D(z7, gVar, i8, l4.f5101v0);
        if (iD == -3) {
            l4.C(i9);
        }
        return iD;
    }
}
