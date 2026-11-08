package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p090l3.C3099q;
import p090l3.InterfaceC3100q0;
import p090l3.InterfaceC3113x0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Jh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0792Jh extends AbstractBinderC2328z5 implements InterfaceC1137c6 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0777Ih f14182G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p090l3.J f14183H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C1074av f14184I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f14185J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C0738Fn f14186K;

    public BinderC0792Jh(C0777Ih c0777Ih, BinderC1228dv binderC1228dv, C1074av c1074av, C0738Fn c0738Fn) {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
        this.f14185J = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15574A0)).booleanValue();
        this.f14182G = c0777Ih;
        this.f14183H = binderC1228dv;
        this.f14184I = c1074av;
        this.f14186K = c0738Fn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1137c6
    public final void X(R3.a aVar, InterfaceC1396h6 interfaceC1396h6) {
        try {
            this.f14184I.f18000J.set(interfaceC1396h6);
            this.f14182G.c((Activity) R3.b.v0(aVar), this.f14185J);
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC1396h6 c1344g6;
        switch (i8) {
            case 2:
                parcel2.writeNoException();
                A5.e(parcel2, this.f14183H);
                return true;
            case 3:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                }
                A5.b(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 == null) {
                    c1344g6 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    c1344g6 = iInterfaceQueryLocalInterface instanceof InterfaceC1396h6 ? (InterfaceC1396h6) iInterfaceQueryLocalInterface : new C1344g6(strongBinder2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback", 0);
                }
                A5.b(parcel);
                X(aVarJ0, c1344g6);
                parcel2.writeNoException();
                return true;
            case 5:
                InterfaceC3113x0 interfaceC3113x0Zzf = zzf();
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC3113x0Zzf);
                return true;
            case 6:
                boolean zF = A5.f(parcel);
                A5.b(parcel);
                this.f14185J = zF;
                parcel2.writeNoException();
                return true;
            case 7:
                InterfaceC3100q0 interfaceC3100q0Z3 = p090l3.S0.z3(parcel.readStrongBinder());
                A5.b(parcel);
                com.bumptech.glide.c.d("setOnPaidEventListener must be called on the main UI thread.");
                C1074av c1074av = this.f14184I;
                if (c1074av != null) {
                    try {
                        if (!interfaceC3100q0Z3.zzf()) {
                            this.f14186K.b();
                        }
                    } catch (RemoteException e8) {
                        p120p3.h.c("Error in making CSI ping for reporting paid event callback", e8);
                    }
                    c1074av.f18003M.set(interfaceC3100q0Z3);
                    break;
                }
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1137c6
    public final InterfaceC3113x0 zzf() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15873k6)).booleanValue()) {
            return this.f14182G.f21917f;
        }
        return null;
    }
}
