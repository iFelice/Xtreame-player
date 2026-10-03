package Z3;

import android.os.Handler;
import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: Z3.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0437t implements W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final X f8385G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final X f8386H;

    public C0437t(X x7, X x8) {
        this.f8385G = x7;
        this.f8386H = x8;
    }

    @Override // Z3.Y
    public final Object zza() {
        C0438u c0438u = (C0438u) this.f8385G.zza();
        Handler handler = G.f8254a;
        Cw.a0(handler);
        return new C0436s(c0438u, handler, ((C0441x) this.f8386H).zza());
    }
}
