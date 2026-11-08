package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Xr implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17521G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Yr f17522H;

    public /* synthetic */ Xr(Yr yr, int i8) {
        this.f17521G = i8;
        this.f17522H = yr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17521G) {
            case 0:
                Yr yr = this.f17522H;
                synchronized (yr) {
                    yr.f17656b.clear();
                    yr.f17655a.clear();
                    yr.f17659e.clear();
                    yr.f17658d.clear();
                    yr.i();
                    yr.j();
                    yr.g();
                }
                return;
            default:
                Yr yr2 = this.f17522H;
                yr2.getClass();
                yr2.f17660f.execute(new Xr(yr2, 0));
                return;
        }
    }
}
