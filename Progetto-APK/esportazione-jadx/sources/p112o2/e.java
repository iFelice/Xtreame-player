package p112o2;

import D4.b;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final h f27855G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final b f27856H;

    public e(h hVar, b bVar) {
        this.f27855G = hVar;
        this.f27856H = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f27855G.f27864G != this) {
            return;
        }
        if (h.f27862L.l(this.f27855G, this, h.f(this.f27856H))) {
            h.c(this.f27855G);
        }
    }
}
