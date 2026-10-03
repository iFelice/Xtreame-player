package com.google.android.gms.internal.measurement;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2598m0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile C2598m0 f23200g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f23201a = "FA";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final P3.b f23202b = P3.b.f5909a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExecutorService f23203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f23204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f23205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile K f23206f;

    public C2598m0(Context context, Bundle bundle) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC2556f0());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f23203c = Executors.unconfigurableExecutorService(threadPoolExecutor);
        new ArrayList();
        int i8 = 0;
        try {
            if (Cw.b1(context, Cw.K(context)) != null) {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, C2598m0.class.getClassLoader());
                } catch (ClassNotFoundException unused) {
                    this.f23205e = true;
                    Log.w(this.f23201a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                    return;
                }
            }
        } catch (IllegalStateException unused2) {
        }
        if (!true) {
            Log.w(this.f23201a, "Specified origin or custom app id is null. Both parameters will be ignored.");
        }
        b(new C2526a0(this, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f23201a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new C2592l0(this, i8));
        }
    }

    public static C2598m0 c(Context context, Bundle bundle) {
        com.bumptech.glide.c.h(context);
        if (f23200g == null) {
            synchronized (C2598m0.class) {
                try {
                    if (f23200g == null) {
                        f23200g = new C2598m0(context, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f23200g;
    }

    public final void a(Exception exc, boolean z7, boolean z8) {
        this.f23205e |= z7;
        String str = this.f23201a;
        if (z7) {
            Log.w(str, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z8) {
            b(new C2562g0(this, exc));
        }
        Log.w(str, "Error with data collection. Data lost.", exc);
    }

    public final void b(AbstractRunnableC2574i0 abstractRunnableC2574i0) {
        this.f23203c.execute(abstractRunnableC2574i0);
    }
}
