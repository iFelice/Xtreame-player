package p050g2;

import android.app.AlarmManager;
import android.app.PendingIntent;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static void a(AlarmManager alarmManager, int i8, long j8, PendingIntent pendingIntent) {
        alarmManager.setExact(i8, j8, pendingIntent);
    }
}
