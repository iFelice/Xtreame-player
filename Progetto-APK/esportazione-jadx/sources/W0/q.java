package W0;

import A0.O;
import java.io.EOFException;
import p094m0.C3136t;
import p094m0.InterfaceC3127j;

/* JADX INFO: loaded from: classes.dex */
public final class q implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f7453a = new byte[4096];

    @Override // W0.L
    public final void a(int i8, int i9, p117p0.E e8) {
        e8.M(i8);
    }

    @Override // W0.L
    public final int c(InterfaceC3127j interfaceC3127j, int i8, boolean z7) throws EOFException {
        byte[] bArr = this.f7453a;
        int iQ = interfaceC3127j.q(bArr, 0, Math.min(bArr.length, i8));
        if (iQ != -1) {
            return iQ;
        }
        if (z7) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // W0.L
    public final /* synthetic */ void e(int i8, p117p0.E e8) {
        O.b(this, e8, i8);
    }

    @Override // W0.L
    public final int f(InterfaceC3127j interfaceC3127j, int i8, boolean z7) {
        return c(interfaceC3127j, i8, z7);
    }

    @Override // W0.L
    public final void b(C3136t c3136t) {
    }

    @Override // W0.L
    public final void d(long j8, int i8, int i9, int i10, K k8) {
    }
}
