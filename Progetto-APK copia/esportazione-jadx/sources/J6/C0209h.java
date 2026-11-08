package J6;

import java.util.concurrent.CancellationException;

/* JADX INFO: renamed from: J6.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0209h extends N implements InterfaceC0208g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InterfaceC0210i f4237e;

    public C0209h(Q q7) {
        this.f4237e = q7;
    }

    @Override // J6.InterfaceC0208g
    public final boolean b(Throwable th) {
        Q qI = i();
        if (th instanceof CancellationException) {
            return true;
        }
        return qI.e(th) && qI.m();
    }

    @Override // J6.N
    public final boolean j() {
        return true;
    }

    @Override // J6.N
    public final void k(Throwable th) {
        ((Q) this.f4237e).e(i());
    }
}
