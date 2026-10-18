package J6;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public final class I extends N {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f4206f = AtomicIntegerFieldUpdater.newUpdater(I.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C6.l f4207e;

    public I(M m7) {
        this.f4207e = m7;
    }

    @Override // J6.N
    public final boolean j() {
        return true;
    }

    @Override // J6.N
    public final void k(Throwable th) {
        if (f4206f.compareAndSet(this, 0, 1)) {
            this.f4207e.invoke(th);
        }
    }
}
