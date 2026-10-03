package E1;

import android.media.MediaRouter;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;

/* JADX INFO: loaded from: classes.dex */
public abstract class n0 extends m0 implements O {
    @Override // E1.m0
    public void o(k0 k0Var, C0172g c0172g) {
        Display presentationDisplay;
        super.o(k0Var, c0172g);
        MediaRouter.RouteInfo routeInfo = k0Var.f2763a;
        boolean zIsEnabled = routeInfo.isEnabled();
        Bundle bundle = c0172g.f2741a;
        if (!zIsEnabled) {
            bundle.putBoolean("enabled", false);
        }
        if (x(k0Var)) {
            bundle.putInt("connectionState", 1);
        }
        try {
            presentationDisplay = routeInfo.getPresentationDisplay();
        } catch (NoSuchMethodError e8) {
            Log.w("MediaRouterJellybeanMr1", "Cannot get presentation display for the route.", e8);
            presentationDisplay = null;
        }
        if (presentationDisplay != null) {
            bundle.putInt("presentationDisplayId", presentationDisplay.getDisplayId());
        }
    }

    public abstract boolean x(k0 k0Var);
}
