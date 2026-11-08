package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2334zB implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final GB f22136G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final D4.b f22137H;

    public RunnableC2334zB(GB gb, D4.b bVar) {
        this.f22136G = gb;
        this.f22137H = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f22136G.f13489G != this) {
            return;
        }
        D4.b bVar = this.f22137H;
        if (GB.f13487L.W(this.f22136G, this, GB.h(bVar))) {
            GB.o(this.f22136G, false);
        }
    }
}
