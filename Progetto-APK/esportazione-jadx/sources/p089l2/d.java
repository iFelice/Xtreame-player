package p089l2;

import android.app.Notification;
import android.app.Service;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static void a(Service service, int i8, Notification notification, int i9) {
        service.startForeground(i8, notification, i9);
    }
}
