package p113o3;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import com.google.android.gms.internal.ads.AbstractC0760Hf;
import com.google.android.gms.internal.ads.Q7;
import p083k3.l;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public class Q extends P {
    @Override // F2.G
    public final Intent R(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("android.provider.extra.APP_PACKAGE", activity.getPackageName());
        return intent;
    }

    @Override // F2.G
    public final int S(Context context, TelephonyManager telephonyManager) {
        O o4 = l.f25980A.f25983c;
        return (O.a(context, "android.permission.ACCESS_NETWORK_STATE") && telephonyManager.isDataEnabled()) ? 2 : 1;
    }

    @Override // F2.G
    public final void T(Context context) {
        AbstractC0760Hf.q();
        NotificationChannel notificationChannelG = AbstractC0760Hf.g(((Integer) C3099q.f26624d.f26627c.a(Q7.O7)).intValue());
        notificationChannelG.setShowBadge(false);
        ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannelG);
    }

    @Override // F2.G
    public final boolean U(Context context) {
        NotificationChannel notificationChannel = ((NotificationManager) context.getSystemService(NotificationManager.class)).getNotificationChannel("offline_notification_channel");
        return notificationChannel != null && notificationChannel.getImportance() == 0;
    }
}
