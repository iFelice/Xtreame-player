package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: loaded from: classes.dex */
public final class Zq extends AbstractBinderC2328z5 implements InterfaceC0711Eb {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C2000sq f17804G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Sq f17805H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Zq(Sq sq, C2000sq c2000sq) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
        this.f17805H = sq;
        this.f17804G = c2000sq;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0711Eb
    public final void c(C3117z0 c3117z0) {
        ((Nq) this.f17804G.f20995c).R0(c3117z0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC1830pb c1674mb;
        C2000sq c2000sq = this.f17804G;
        if (i8 == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                c1674mb = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
                c1674mb = iInterfaceQueryLocalInterface instanceof InterfaceC1830pb ? (InterfaceC1830pb) iInterfaceQueryLocalInterface : new C1674mb(strongBinder);
            }
            A5.b(parcel);
            this.f17805H.f16538e = c1674mb;
            ((Nq) c2000sq.f20995c).k();
        } else if (i8 == 2) {
            String string = parcel.readString();
            A5.b(parcel);
            ((Nq) c2000sq.f20995c).n0(0, string);
        } else {
            if (i8 != 3) {
                return false;
            }
            C3117z0 c3117z0 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
            A5.b(parcel);
            c(c3117z0);
        }
        parcel2.writeNoException();
        return true;
    }
}
