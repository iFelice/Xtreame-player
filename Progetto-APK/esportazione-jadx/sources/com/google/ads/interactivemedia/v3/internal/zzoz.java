package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zzoz implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iH = AbstractC2987b.H(parcel);
        String strN = null;
        String strN2 = null;
        int iD = 0;
        int iD2 = 0;
        int iD3 = 0;
        while (parcel.dataPosition() < iH) {
            int i8 = parcel.readInt();
            char c8 = (char) i8;
            if (c8 == 1) {
                iD = AbstractC2987b.D(i8, parcel);
            } else if (c8 == 2) {
                iD2 = AbstractC2987b.D(i8, parcel);
            } else if (c8 == 3) {
                strN = AbstractC2987b.n(i8, parcel);
            } else if (c8 == 4) {
                strN2 = AbstractC2987b.n(i8, parcel);
            } else if (c8 != 5) {
                AbstractC2987b.G(i8, parcel);
            } else {
                iD3 = AbstractC2987b.D(i8, parcel);
            }
        }
        AbstractC2987b.t(iH, parcel);
        return new zzoy(iD, iD2, iD3, strN, strN2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i8) {
        return new zzoy[i8];
    }
}
