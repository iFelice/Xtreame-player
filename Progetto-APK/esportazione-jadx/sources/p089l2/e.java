package p089l2;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.Service;
import android.util.Log;
import androidx.work.impl.foreground.SystemForegroundService;
import p027d2.n;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    public static void a(Service service, int i8, Notification notification, int i9) {
        try {
            service.startForeground(i8, notification, i9);
        } catch (ForegroundServiceStartNotAllowedException e8) {
            n nVarD = n.d();
            String str = SystemForegroundService.f9796L;
            if (nVarD.f24643a <= 5) {
                Log.w(str, "Unable to start foreground service", e8);
            }
        }
    }
}
