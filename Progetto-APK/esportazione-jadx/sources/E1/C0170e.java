package E1;

import B0.AbstractC0068s;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: E1.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0170e extends MediaRouter2.TransferCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0171f f2720a;

    public C0170e(C0171f c0171f) {
        this.f2720a = c0171f;
    }

    @Override // android.media.MediaRouter2.TransferCallback
    public final void onStop(MediaRouter2.RoutingController routingController) {
        AbstractC0178m abstractC0178m = (AbstractC0178m) this.f2720a.f2732k.remove(routingController);
        if (abstractC0178m == null) {
            Log.w("MR2Provider", "onStop: No matching routeController found. routingController=" + routingController);
            return;
        }
        A a8 = this.f2720a.f2731j.f2806a;
        if (abstractC0178m != a8.f2604u) {
            A a9 = H.f2649c;
            return;
        }
        F fC = a8.c();
        if (a8.f() != fC) {
            a8.l(fC, 2);
        }
    }

    @Override // android.media.MediaRouter2.TransferCallback
    public final void onTransfer(MediaRouter2.RoutingController routingController, MediaRouter2.RoutingController routingController2) {
        F f8;
        this.f2720a.f2732k.remove(routingController);
        if (routingController2 == this.f2720a.f2730i.getSystemController()) {
            A a8 = this.f2720a.f2731j.f2806a;
            F fC = a8.c();
            if (a8.f() != fC) {
                a8.l(fC, 3);
                return;
            }
            return;
        }
        List selectedRoutes = routingController2.getSelectedRoutes();
        if (selectedRoutes.isEmpty()) {
            Log.w("MR2Provider", "Selected routes are empty. This shouldn't happen.");
            return;
        }
        String id = AbstractC0068s.b(selectedRoutes.get(0)).getId();
        this.f2720a.f2732k.put(routingController2, new C0167b(routingController2, id));
        A a9 = this.f2720a.f2731j.f2806a;
        Iterator it = a9.f2591h.iterator();
        while (true) {
            if (!it.hasNext()) {
                f8 = null;
                break;
            }
            f8 = (F) it.next();
            if (f8.a() == a9.f2589f && TextUtils.equals(id, f8.f2628b)) {
                break;
            }
        }
        if (f8 == null) {
            Log.w("MediaRouter", "onSelectRoute: The target RouteInfo is not found for descriptorId=" + id);
        } else {
            a9.l(f8, 3);
        }
        this.f2720a.j(routingController2);
    }

    @Override // android.media.MediaRouter2.TransferCallback
    public final void onTransferFailure(MediaRoute2Info mediaRoute2Info) {
        Log.w("MR2Provider", "Transfer failed. requestedRoute=" + mediaRoute2Info);
    }
}
