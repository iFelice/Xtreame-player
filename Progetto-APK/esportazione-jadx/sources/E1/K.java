package E1;

import android.media.MediaRouter;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashSet;
import okhttp3.HttpUrl;
import org.videolan.libvlc.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public abstract class K extends MediaRouter.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final J f2657a;

    public K(J j8) {
        this.f2657a = j8;
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        m0 m0Var = (m0) this.f2657a;
        if (m0Var.i(routeInfo)) {
            m0Var.s();
        }
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        int iJ;
        m0 m0Var = (m0) this.f2657a;
        m0Var.getClass();
        if (m0.n(routeInfo) != null || (iJ = m0Var.j(routeInfo)) < 0) {
            return;
        }
        k0 k0Var = (k0) m0Var.f2783q.get(iJ);
        String str = k0Var.f2764b;
        CharSequence name = k0Var.f2763a.getName(m0Var.f2785a);
        C0172g c0172g = new C0172g(str, name != null ? name.toString() : HttpUrl.FRAGMENT_ENCODE_SET);
        m0Var.o(k0Var, c0172g);
        k0Var.f2765c = c0172g.b();
        m0Var.s();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteGrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i8) {
        this.f2657a.getClass();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        int iJ;
        m0 m0Var = (m0) this.f2657a;
        m0Var.getClass();
        if (m0.n(routeInfo) != null || (iJ = m0Var.j(routeInfo)) < 0) {
            return;
        }
        m0Var.f2783q.remove(iJ);
        m0Var.s();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteSelected(MediaRouter mediaRouter, int i8, MediaRouter.RouteInfo routeInfo) {
        F fA;
        m0 m0Var = (m0) this.f2657a;
        if (routeInfo != m0Var.f2776j.getSelectedRoute(8388611)) {
            return;
        }
        l0 l0VarN = m0.n(routeInfo);
        if (l0VarN != null) {
            F f8 = l0VarN.f2771a;
            f8.getClass();
            H.b();
            H.c().k(f8, 3);
            return;
        }
        int iJ = m0Var.j(routeInfo);
        if (iJ >= 0) {
            String str = ((k0) m0Var.f2783q.get(iJ)).f2764b;
            A a8 = (A) m0Var.f2775i;
            a8.f2597n.removeMessages(MediaPlayer.Event.Stopped);
            E e8 = a8.e(a8.f2586c);
            if (e8 == null || (fA = e8.a(str)) == null) {
                return;
            }
            H.b();
            H.c().k(fA, 3);
        }
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteUngrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
        this.f2657a.getClass();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteUnselected(MediaRouter mediaRouter, int i8, MediaRouter.RouteInfo routeInfo) {
        this.f2657a.getClass();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteVolumeChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        int iJ;
        m0 m0Var = (m0) this.f2657a;
        m0Var.getClass();
        if (m0.n(routeInfo) != null || (iJ = m0Var.j(routeInfo)) < 0) {
            return;
        }
        k0 k0Var = (k0) m0Var.f2783q.get(iJ);
        int volume = routeInfo.getVolume();
        if (volume != k0Var.f2765c.f2745a.getInt("volume")) {
            C0173h c0173h = k0Var.f2765c;
            new ArrayList();
            new ArrayList();
            new HashSet();
            if (c0173h == null) {
                throw new IllegalArgumentException("descriptor must not be null");
            }
            Bundle bundle = new Bundle(c0173h.f2745a);
            ArrayList arrayListC = c0173h.c();
            ArrayList arrayListB = c0173h.b();
            HashSet hashSetA = c0173h.a();
            bundle.putInt("volume", volume);
            bundle.putParcelableArrayList("controlFilters", new ArrayList<>(arrayListB));
            bundle.putStringArrayList("groupMemberIds", new ArrayList<>(arrayListC));
            bundle.putStringArrayList("allowedPackages", new ArrayList<>(hashSetA));
            k0Var.f2765c = new C0173h(bundle);
            m0Var.s();
        }
    }
}
