package E1;

import android.media.MediaRouter2;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Messenger;
import android.util.SparseArray;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: E1.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0167b extends AbstractC0177l {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f2706f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final MediaRouter2.RoutingController f2707g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Messenger f2708h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Messenger f2709i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Handler f2711k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C0173h f2715o;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SparseArray f2710j = new SparseArray();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AtomicInteger f2712l = new AtomicInteger(1);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final p000a.b f2713m = new p000a.b(this, 25);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2714n = -1;

    public C0167b(MediaRouter2.RoutingController routingController, String str) {
        Bundle controlHints;
        this.f2707g = routingController;
        this.f2706f = str;
        int i8 = C0171f.f2729r;
        Messenger messenger = (routingController == null || (controlHints = routingController.getControlHints()) == null) ? null : (Messenger) controlHints.getParcelable("androidx.mediarouter.media.KEY_MESSENGER");
        this.f2708h = messenger;
        this.f2709i = messenger != null ? new Messenger(new p064i0.a(this)) : null;
        this.f2711k = new Handler(Looper.getMainLooper());
    }

    @Override // E1.AbstractC0178m
    public final void d() {
        this.f2707g.release();
    }

    @Override // E1.AbstractC0178m
    public final void f(int i8) {
        MediaRouter2.RoutingController routingController = this.f2707g;
        if (routingController == null) {
            return;
        }
        routingController.setVolume(i8);
        this.f2714n = i8;
        Handler handler = this.f2711k;
        p000a.b bVar = this.f2713m;
        handler.removeCallbacks(bVar);
        handler.postDelayed(bVar, 1000L);
    }

    @Override // E1.AbstractC0178m
    public final void i(int i8) {
        MediaRouter2.RoutingController routingController = this.f2707g;
        if (routingController == null) {
            return;
        }
        int volume = this.f2714n;
        if (volume < 0) {
            volume = routingController.getVolume();
        }
        int iMax = Math.max(0, Math.min(volume + i8, routingController.getVolumeMax()));
        this.f2714n = iMax;
        routingController.setVolume(iMax);
        Handler handler = this.f2711k;
        p000a.b bVar = this.f2713m;
        handler.removeCallbacks(bVar);
        handler.postDelayed(bVar, 1000L);
    }
}
