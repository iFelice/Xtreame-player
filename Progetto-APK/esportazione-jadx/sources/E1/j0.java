package E1;

import android.media.MediaRouter;

/* JADX INFO: loaded from: classes.dex */
public final class j0 extends AbstractC0178m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2759a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2760b;

    public j0(MediaRouter.RouteInfo routeInfo) {
        this.f2760b = routeInfo;
    }

    @Override // E1.AbstractC0178m
    public final void f(int i8) {
        int i9 = this.f2759a;
        Object obj = this.f2760b;
        switch (i9) {
            case 0:
                ((MediaRouter.RouteInfo) obj).requestSetVolume(i8);
                return;
            default:
                A0.O.I(obj);
                throw null;
        }
    }

    @Override // E1.AbstractC0178m
    public final void i(int i8) {
        int i9 = this.f2759a;
        Object obj = this.f2760b;
        switch (i9) {
            case 0:
                ((MediaRouter.RouteInfo) obj).requestUpdateVolume(i8);
                return;
            default:
                A0.O.I(obj);
                throw null;
        }
    }
}
