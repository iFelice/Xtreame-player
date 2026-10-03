package N;

import D0.AbstractC0111a;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public class Y extends a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets.Builder f4874a;

    public Y() {
        this.f4874a = AbstractC0111a.e();
    }

    @Override // N.a0
    public i0 b() {
        a();
        i0 i0VarH = i0.h(this.f4874a.build(), null);
        i0VarH.f4901a.k(null);
        return i0VarH;
    }

    @Override // N.a0
    public void c(G.b bVar) {
        this.f4874a.setStableInsets(bVar.b());
    }

    @Override // N.a0
    public void d(G.b bVar) {
        this.f4874a.setSystemWindowInsets(bVar.b());
    }

    public Y(i0 i0Var) {
        WindowInsets.Builder builderE;
        super(i0Var);
        WindowInsets windowInsetsG = i0Var.g();
        if (windowInsetsG != null) {
            builderE = AbstractC0111a.f(windowInsetsG);
        } else {
            builderE = AbstractC0111a.e();
        }
        this.f4874a = builderE;
    }
}
