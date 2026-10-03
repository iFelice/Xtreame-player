package J6;

/* JADX INFO: loaded from: classes2.dex */
public abstract class D extends AbstractC0214m {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f4201I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f4202J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public p162u6.i f4203K;

    public final void d0() {
        long j8 = this.f4201I - 4294967296L;
        this.f4201I = j8;
        if (j8 <= 0 && this.f4202J) {
            shutdown();
        }
    }

    public abstract Thread e0();

    public final void f0(boolean z7) {
        this.f4201I = (z7 ? 4294967296L : 1L) + this.f4201I;
        if (z7) {
            return;
        }
        this.f4202J = true;
    }

    public final boolean g0() {
        p162u6.i iVar = this.f4203K;
        if (iVar == null) {
            return false;
        }
        AbstractC0224x abstractC0224x = (AbstractC0224x) (iVar.isEmpty() ? null : iVar.removeFirst());
        if (abstractC0224x == null) {
            return false;
        }
        abstractC0224x.run();
        return true;
    }

    public abstract void shutdown();
}
