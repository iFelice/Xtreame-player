package com.google.android.gms.internal.pal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.os.Parcel;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;
import java.util.concurrent.LinkedBlockingQueue;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.v2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2838v2 implements InterfaceC0626b, InterfaceC0627c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2854x2 f24041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f24042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f24043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedBlockingQueue f24044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HandlerThread f24045e;

    public C2838v2(Context context, String str, String str2) {
        this.f24042b = str;
        this.f24043c = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.f24045e = handlerThread;
        handlerThread.start();
        C2854x2 c2854x2 = new C2854x2(context, handlerThread.getLooper(), this, this);
        this.f24041a = c2854x2;
        this.f24044d = new LinkedBlockingQueue();
        c2854x2.checkAvailabilityAndConnect();
    }

    public static C2765m0 a() {
        L4 l4M = C2765m0.M();
        l4M.g(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID);
        return (C2765m0) l4M.d();
    }

    public final void b() {
        C2854x2 c2854x2 = this.f24041a;
        if (c2854x2 != null) {
            if (c2854x2.isConnected() || c2854x2.isConnecting()) {
                c2854x2.disconnect();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        B2 b8;
        LinkedBlockingQueue linkedBlockingQueue = this.f24044d;
        HandlerThread handlerThread = this.f24045e;
        try {
            b8 = (B2) this.f24041a.getService();
        } catch (DeadObjectException | IllegalStateException unused) {
            b8 = null;
        }
        if (b8 != null) {
            try {
                try {
                    String str = this.f24042b;
                    String str2 = this.f24043c;
                    Parcel parcelJ0 = b8.j0();
                    int i8 = AbstractC2671a2.f23725a;
                    parcelJ0.writeInt(1);
                    int iX = AbstractC2987b.X(20293, parcelJ0);
                    AbstractC2987b.v0(parcelJ0, 1, 4);
                    parcelJ0.writeInt(1);
                    AbstractC2987b.Q(parcelJ0, 2, str);
                    AbstractC2987b.Q(parcelJ0, 3, str2);
                    AbstractC2987b.p0(iX, parcelJ0);
                    Parcel parcelU3 = b8.u3(1, parcelJ0);
                    A2 a2CreateFromParcel = parcelU3.readInt() == 0 ? null : A2.CREATOR.createFromParcel(parcelU3);
                    parcelU3.recycle();
                    if (a2CreateFromParcel.f23443H == null) {
                        try {
                            a2CreateFromParcel.f23443H = C2765m0.c0(a2CreateFromParcel.f23444I, C2851x.a());
                            a2CreateFromParcel.f23444I = null;
                        } catch (L | NullPointerException e8) {
                            throw new IllegalStateException(e8);
                        }
                    }
                    a2CreateFromParcel.i();
                    linkedBlockingQueue.put(a2CreateFromParcel.f23443H);
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
            this.f24044d.put(a());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        try {
            this.f24044d.put(a());
        } catch (InterruptedException unused) {
        }
    }
}
