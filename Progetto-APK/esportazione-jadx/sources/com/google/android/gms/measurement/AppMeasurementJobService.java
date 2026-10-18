package com.google.android.gms.measurement;

import K3.V;
import S3.g;
import Z3.RunnableC0439v;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.util.Log;
import com.bumptech.glide.c;
import com.google.android.gms.internal.measurement.C2598m0;
import com.google.android.gms.internal.measurement.U1;
import com.google.android.gms.internal.measurement.Y;
import java.util.Objects;
import p021c4.A1;
import p021c4.E;
import p021c4.InterfaceC0583g1;
import p021c4.T;

/* JADX INFO: loaded from: classes.dex */
public final class AppMeasurementJobService extends JobService implements InterfaceC0583g1 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public U1 f24096G;

    @Override // p021c4.InterfaceC0583g1
    public final boolean C(int i8) {
        throw new UnsupportedOperationException();
    }

    @Override // p021c4.InterfaceC0583g1
    public final void a(Intent intent) {
    }

    @Override // p021c4.InterfaceC0583g1
    public final void b(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    public final U1 c() {
        if (this.f24096G == null) {
            U1 u7 = new U1();
            u7.f23010G = this;
            this.f24096G = u7;
        }
        return this.f24096G;
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

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        U1 u1C = c();
        u1C.getClass();
        String string = jobParameters.getExtras().getString("action");
        Log.v("FA", "onStartJob received action: ".concat(String.valueOf(string)));
        if (Objects.equals(string, "com.google.android.gms.measurement.UPLOAD")) {
            c.h(string);
            A1 a1J0 = A1.j0(u1C.f23010G);
            T tB = a1J0.b();
            g gVar = a1J0.f10663R.f11255L;
            tB.f11047T.b(string, "Local AppMeasurementJobService called. action");
            a1J0.d().x(new V(a1J0, new RunnableC0439v(u1C, tB, jobParameters, 11)));
        }
        if (Objects.equals(string, "com.google.android.gms.measurement.SCION_UPLOAD")) {
            c.h(string);
            C2598m0 c2598m0C = C2598m0.c(u1C.f23010G, null);
            if (((Boolean) E.f10753U0.a(null)).booleanValue()) {
                V v5 = new V(u1C, jobParameters, 17);
                c2598m0C.getClass();
                c2598m0C.b(new Y(c2598m0C, v5, 1));
            }
        }
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
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
