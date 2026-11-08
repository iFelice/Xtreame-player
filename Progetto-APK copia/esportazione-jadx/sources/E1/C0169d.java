package E1;

import android.media.MediaRouter2;
import java.util.List;

/* JADX INFO: renamed from: E1.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0169d extends MediaRouter2.RouteCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2719b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0169d(C0171f c0171f) {
        this(c0171f, 1);
        this.f2718a = 1;
    }

    @Override // android.media.MediaRouter2.RouteCallback
    public final void onRoutesAdded(List list) {
        switch (this.f2718a) {
            case 0:
                ((C0171f) this.f2719b).i();
                break;
            default:
                super.onRoutesAdded(list);
                break;
        }
    }

    @Override // android.media.MediaRouter2.RouteCallback
    public final void onRoutesChanged(List list) {
        switch (this.f2718a) {
            case 0:
                ((C0171f) this.f2719b).i();
                break;
            default:
                super.onRoutesChanged(list);
                break;
        }
    }

    @Override // android.media.MediaRouter2.RouteCallback
    public final void onRoutesRemoved(List list) {
        switch (this.f2718a) {
            case 0:
                ((C0171f) this.f2719b).i();
                break;
            default:
                super.onRoutesRemoved(list);
                break;
        }
    }

    @Override // android.media.MediaRouter2.RouteCallback
    public final void onRoutesUpdated(List list) {
        switch (this.f2718a) {
            case 1:
                ((C0171f) this.f2719b).i();
                break;
            default:
                super.onRoutesUpdated(list);
                break;
        }
    }

    public /* synthetic */ C0169d(Object obj, int i8) {
        this.f2718a = i8;
        this.f2719b = obj;
    }
}
