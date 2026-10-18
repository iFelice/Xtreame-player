package S0;

import O0.C0292p;
import android.net.Uri;
import p141s0.C3186k;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p141s0.M;

/* JADX INFO: loaded from: classes.dex */
public final class p implements j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f6369G = C0292p.f5227c.getAndIncrement();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C3188m f6370H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f6371I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final M f6372J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final o f6373K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public volatile Object f6374L;

    public p(InterfaceC3184i interfaceC3184i, C3188m c3188m, int i8, o oVar) {
        this.f6372J = new M(interfaceC3184i);
        this.f6370H = c3188m;
        this.f6371I = i8;
        this.f6373K = oVar;
    }

    @Override // S0.j
    public final void p() {
        this.f6372J.f29909b = 0L;
        C3186k c3186k = new C3186k(this.f6372J, this.f6370H);
        try {
            c3186k.k();
            Uri uri = this.f6372J.f29908a.getUri();
            uri.getClass();
            this.f6374L = this.f6373K.B(uri, c3186k);
        } finally {
            p117p0.M.g(c3186k);
        }
    }

    @Override // S0.j
    public final void I() {
    }
}
