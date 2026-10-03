package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2007sx implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21013G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AbstractC2059tx f21014H;

    public /* synthetic */ RunnableC2007sx(AbstractC2059tx abstractC2059tx, int i8) {
        this.f21013G = i8;
        this.f21014H = abstractC2059tx;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f21013G;
        AbstractC2059tx abstractC2059tx = this.f21014H;
        switch (i8) {
            case 0:
                abstractC2059tx.e(false);
                break;
            case 1:
                if (abstractC2059tx.f21169l.get() && abstractC2059tx.f21165h.isEmpty()) {
                    try {
                        p090l3.O o4 = abstractC2059tx.f21164g;
                        p090l3.T0 t7 = abstractC2059tx.f21162e;
                        Parcel parcelJ0 = o4.j0();
                        A5.c(parcelJ0, t7);
                        o4.O2(2, parcelJ0);
                    } catch (RemoteException unused) {
                        p120p3.h.g("Failed to call onAdsExhausted");
                        return;
                    }
                    break;
                }
                break;
            default:
                if (abstractC2059tx.f21169l.get()) {
                    try {
                        p090l3.O o7 = abstractC2059tx.f21164g;
                        p090l3.T0 t8 = abstractC2059tx.f21162e;
                        Parcel parcelJ1 = o7.j0();
                        A5.c(parcelJ1, t8);
                        o7.O2(1, parcelJ1);
                    } catch (RemoteException unused2) {
                        p120p3.h.g("Failed to call onAdsAvailable");
                    }
                }
                break;
        }
    }
}
