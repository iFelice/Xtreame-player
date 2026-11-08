package B0;

import O0.C0288l;
import android.content.Context;
import java.util.Map;
import p117p0.InterfaceC3168f;
import p141s0.C3189n;

/* JADX INFO: renamed from: B0.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0045e implements p190y4.t {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f924G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Context f925H;

    public /* synthetic */ C0045e(Context context, int i8) {
        this.f924G = i8;
        this.f925H = context;
    }

    @Override // p190y4.t
    public final Object get() {
        S0.f fVar;
        switch (this.f924G) {
            case 0:
                return p102n0.c.f(this.f925H);
            case 1:
                return new C0066p(this.f925H);
            case 2:
                new W0.p();
                return new C0288l(new C3189n(this.f925H));
            case 3:
                return new R0.q(this.f925H);
            default:
                Context context = this.f925H;
                z4.d0 d0Var = S0.f.f6329p;
                synchronized (S0.f.class) {
                    try {
                        if (S0.f.f6335v == null) {
                            p117p0.C c8 = new p117p0.C(context, 3);
                            S0.f.f6335v = new S0.f((Context) c8.f28024I, (Map) c8.f28025J, c8.f28022G, (InterfaceC3168f) c8.f28026K, c8.f28023H);
                        }
                        fVar = S0.f.f6335v;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return fVar;
        }
    }
}
