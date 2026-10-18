package Z3;

import android.app.Application;
import android.os.Handler;
import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: loaded from: classes.dex */
public final class h0 implements W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final X f8336G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final X f8337H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final X f8338I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final X f8339J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final X f8340K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final X f8341L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final X f8342M;

    public h0(O1.J j8, X x7, X x8, X x9, e0 e0Var, C0419a c0419a, X x10) {
        this.f8336G = j8;
        this.f8337H = x7;
        this.f8338I = x8;
        this.f8339J = x9;
        this.f8340K = e0Var;
        this.f8341L = c0419a;
        this.f8342M = x10;
    }

    @Override // Z3.Y
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final g0 zza() {
        Application application = (Application) this.f8336G.zza();
        Handler handler = G.f8254a;
        Cw.a0(handler);
        F f8 = G.f8255b;
        Cw.a0(f8);
        return new g0(application, handler, f8, (C0427i) this.f8338I.zza(), (C0434p) this.f8339J.zza(), ((e0) this.f8340K).zza(), ((C0419a) this.f8341L).zza(), (Z) this.f8342M.zza());
    }
}
