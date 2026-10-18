package androidx.media3.exoplayer.workmanager;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import p027d2.e;
import p027d2.j;
import p027d2.k;
import p027d2.l;
import p117p0.M;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class WorkManagerScheduler$SchedulerWorker extends Worker {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final WorkerParameters f9472L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Context f9473M;

    public WorkManagerScheduler$SchedulerWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f9472L = workerParameters;
        this.f9473M = context;
    }

    @Override // androidx.work.Worker
    public final l doWork() {
        Intent intentRegisterReceiver;
        int intExtra;
        e eVar = this.f9472L.f9770b;
        eVar.getClass();
        Object obj = eVar.f24630a.get("requirements");
        int i8 = 0;
        int iIntValue = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
        if ((iIntValue & 2) != 0) {
            iIntValue |= 1;
        }
        int i9 = iIntValue & 1;
        Context context = this.f9473M;
        if (i9 != 0) {
            Object systemService = context.getSystemService("connectivity");
            systemService.getClass();
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                i8 = iIntValue & 3;
            } else {
                if (Build.VERSION.SDK_INT >= 24) {
                    Network activeNetwork = connectivityManager.getActiveNetwork();
                    if (activeNetwork != null) {
                        try {
                            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
                            if (networkCapabilities == null || !networkCapabilities.hasCapability(16)) {
                            }
                        } catch (SecurityException unused) {
                        }
                    }
                    i8 = iIntValue & 3;
                }
                if ((iIntValue & 2) != 0 && connectivityManager.isActiveNetworkMetered()) {
                    i8 = 2;
                }
            }
        }
        if ((iIntValue & 8) != 0 && ((intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) == null || ((intExtra = intentRegisterReceiver.getIntExtra("status", -1)) != 2 && intExtra != 5))) {
            i8 |= 8;
        }
        if ((iIntValue & 4) != 0) {
            Object systemService2 = context.getSystemService("power");
            systemService2.getClass();
            PowerManager powerManager = (PowerManager) systemService2;
            if (Build.VERSION.SDK_INT < 23 ? powerManager.isInteractive() : !powerManager.isDeviceIdleMode()) {
                i8 |= 4;
            }
        }
        if ((iIntValue & 16) != 0 && context.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) != null) {
            i8 |= 16;
        }
        if (i8 != 0) {
            x.f("WorkManagerScheduler", "Requirements not met: " + i8);
            return new j();
        }
        String strB = eVar.b("service_action");
        strB.getClass();
        String strB2 = eVar.b("service_package");
        strB2.getClass();
        Intent intent = new Intent(strB).setPackage(strB2);
        String str = M.f28050a;
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
        return new k(e.f24629c);
    }
}
