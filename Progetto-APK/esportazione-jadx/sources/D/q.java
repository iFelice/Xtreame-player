package D;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.res.Configuration;
import android.icu.text.DecimalFormatSymbols;
import android.os.LocaleList;
import android.view.PointerIcon;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {
    public static boolean a(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static LocaleList b(Locale... localeArr) {
        return new LocaleList(localeArr);
    }

    public static DecimalFormatSymbols c(Locale locale) {
        return DecimalFormatSymbols.getInstance(locale);
    }

    public static LocaleList d(Configuration configuration) {
        return configuration.getLocales();
    }

    public static PointerIcon e(Context context) {
        return PointerIcon.getSystemIcon(context, 1002);
    }

    public static void f(Notification.Action.Builder builder, boolean z7) {
        builder.setAllowGeneratedReplies(z7);
    }

    public static void g(Notification.Builder builder) {
        builder.setRemoteInputHistory(null);
    }
}
