package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC1987sd extends AbstractBinderC2328z5 implements InterfaceC2039td {
    public AbstractBinderC1987sd() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC1728nd c1676md;
        switch (i8) {
            case 1:
                zzj();
                break;
            case 2:
                zzg();
                break;
            case 3:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    c1676md = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    c1676md = iInterfaceQueryLocalInterface instanceof InterfaceC1728nd ? (InterfaceC1728nd) iInterfaceQueryLocalInterface : new C1676md(strongBinder);
                }
                A5.b(parcel);
                Y1(c1676md);
                break;
            case 4:
                int i9 = parcel.readInt();
                A5.b(parcel);
                zzh(i9);
                break;
            case 5:
                C3117z0 c3117z0 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
                A5.b(parcel);
                j2(c3117z0);
                break;
            case 6:
                a();
                break;
            case 7:
                b();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
