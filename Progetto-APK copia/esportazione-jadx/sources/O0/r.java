package O0;

import java.util.Objects;
import p094m0.d0;
import p094m0.e0;
import p094m0.f0;

/* JADX INFO: loaded from: classes.dex */
public final class r extends AbstractC0290n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f5237e = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5238c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f5239d;

    public r(f0 f0Var, Object obj, Object obj2) {
        super(f0Var);
        this.f5238c = obj;
        this.f5239d = obj2;
    }

    @Override // O0.AbstractC0290n, p094m0.f0
    public final int b(Object obj) {
        Object obj2;
        if (f5237e.equals(obj) && (obj2 = this.f5239d) != null) {
            obj = obj2;
        }
        return this.f5221b.b(obj);
    }

    @Override // O0.AbstractC0290n, p094m0.f0
    public final d0 g(int i8, d0 d0Var, boolean z7) {
        this.f5221b.g(i8, d0Var, z7);
        if (Objects.equals(d0Var.f26826b, this.f5239d) && z7) {
            d0Var.f26826b = f5237e;
        }
        return d0Var;
    }

    @Override // O0.AbstractC0290n, p094m0.f0
    public final Object m(int i8) {
        Object objM = this.f5221b.m(i8);
        return Objects.equals(objM, this.f5239d) ? f5237e : objM;
    }

    @Override // O0.AbstractC0290n, p094m0.f0
    public final e0 n(int i8, e0 e0Var, long j8) {
        this.f5221b.n(i8, e0Var, j8);
        if (Objects.equals(e0Var.f26834a, this.f5238c)) {
            e0Var.f26834a = e0.f26832q;
        }
        return e0Var;
    }
}
