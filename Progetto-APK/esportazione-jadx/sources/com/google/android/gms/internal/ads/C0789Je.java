package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Je, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0789Je {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f14174b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f14173a = TimeUnit.MILLISECONDS.toNanos(((Long) C3099q.f26624d.f26627c.a(Q7.f15581B)).longValue());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f14175c = true;

    public final void a(SurfaceTexture surfaceTexture, InterfaceC0684Ce interfaceC0684Ce) {
        if (interfaceC0684Ce == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.f14175c) {
            long j8 = timestamp - this.f14174b;
            if (Math.abs(j8) < this.f14173a) {
                return;
            }
        }
        this.f14175c = false;
        this.f14174b = timestamp;
        p113o3.O.f27924l.post(new RunnableC0878Pf(interfaceC0684Ce, 13));
    }
}
