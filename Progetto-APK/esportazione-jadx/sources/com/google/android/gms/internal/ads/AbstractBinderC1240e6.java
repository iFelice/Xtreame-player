package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.e6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC1240e6 extends AbstractBinderC2328z5 implements InterfaceC1292f6 {
    public AbstractBinderC1240e6() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC1137c6 c1086b6;
        if (i8 == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                c1086b6 = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                c1086b6 = iInterfaceQueryLocalInterface instanceof InterfaceC1137c6 ? (InterfaceC1137c6) iInterfaceQueryLocalInterface : new C1086b6(strongBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd", 0);
            }
            A5.b(parcel);
            U2(c1086b6);
        } else if (i8 == 2) {
            parcel.readInt();
            A5.b(parcel);
        } else {
            if (i8 != 3) {
                return false;
            }
            C3117z0 c3117z0 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
            A5.b(parcel);
            b3(c3117z0);
        }
        parcel2.writeNoException();
        return true;
    }
}
