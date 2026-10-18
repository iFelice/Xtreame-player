package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import p027d2.n;
import p034e2.y;
import p050g2.c;

/* JADX INFO: loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f9787a = n.f("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        n.d().a(f9787a, "Received intent " + intent);
        if (Build.VERSION.SDK_INT < 23) {
            String str = c.f25306K;
            Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent2.setAction("ACTION_RESCHEDULE");
            context.startService(intent2);
            return;
        }
        try {
            y yVarW = y.w(context);
            BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            synchronized (y.f24841m) {
                try {
                    BroadcastReceiver.PendingResult pendingResult = yVarW.f24850i;
                    if (pendingResult != null) {
                        pendingResult.finish();
                    }
                    yVarW.f24850i = pendingResultGoAsync;
                    if (yVarW.f24849h) {
                        pendingResultGoAsync.finish();
                        yVarW.f24850i = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (IllegalStateException e8) {
            n.d().c(f9787a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e8);
        }
    }
}
