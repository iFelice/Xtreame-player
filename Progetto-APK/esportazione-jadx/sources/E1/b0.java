package E1;

import android.app.NotificationChannel;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class b0 {
    public static /* synthetic */ NotificationChannel A(String str) {
        return new NotificationChannel("com.google.android.gms.availability", str, 4);
    }

    public static /* synthetic */ NotificationChannel b(String str) {
        return new NotificationChannel("cast_media_notification", str, 2);
    }
}
