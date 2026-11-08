package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.os.Parcel;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1335fy implements InterfaceC0626b, InterfaceC0627c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2268xy f18850a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f18852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedBlockingQueue f18853d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HandlerThread f18854e;

    public C1335fy(Context context, String str, String str2) {
        this.f18851b = str;
        this.f18852c = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.f18854e = handlerThread;
        handlerThread.start();
        C2268xy c2268xy = new C2268xy(context, handlerThread.getLooper(), this, this, 9200000);
        this.f18850a = c2268xy;
        this.f18853d = new LinkedBlockingQueue();
        c2268xy.checkAvailabilityAndConnect();
    }

    public static C1496j4 a() {
        V3 v3A0 = C1496j4.a0();
        v3A0.d();
        C1496j4.K0((C1496j4) v3A0.f20255H, PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID);
        return (C1496j4) v3A0.b();
    }

    public final void b() {
        C2268xy c2268xy = this.f18850a;
        if (c2268xy != null) {
            if (c2268xy.isConnected() || c2268xy.isConnecting()) {
                c2268xy.disconnect();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        Ay ay;
        LinkedBlockingQueue linkedBlockingQueue = this.f18853d;
        HandlerThread handlerThread = this.f18854e;
        try {
            ay = (Ay) this.f18850a.getService();
        } catch (DeadObjectException | IllegalStateException unused) {
            ay = null;
        }
        if (ay != null) {
            try {
                try {
                    C2320yy c2320yy = new C2320yy(1, this.f18851b, this.f18852c);
                    Parcel parcelJ0 = ay.j0();
                    A5.c(parcelJ0, c2320yy);
                    Parcel parcelN2 = ay.n2(1, parcelJ0);
                    C2372zy c2372zy = (C2372zy) A5.a(parcelN2, C2372zy.CREATOR);
                    parcelN2.recycle();
                    if (c2372zy.f22238H == null) {
                        try {
                            byte[] bArr = c2372zy.f22239I;
                            C1509jH c1509jH = C1509jH.f19448b;
                            UH uh = UH.f16822c;
                            c2372zy.f22238H = C1496j4.v0(bArr, C1509jH.f19449c);
                            c2372zy.f22239I = null;
                        } catch (AH | NullPointerException e8) {
                            throw new IllegalStateException(e8);
                        }
                    }
                    c2372zy.zzb();
                    linkedBlockingQueue.put(c2372zy.f22238H);
                } catch (InterruptedException unused2) {
                } finally {
                    b();
                    handlerThread.quit();
                }
            } catch (Throwable unused3) {
                linkedBlockingQueue.put(a());
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(J3.b bVar) {
        try {
            this.f18853d.put(a());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        try {
            this.f18853d.put(a());
        } catch (InterruptedException unused) {
        }
    }
}
