package E1;

import android.media.MediaRouter;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class P extends K {
    @Override // android.media.MediaRouter.Callback
    public final void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        Display presentationDisplay;
        n0 n0Var = (n0) ((O) this.f2657a);
        int iJ = n0Var.j(routeInfo);
        if (iJ >= 0) {
            k0 k0Var = (k0) n0Var.f2783q.get(iJ);
            try {
                presentationDisplay = routeInfo.getPresentationDisplay();
            } catch (NoSuchMethodError e8) {
                Log.w("MediaRouterJellybeanMr1", "Cannot get presentation display for the route.", e8);
                presentationDisplay = null;
            }
            int displayId = presentationDisplay != null ? presentationDisplay.getDisplayId() : -1;
            if (displayId != k0Var.f2765c.f2745a.getInt("presentationDisplayId", -1)) {
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
                bundle.putInt("presentationDisplayId", displayId);
                bundle.putParcelableArrayList("controlFilters", new ArrayList<>(arrayListB));
                bundle.putStringArrayList("groupMemberIds", new ArrayList<>(arrayListC));
                bundle.putStringArrayList("allowedPackages", new ArrayList<>(hashSetA));
                k0Var.f2765c = new C0173h(bundle);
                n0Var.s();
            }
        }
    }
}
