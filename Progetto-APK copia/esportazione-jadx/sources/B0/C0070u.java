package B0;

import E1.C0171f;
import android.media.MediaRouter2;

/* JADX INFO: renamed from: B0.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0070u extends MediaRouter2.ControllerCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1077b;

    public /* synthetic */ C0070u(Object obj, int i8) {
        this.f1076a = i8;
        this.f1077b = obj;
    }

    @Override // android.media.MediaRouter2.ControllerCallback
    public final void onControllerUpdated(MediaRouter2.RoutingController routingController) {
        switch (this.f1076a) {
            case 0:
                C0071v c0071v = (C0071v) this.f1077b;
                c0071v.getClass();
                c0071v.getClass();
                C0071v.a(null);
                throw null;
            default:
                ((C0171f) this.f1077b).j(routingController);
                return;
        }
    }
}
