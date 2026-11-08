package com.google.android.gms.internal.ads;

import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC2195wd extends AbstractBinderC2328z5 implements InterfaceC2247xd {
    public AbstractBinderC2195wd() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            zzg();
        } else if (i8 == 2) {
            int i9 = parcel.readInt();
            A5.b(parcel);
            d(i9);
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
