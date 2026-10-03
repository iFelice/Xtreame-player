package com.google.android.gms.internal.ads;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class Nx implements Ix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Nx f15105d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f15106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Dx f15107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Hx f15108c;

    public static Nx a() {
        if (f15105d == null) {
            Nx nx = new Nx();
            nx.f15106a = 0.0f;
            f15105d = nx;
        }
        return f15105d;
    }

    @Override // com.google.android.gms.internal.ads.Ix
    public final void zzc(boolean z7) {
        if (z7) {
            Vx.f17129g.getClass();
            Vx.b();
            return;
        }
        Vx.f17129g.getClass();
        Handler handler = Vx.f17131i;
        if (handler != null) {
            handler.removeCallbacks(Vx.f17133k);
            Vx.f17131i = null;
        }
    }
}
