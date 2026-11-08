package O0;

import p094m0.d0;
import p094m0.e0;
import p094m0.f0;

/* JADX INFO: loaded from: classes.dex */
public final class M extends AbstractC0290n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5103c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f5104d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M(N n7, Y y7) {
        super(y7);
        this.f5104d = n7;
    }

    @Override // O0.AbstractC0290n, p094m0.f0
    public final d0 g(int i8, d0 d0Var, boolean z7) {
        switch (this.f5103c) {
            case 0:
                super.g(i8, d0Var, z7);
                d0Var.f26830f = true;
                return d0Var;
            default:
                return this.f5221b.g(i8, d0Var, z7);
        }
    }

    @Override // O0.AbstractC0290n, p094m0.f0
    public final e0 n(int i8, e0 e0Var, long j8) {
        switch (this.f5103c) {
            case 0:
                super.n(i8, e0Var, j8);
                e0Var.f26844k = true;
                break;
            default:
                super.n(i8, e0Var, j8);
                p094m0.I i9 = (p094m0.I) this.f5104d;
                e0Var.f26836c = i9;
                p094m0.E e8 = i9.f26702b;
                e0Var.f26835b = e8 != null ? e8.f26681g : null;
                break;
        }
        return e0Var;
    }

    public M(f0 f0Var, p094m0.I i8) {
        super(f0Var);
        this.f5104d = i8;
    }
}
