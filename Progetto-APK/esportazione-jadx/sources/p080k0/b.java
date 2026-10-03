package p080k0;

import android.app.Notification;
import android.app.PendingIntent;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static Notification.MediaStyle a(Notification.MediaStyle mediaStyle, CharSequence charSequence, int i8, PendingIntent pendingIntent, Boolean bool) {
        if (bool.booleanValue()) {
            mediaStyle.setRemotePlaybackInfo(charSequence, i8, pendingIntent);
        }
        return mediaStyle;
    }
}
