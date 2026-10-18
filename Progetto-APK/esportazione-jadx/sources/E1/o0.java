package E1;

import android.media.MediaRouter;

/* JADX INFO: loaded from: classes.dex */
public class o0 extends n0 {
    @Override // E1.n0, E1.m0
    public void o(k0 k0Var, C0172g c0172g) {
        super.o(k0Var, c0172g);
        CharSequence description = k0Var.f2763a.getDescription();
        if (description != null) {
            c0172g.f2741a.putString("status", description.toString());
        }
    }

    @Override // E1.m0
    public void t(MediaRouter.RouteInfo routeInfo) {
        this.f2776j.selectRoute(8388611, routeInfo);
    }

    @Override // E1.m0
    public void u() {
        boolean z7 = this.f2782p;
        MediaRouter.Callback callback = this.f2777k;
        MediaRouter mediaRouter = this.f2776j;
        if (z7) {
            mediaRouter.removeCallback(callback);
        }
        this.f2782p = true;
        mediaRouter.addCallback(this.f2780n, callback, (this.f2781o ? 1 : 0) | 2);
    }

    @Override // E1.m0
    public void w(l0 l0Var) {
        super.w(l0Var);
        l0Var.f2772b.setDescription(l0Var.f2771a.f2631e);
    }

    @Override // E1.n0
    public boolean x(k0 k0Var) {
        return k0Var.f2763a.isConnecting();
    }

    @Override // E1.m0
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public MediaRouter.RouteInfo m() {
        return this.f2776j.getDefaultRoute();
    }
}
