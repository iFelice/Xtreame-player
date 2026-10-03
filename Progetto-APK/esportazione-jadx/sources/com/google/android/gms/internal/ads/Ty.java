package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Ty extends Sy {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Ty f16767h;

    public static final Ty f(Context context) {
        Ty ty;
        synchronized (Ty.class) {
            try {
                if (f16767h == null) {
                    f16767h = new Ty(context, "paidv1_id", "paidv1_creation_time", "PaidV1LifecycleImpl");
                }
                ty = f16767h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ty;
    }

    public final void g() {
        synchronized (Ty.class) {
            d(false);
        }
    }
}
