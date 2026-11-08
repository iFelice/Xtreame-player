package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Cp implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12696G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Mp f12697H;

    public /* synthetic */ Cp(Mp mp, int i8) {
        this.f12696G = i8;
        this.f12697H = mp;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f12696G;
        Mp mp = this.f12697H;
        switch (i8) {
            case 0:
                mp.b();
                break;
            default:
                mp.b();
                break;
        }
    }
}
