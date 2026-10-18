package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.md, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1676md extends AbstractC2276y5 implements InterfaceC1728nd {
    public C1676md(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1728nd
    public final int J() {
        Parcel parcelN2 = n2(2, j0());
        int i8 = parcelN2.readInt();
        parcelN2.recycle();
        return i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1728nd
    public final String zzf() {
        Parcel parcelN2 = n2(1, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }
}
