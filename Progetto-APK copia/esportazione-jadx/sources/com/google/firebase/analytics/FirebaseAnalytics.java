package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.bumptech.glide.c;
import com.google.android.gms.internal.measurement.C2598m0;
import com.google.android.gms.internal.measurement.W;
import com.google.android.gms.internal.measurement.Z;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;
import p021c4.L0;
import p045f5.b;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseAnalytics {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile FirebaseAnalytics f24210b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2598m0 f24211a;

    public FirebaseAnalytics(C2598m0 c2598m0) {
        c.h(c2598m0);
        this.f24211a = c2598m0;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f24210b == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f24210b == null) {
                        f24210b = new FirebaseAnalytics(C2598m0.c(context, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f24210b;
    }

    @Keep
    public static L0 getScionFrontendApiImplementation(Context context, Bundle bundle) {
        C2598m0 c2598m0C = C2598m0.c(context, bundle);
        if (c2598m0C == null) {
            return null;
        }
        return new I4.c(c2598m0C);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            b.a();
            throw null;
        } catch (InterruptedException e8) {
            throw new IllegalStateException(e8);
        } catch (ExecutionException e9) {
            throw new IllegalStateException(e9.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        W wI = W.i(activity);
        C2598m0 c2598m0 = this.f24211a;
        c2598m0.getClass();
        c2598m0.b(new Z(c2598m0, wI, str, str2));
    }
}
