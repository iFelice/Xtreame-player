package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.q5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1861q5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Z4 f20530h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f20531i;

    public C1861q5(V4 v5, V3 v7, int i8, Z4 z7) {
        super(v5, "fITy8eyNabiNCHuPyNX0x482LGXuzWIuGD/71SlN2nKRI9kSJNQ0LUuMwsl06lrx", "tMANUUGyytjQo/XDHg2IEhabePFT+VIo7wkY/Wjo6Gc=", v7, i8, 53);
        this.f20530h = z7;
        if (z7 != null) {
            if (z7.f17727R <= -2) {
                WeakReference weakReference = z7.f17723N;
                if ((weakReference != null ? (View) weakReference.get() : null) == null) {
                    z7.f17727R = -3L;
                }
            }
            this.f20531i = z7.f17727R;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        if (this.f20530h != null) {
            long jLongValue = ((Long) this.f21036e.invoke(null, Long.valueOf(this.f20531i))).longValue();
            V3 v5 = this.f21035d;
            v5.d();
            C1496j4.P((C1496j4) v5.f20255H, jLongValue);
        }
    }
}
