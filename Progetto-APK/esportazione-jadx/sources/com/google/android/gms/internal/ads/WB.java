package com.google.android.gms.internal.ads;

import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class WB extends MB {

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public UB f17176V;

    @Override // com.google.android.gms.internal.ads.GB
    public final void j() {
        UB ub = this.f17176V;
        if (ub != null) {
            ub.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.MB
    public final void v(int i8, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.MB
    public final void w() {
        UB ub = this.f17176V;
        if (ub != null) {
            try {
                ub.f16807I.execute(ub);
            } catch (RejectedExecutionException e8) {
                ub.f16808J.g(e8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.MB
    public final void y(int i8) {
        this.f14684R = null;
        if (i8 == 1) {
            this.f17176V = null;
        }
    }
}
