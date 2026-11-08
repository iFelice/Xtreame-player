package J;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f4046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4047c;

    public final void a(b bVar) {
        synchronized (this) {
            while (this.f4047c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f4046b == bVar) {
                return;
            }
            this.f4046b = bVar;
            if (this.f4045a) {
                bVar.e();
            }
        }
    }
}
