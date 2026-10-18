package J3;

import A0.O;
import E1.b0;
import K3.InterfaceC0235h;
import K3.W;
import Y.AbstractActivityC0409v;
import Y.K;
import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.graphics.drawable.IconCompat;
import com.google.android.gms.common.internal.AbstractC0646w;
import com.google.android.gms.common.internal.AbstractDialogInterfaceOnClickListenerC0649z;
import com.google.android.gms.common.internal.C0647x;
import com.google.android.gms.common.internal.C0648y;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class e extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f4142c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e f4143d = new e();

    public static AlertDialog f(Context context, int i8, AbstractDialogInterfaceOnClickListenerC0649z abstractDialogInterfaceOnClickListenerC0649z, DialogInterface.OnCancelListener onCancelListener) {
        String string;
        if (i8 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(AbstractC0646w.b(context, i8));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Resources resources = context.getResources();
        if (i8 == 1) {
            string = resources.getString(pe.hf.black20.R.string.common_google_play_services_install_button);
        } else if (i8 != 2) {
            string = i8 != 3 ? resources.getString(R.string.ok) : resources.getString(pe.hf.black20.R.string.common_google_play_services_enable_button);
        } else {
            string = resources.getString(pe.hf.black20.R.string.common_google_play_services_update_button);
        }
        if (string != null) {
            builder.setPositiveButton(string, abstractDialogInterfaceOnClickListenerC0649z);
        }
        String strC = AbstractC0646w.c(context, i8);
        if (strC != null) {
            builder.setTitle(strC);
        }
        Log.w("GoogleApiAvailability", p000a.r.f("Creating dialog for Google Play services availability issue. ConnectionResult=", i8), new IllegalArgumentException());
        return builder.create();
    }

    public static void g(Activity activity, AlertDialog alertDialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof AbstractActivityC0409v) {
                K kR = ((AbstractActivityC0409v) activity).f7985X.R();
                l lVar = new l();
                com.bumptech.glide.c.i(alertDialog, "Cannot display null dialog");
                alertDialog.setOnCancelListener(null);
                alertDialog.setOnDismissListener(null);
                lVar.f4154S0 = alertDialog;
                if (onCancelListener != null) {
                    lVar.f4155T0 = onCancelListener;
                }
                lVar.U(kR, str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        c cVar = new c();
        com.bumptech.glide.c.i(alertDialog, "Cannot display null dialog");
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        cVar.f4136G = alertDialog;
        if (onCancelListener != null) {
            cVar.f4137H = onCancelListener;
        }
        cVar.show(fragmentManager, str);
    }

    @Override // J3.f
    public final Intent b(int i8, Context context, String str) {
        return super.b(i8, context, str);
    }

    @Override // J3.f
    public final int c(Context context, int i8) {
        return super.c(context, i8);
    }

    public final void e(Activity activity, int i8, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialogF = f(activity, i8, new C0647x(activity, super.b(i8, activity, "d")), onCancelListener);
        if (alertDialogF == null) {
            return;
        }
        g(activity, alertDialogF, "GooglePlayServicesErrorDialog", onCancelListener);
    }

    public final void h(Context context, int i8, PendingIntent pendingIntent) {
        D.o oVar;
        NotificationManager notificationManager;
        int i9;
        Log.w("GoogleApiAvailability", O.y("GMS core API Availability. ConnectionResult=", i8, ", tag=null"), new IllegalArgumentException());
        if (i8 == 18) {
            new m(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i8 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strE = i8 == 6 ? AbstractC0646w.e(context, "common_google_play_services_resolution_required_title") : AbstractC0646w.c(context, i8);
        if (strE == null) {
            strE = context.getResources().getString(pe.hf.black20.R.string.common_google_play_services_notification_ticker);
        }
        String strD = (i8 == 6 || i8 == 19) ? AbstractC0646w.d(context, "common_google_play_services_resolution_required_text", AbstractC0646w.a(context)) : AbstractC0646w.b(context, i8);
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        com.bumptech.glide.c.h(systemService);
        NotificationManager notificationManager2 = (NotificationManager) systemService;
        D.o oVar2 = new D.o(context, null);
        oVar2.f1721l = true;
        oVar2.c(16);
        oVar2.f1714e = D.o.b(strE);
        D.n nVar = new D.n();
        nVar.f1709b = D.o.b(strD);
        oVar2.e(nVar);
        PackageManager packageManager = context.getPackageManager();
        if (AbstractC2987b.f25029G == null) {
            AbstractC2987b.f25029G = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (AbstractC2987b.f25029G.booleanValue()) {
            oVar2.f1726q.icon = context.getApplicationInfo().icon;
            oVar2.f1718i = 2;
            if (AbstractC2987b.v(context)) {
                oVar2.f1711b.add(new D.j(IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, pe.hf.black20.R.drawable.common_full_open_on_phone), resources.getString(pe.hf.black20.R.string.common_open_on_phone), pendingIntent, new Bundle(), null, null, true, 0, true, false, false));
                oVar = oVar2;
            } else {
                oVar = oVar2;
                oVar.f1716g = pendingIntent;
            }
        } else {
            oVar = oVar2;
            oVar.f1726q.icon = R.drawable.stat_sys_warning;
            oVar.f1726q.tickerText = D.o.b(resources.getString(pe.hf.black20.R.string.common_google_play_services_notification_ticker));
            oVar.f1726q.when = System.currentTimeMillis();
            oVar.f1716g = pendingIntent;
            oVar.f1715f = D.o.b(strD);
        }
        if (U2.m.a()) {
            com.bumptech.glide.c.k(U2.m.a());
            synchronized (f4142c) {
            }
            NotificationChannel notificationChannel = notificationManager2.getNotificationChannel("com.google.android.gms.availability");
            String string = context.getResources().getString(pe.hf.black20.R.string.common_google_play_services_notification_channel_name);
            if (notificationChannel == null) {
                notificationManager = notificationManager2;
                notificationManager.createNotificationChannel(b0.A(string));
            } else {
                notificationManager = notificationManager2;
                if (!string.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(string);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            oVar.f1724o = "com.google.android.gms.availability";
        } else {
            notificationManager = notificationManager2;
        }
        Notification notificationA = oVar.a();
        if (i8 == 1 || i8 == 2 || i8 == 3) {
            j.f4147a.set(false);
            i9 = 10436;
        } else {
            i9 = 39789;
        }
        notificationManager.notify(i9, notificationA);
    }

    public final void i(Activity activity, InterfaceC0235h interfaceC0235h, int i8, W w7) {
        AlertDialog alertDialogF = f(activity, i8, new C0648y(super.b(i8, activity, "d"), interfaceC0235h), w7);
        if (alertDialogF == null) {
            return;
        }
        g(activity, alertDialogF, "GooglePlayServicesErrorDialog", w7);
    }
}
