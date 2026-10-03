package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zzne implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iH = AbstractC2987b.H(parcel);
        String strN = null;
        while (parcel.dataPosition() < iH) {
            int i8 = parcel.readInt();
            if (((char) i8) != 1) {
                AbstractC2987b.G(i8, parcel);
            } else {
                strN = AbstractC2987b.n(i8, parcel);
            }
        }
        AbstractC2987b.t(iH, parcel);
        return new zznd(strN);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i8) {
        return new zznd[i8];
    }
}
