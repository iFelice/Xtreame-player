package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zznd extends M3.a {
    public static final Parcelable.Creator<zznd> CREATOR = new zzne();
    private final String zza;

    public zznd(String str) {
        this.zza = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        String str = this.zza;
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, str);
        AbstractC2987b.p0(iX, parcel);
    }

    public final String zza() {
        return this.zza;
    }
}
