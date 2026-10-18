package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zznc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iH = AbstractC2987b.H(parcel);
        String strN = HttpUrl.FRAGMENT_ENCODE_SET;
        int iD = 0;
        String strN2 = null;
        while (parcel.dataPosition() < iH) {
            int i8 = parcel.readInt();
            char c8 = (char) i8;
            if (c8 == 1) {
                strN2 = AbstractC2987b.n(i8, parcel);
            } else if (c8 == 2) {
                iD = AbstractC2987b.D(i8, parcel);
            } else if (c8 != 3) {
                AbstractC2987b.G(i8, parcel);
            } else {
                strN = AbstractC2987b.n(i8, parcel);
            }
        }
        AbstractC2987b.t(iH, parcel);
        return new zznb(strN2, iD, strN);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i8) {
        return new zznb[i8];
    }
}
