package Z3;

import C2.C0091g;
import android.app.Application;
import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: Z3.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0424f implements W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8316G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final X f8317H;

    public C0424f(C0091g c0091g) {
        this.f8316G = 2;
        this.f8317H = c0091g;
    }

    @Override // Z3.Y
    public final Object zza() {
        int i8 = this.f8316G;
        X x7 = this.f8317H;
        switch (i8) {
            case 0:
                return new C0423e((Application) x7.zza());
            case 1:
                return new C0427i((Application) x7.zza());
            case 2:
                F f8 = G.f8255b;
                Cw.a0(f8);
                return new C0434p(x7, f8);
            default:
                return new C0438u((Application) x7.zza());
        }
    }

    public /* synthetic */ C0424f(O1.J j8, int i8) {
        this.f8316G = i8;
        this.f8317H = j8;
    }
}
