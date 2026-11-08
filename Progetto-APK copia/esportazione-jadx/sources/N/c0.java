package N;

import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public class c0 extends b0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public G.b f4888k;

    public c0(i0 i0Var, WindowInsets windowInsets) {
        super(i0Var, windowInsets);
        this.f4888k = null;
    }

    @Override // N.h0
    public i0 b() {
        return i0.h(this.f4884c.consumeStableInsets(), null);
    }

    @Override // N.h0
    public i0 c() {
        return i0.h(this.f4884c.consumeSystemWindowInsets(), null);
    }

    @Override // N.h0
    public final G.b f() {
        if (this.f4888k == null) {
            WindowInsets windowInsets = this.f4884c;
            this.f4888k = G.b.a(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f4888k;
    }

    @Override // N.h0
    public boolean i() {
        return this.f4884c.isConsumed();
    }

    @Override // N.h0
    public void m(G.b bVar) {
        this.f4888k = bVar;
    }
}
