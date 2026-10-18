package com.google.android.gms.measurement;

import Z3.C0433o;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
import p021c4.C0597l0;
import p021c4.InterfaceC0570c0;
import p021c4.T;
import p025d0.a;

/* JADX INFO: loaded from: classes.dex */
public final class AppMeasurementReceiver extends a implements InterfaceC0570c0 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C0433o f24097I;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f24097I == null) {
            this.f24097I = new C0433o(this);
        }
        C0433o c0433o = this.f24097I;
        c0433o.getClass();
        T t7 = C0597l0.q(context, null, null).f11258O;
        C0597l0.k(t7);
        if (intent == null) {
            t7.f11042O.a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        t7.f11047T.b(action, "Local receiver got");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                t7.f11042O.a("Install Referrer Broadcasts are deprecated");
                return;
            }
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        t7.f11047T.a("Starting wakeful intent.");
        ((AppMeasurementReceiver) ((InterfaceC0570c0) c0433o.f8372H)).getClass();
        SparseArray sparseArray = a.f24583G;
        synchronized (sparseArray) {
            try {
                int i8 = a.f24584H;
                int i9 = i8 + 1;
                a.f24584H = i9;
                if (i9 <= 0) {
                    a.f24584H = 1;
                }
                className.putExtra("androidx.contentpager.content.wakelockid", i8);
                ComponentName componentNameStartService = context.startService(className);
                if (componentNameStartService == null) {
                    return;
                }
                PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + componentNameStartService.flattenToShortString());
                wakeLockNewWakeLock.setReferenceCounted(false);
                wakeLockNewWakeLock.acquire(60000L);
                sparseArray.put(i8, wakeLockNewWakeLock);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
