package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.os.Parcel;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1387gy implements InterfaceC0626b, InterfaceC0627c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2268xy f19029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedBlockingQueue f19032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HandlerThread f19033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1180cy f19034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f19035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f19036h;

    public C1387gy(Context context, int i8, String str, String str2, C1180cy c1180cy) {
        this.f19030b = str;
        this.f19036h = i8;
        this.f19031c = str2;
        this.f19034f = c1180cy;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f19033e = handlerThread;
        handlerThread.start();
        this.f19035g = System.currentTimeMillis();
        C2268xy c2268xy = new C2268xy(context, handlerThread.getLooper(), this, this, 19621000);
        this.f19029a = c2268xy;
        this.f19032d = new LinkedBlockingQueue();
        c2268xy.checkAvailabilityAndConnect();
    }

    public final void a() {
        C2268xy c2268xy = this.f19029a;
        if (c2268xy != null) {
            if (c2268xy.isConnected() || c2268xy.isConnecting()) {
                c2268xy.disconnect();
            }
        }
    }

    public final void b(int i8, long j8, Exception exc) {
        this.f19034f.b(i8, System.currentTimeMillis() - j8, exc);
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        Ay ay;
        long j8 = this.f19035g;
        HandlerThread handlerThread = this.f19033e;
        try {
            ay = (Ay) this.f19029a.getService();
        } catch (DeadObjectException | IllegalStateException unused) {
            ay = null;
        }
        if (ay != null) {
            try {
                By by = new By(1, 1, this.f19036h - 1, this.f19030b, this.f19031c);
                Parcel parcelJ0 = ay.j0();
                A5.c(parcelJ0, by);
                Parcel parcelN2 = ay.n2(3, parcelJ0);
                Cy cy = (Cy) A5.a(parcelN2, Cy.CREATOR);
                parcelN2.recycle();
                b(5011, j8, null);
                this.f19032d.put(cy);
            } catch (Throwable th) {
                try {
                    b(2010, j8, new Exception(th));
                } finally {
                    a();
                    handlerThread.quit();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(J3.b bVar) {
        try {
            b(4012, this.f19035g, null);
            this.f19032d.put(new Cy());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        try {
            b(4011, this.f19035g, null);
            this.f19032d.put(new Cy());
        } catch (InterruptedException unused) {
        }
    }
}
