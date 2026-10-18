package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1698mz implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20028G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1854pz f20029H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Runnable f20030I;

    public /* synthetic */ RunnableC1698mz(C1854pz c1854pz, Runnable runnable, int i8) {
        this.f20028G = i8;
        this.f20029H = c1854pz;
        this.f20030I = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f20028G) {
            case 0:
                Runnable runnable = this.f20030I;
                C1854pz c1854pz = this.f20029H;
                c1854pz.getClass();
                try {
                    runnable.run();
                    return;
                } catch (RuntimeException e8) {
                    c1854pz.f20510c.b("error caused by ", e8);
                    return;
                }
            default:
                C1854pz c1854pz2 = this.f20029H;
                Runnable runnable2 = this.f20030I;
                if (c1854pz2.f20517j != null || c1854pz2.f20513f) {
                    if (!c1854pz2.f20513f) {
                        runnable2.run();
                        return;
                    }
                    c1854pz2.f20510c.d("Waiting to bind to the service.", new Object[0]);
                    synchronized (c1854pz2.f20512e) {
                        c1854pz2.f20512e.add(runnable2);
                        break;
                    }
                    return;
                }
                c1854pz2.f20510c.d("Initiate binding to the service.", new Object[0]);
                synchronized (c1854pz2.f20512e) {
                    c1854pz2.f20512e.add(runnable2);
                    break;
                }
                ServiceConnectionC1802oz serviceConnectionC1802oz = new ServiceConnectionC1802oz(c1854pz2);
                c1854pz2.f20516i = serviceConnectionC1802oz;
                c1854pz2.f20513f = true;
                if (c1854pz2.f20509b.bindService(c1854pz2.f20514g, serviceConnectionC1802oz, 1)) {
                    return;
                }
                c1854pz2.f20510c.d("Failed to bind to the service.", new Object[0]);
                c1854pz2.f20513f = false;
                synchronized (c1854pz2.f20512e) {
                    c1854pz2.f20512e.clear();
                    break;
                }
                return;
        }
    }
}
