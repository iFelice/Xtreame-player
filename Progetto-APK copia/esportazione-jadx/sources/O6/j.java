package O6;

import J6.r;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends i {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Runnable f5678I;

    public j(Runnable runnable, long j8, boolean z7) {
        super(j8, z7);
        this.f5678I = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5678I.run();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f5678I;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(r.i(runnable));
        sb.append(", ");
        sb.append(this.f5676G);
        sb.append(", ");
        sb.append(this.f5677H ? "Blocking" : "Non-blocking");
        sb.append(']');
        return sb.toString();
    }
}
