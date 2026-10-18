package V2;

import K3.C0234g;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class g implements W2.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p147s6.a f7103G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p147s6.a f7104H;

    public g(C0234g c0234g, e eVar) {
        this.f7103G = c0234g;
        this.f7104H = eVar;
    }

    @Override // p147s6.a
    public final Object get() {
        return new f((Context) this.f7103G.get(), (d) this.f7104H.get());
    }
}
