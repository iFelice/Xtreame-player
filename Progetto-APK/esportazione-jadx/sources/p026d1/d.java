package p026d1;

import W0.E;
import W0.F;
import W0.G;
import W0.z;

/* JADX INFO: loaded from: classes.dex */
public final class d extends z {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ F f24600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f24601c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar, F f8, F f9) {
        super(f8);
        this.f24601c = eVar;
        this.f24600b = f9;
    }

    @Override // W0.z, W0.F
    public final E k(long j8) {
        E eK = this.f24600b.k(j8);
        G g8 = eK.f7324a;
        long j9 = g8.f7327a;
        long j10 = g8.f7328b;
        long j11 = this.f24601c.f24602G;
        G g9 = new G(j9, j10 + j11);
        G g10 = eK.f7325b;
        return new E(g9, new G(g10.f7327a, g10.f7328b + j11));
    }
}
