package E1;

import android.media.MediaRouter;

/* JADX INFO: loaded from: classes.dex */
public final class M extends MediaRouter.VolumeCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final L f2658a;

    public M(L l4) {
        this.f2658a = l4;
    }

    @Override // android.media.MediaRouter.VolumeCallback
    public final void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i8) {
        this.f2658a.a(routeInfo, i8);
    }

    @Override // android.media.MediaRouter.VolumeCallback
    public final void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i8) {
        this.f2658a.b(routeInfo, i8);
    }
}
