package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zzos implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iH = AbstractC2987b.H(parcel);
        byte[] bArrI = null;
        int iD = 0;
        while (parcel.dataPosition() < iH) {
            int i8 = parcel.readInt();
            char c8 = (char) i8;
            if (c8 == 1) {
                iD = AbstractC2987b.D(i8, parcel);
            } else if (c8 != 2) {
                AbstractC2987b.G(i8, parcel);
            } else {
                bArrI = AbstractC2987b.i(i8, parcel);
            }
        }
        AbstractC2987b.t(iH, parcel);
        return new zzor(iD, bArrI);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i8) {
        return new zzor[i8];
    }
}
