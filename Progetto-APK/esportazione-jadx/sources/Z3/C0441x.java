package Z3;

import android.app.Application;
import android.os.Handler;
import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: Z3.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0441x implements W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final X f8400G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final X f8401H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final X f8402I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final X f8403J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final X f8404K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final X f8405L;

    public C0441x(O1.J j8, X x7, X x8, C0426h c0426h, X x9, X x10) {
        this.f8400G = j8;
        this.f8401H = x7;
        this.f8402I = x8;
        this.f8403J = c0426h;
        this.f8404K = x9;
        this.f8405L = x10;
    }

    @Override // Z3.Y
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0440w zza() {
        Application application = (Application) this.f8400G.zza();
        C0438u c0438u = (C0438u) this.f8401H.zza();
        Handler handler = G.f8254a;
        Cw.a0(handler);
        F f8 = G.f8255b;
        Cw.a0(f8);
        return new C0440w(application, c0438u, handler, f8, (Z) this.f8402I.zza(), ((C0426h) this.f8403J).zza(), (C0430l) this.f8404K.zza(), (C0427i) this.f8405L.zza());
    }
}
