package Z3;

import android.app.Application;
import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: Z3.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0426h implements W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final X f8333G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final X f8334H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final X f8335I;

    public C0426h(O1.J j8, X x7, X x8) {
        this.f8333G = j8;
        this.f8334H = x7;
        this.f8335I = x8;
    }

    @Override // Z3.Y
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0425g zza() {
        Application application = (Application) this.f8333G.zza();
        C0427i c0427i = (C0427i) this.f8334H.zza();
        c0 c0Var = (c0) this.f8335I.zza();
        F f8 = G.f8255b;
        Cw.a0(f8);
        return new C0425g(application, c0427i, c0Var, f8);
    }
}
