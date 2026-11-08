package J6;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public final class L extends Q {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f4209I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L(J j8) {
        super(true);
        boolean z7 = true;
        q(j8);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = Q.f4220H;
        InterfaceC0208g interfaceC0208g = (InterfaceC0208g) atomicReferenceFieldUpdater.get(this);
        C0209h c0209h = interfaceC0208g instanceof C0209h ? (C0209h) interfaceC0208g : null;
        if (c0209h == null) {
            z7 = false;
            break;
        }
        Q qI = c0209h.i();
        while (!qI.m()) {
            InterfaceC0208g interfaceC0208g2 = (InterfaceC0208g) atomicReferenceFieldUpdater.get(qI);
            C0209h c0209h2 = interfaceC0208g2 instanceof C0209h ? (C0209h) interfaceC0208g2 : null;
            if (c0209h2 == null) {
                z7 = false;
                break;
            }
            qI = c0209h2.i();
        }
        this.f4209I = z7;
    }

    @Override // J6.Q
    public final boolean m() {
        return this.f4209I;
    }
}
