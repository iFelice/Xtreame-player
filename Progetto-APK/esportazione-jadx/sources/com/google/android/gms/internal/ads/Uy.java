package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Uy extends Sy {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Uy f16927h;

    public static final Uy g(Context context) {
        Uy uy;
        synchronized (Uy.class) {
            try {
                if (f16927h == null) {
                    f16927h = new Uy(context, "paidv2_id", "paidv2_creation_time", "PaidV2LifecycleImpl");
                }
                uy = f16927h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return uy;
    }

    public final C0871Om f(long j8, boolean z7) {
        synchronized (Uy.class) {
            try {
                if (this.f16568f.f16382b.getBoolean("paidv2_publisher_option", true)) {
                    return a(j8, null, null, z7);
                }
                return new C0871Om(21);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        synchronized (Uy.class) {
            try {
                if (this.f16568f.f16382b.contains(this.f16563a)) {
                    d(false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
