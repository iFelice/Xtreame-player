package D;

import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.view.MenuItem;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public abstract class r {
    public static Notification.Builder a(Context context, String str) {
        return new Notification.Builder(context, str);
    }

    public static Icon b(Bitmap bitmap) {
        return Icon.createWithAdaptiveBitmap(bitmap);
    }

    public static float c(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHorizontalScrollFactor();
    }

    public static float d(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledVerticalScrollFactor();
    }

    public static Intent e(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i8) {
        return (i8 & 4) != 0 ? context.registerReceiver(broadcastReceiver, intentFilter, U4.a.e(context), null) : context.registerReceiver(broadcastReceiver, intentFilter, null, null, i8 & 1);
    }

    public static Intent f(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i8) {
        return context.registerReceiver(broadcastReceiver, intentFilter, null, null, i8);
    }

    public static void g(MenuItem menuItem, char c8, int i8) {
        menuItem.setAlphabeticShortcut(c8, i8);
    }

    public static void h(Notification.Builder builder) {
        builder.setBadgeIconType(0);
    }

    public static void i(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setContentDescription(charSequence);
    }

    public static void j(Notification.Builder builder) {
        builder.setGroupAlertBehavior(0);
    }

    public static void k(MenuItem menuItem, ColorStateList colorStateList) {
        menuItem.setIconTintList(colorStateList);
    }

    public static void l(MenuItem menuItem, PorterDuff.Mode mode) {
        menuItem.setIconTintMode(mode);
    }

    public static void m(MenuItem menuItem, char c8, int i8) {
        menuItem.setNumericShortcut(c8, i8);
    }

    public static void n(Notification.Builder builder) {
        builder.setSettingsText(null);
    }

    public static void o(Notification.Builder builder) {
        builder.setShortcutId(null);
    }

    public static void p(Notification.Builder builder) {
        builder.setTimeoutAfter(0L);
    }

    public static void q(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setTooltipText(charSequence);
    }

    public static void r(Context context, Intent intent) {
        context.startForegroundService(intent);
    }
}
