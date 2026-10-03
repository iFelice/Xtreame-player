package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.android.gms.internal.ads.Ux;

/* JADX INFO: loaded from: classes.dex */
public abstract class E1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final G1 f22908a;

    static {
        G1 g8;
        Uri uri = F1.f22912a;
        synchronized (H1.class) {
            try {
                if (H1.f22929a == null) {
                    H1.I(new Ux(1));
                }
                g8 = H1.f22929a;
            } catch (Throwable th) {
                throw th;
            }
        }
        f22908a = g8;
    }
}
