package com.google.android.gms.measurement;

import K3.V;
import android.app.Service;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.U1;
import p021c4.A1;
import p021c4.BinderC0608r0;
import p021c4.C0597l0;
import p021c4.InterfaceC0583g1;
import p021c4.T;
import p025d0.a;
import p086l.Y;

/* JADX INFO: loaded from: classes.dex */
public final class AppMeasurementService extends Service implements InterfaceC0583g1 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public U1 f24098G;

    @Override // p021c4.InterfaceC0583g1
    public final boolean C(int i8) {
        return stopSelfResult(i8);
    }

    @Override // p021c4.InterfaceC0583g1
    public final void a(Intent intent) {
        SparseArray sparseArray = a.f24583G;
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return;
        }
        SparseArray sparseArray2 = a.f24583G;
        synchronized (sparseArray2) {
            try {
                PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) sparseArray2.get(intExtra);
                if (wakeLock != null) {
                    wakeLock.release();
                    sparseArray2.remove(intExtra);
                } else {
                    Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p021c4.InterfaceC0583g1
    public final void b(JobParameters jobParameters) {
        throw new UnsupportedOperationException();
    }

    public final U1 c() {
        if (this.f24098G == null) {
            U1 u7 = new U1();
            u7.f23010G = this;
            this.f24098G = u7;
        }
        return this.f24098G;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        U1 u1C = c();
        u1C.getClass();
        if (intent == null) {
            Log.e("FA", "onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new BinderC0608r0(A1.j0(u1C.f23010G));
        }
        Log.w("FA", "onBind received unknown action: ".concat(String.valueOf(action)));
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Log.v("FA", c().f23010G.getClass().getSimpleName().concat(" is starting up."));
    }

    @Override // android.app.Service
    public final void onDestroy() {
        Log.v("FA", c().f23010G.getClass().getSimpleName().concat(" is shutting down."));
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        c();
        if (intent == null) {
            Log.e("FA", "onRebind called with null intent");
        } else {
            Log.v("FA", "onRebind called. action: ".concat(String.valueOf(intent.getAction())));
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i8, int i9) {
        U1 u1C = c();
        if (intent == null) {
            u1C.getClass();
            Log.w("FA", "AppMeasurementService started with null intent");
            return 2;
        }
        Context context = u1C.f23010G;
        T t7 = C0597l0.q(context, null, null).f11258O;
        C0597l0.k(t7);
        String action = intent.getAction();
        t7.f11047T.c(Integer.valueOf(i9), action, "Local AppMeasurementService called. startId, action");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        Y y7 = new Y(u1C, i9, t7, intent);
        A1 a1J0 = A1.j0(context);
        a1J0.d().x(new V(a1J0, y7));
        return 2;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        c();
        if (intent == null) {
            Log.e("FA", "onUnbind called with null intent");
            return true;
        }
        Log.v("FA", "onUnbind called for intent. action: ".concat(String.valueOf(intent.getAction())));
        return true;
    }
}
