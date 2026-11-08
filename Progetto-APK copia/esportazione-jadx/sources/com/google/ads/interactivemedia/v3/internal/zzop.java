package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zzop extends M3.a {
    public static final Parcelable.Creator<zzop> CREATOR = new zzoq();
    public final int zza;
    public final String zzb;
    public final String zzc;

    public zzop(int i8, String str, String str2) {
        this.zza = i8;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int i9 = this.zza;
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(i9);
        AbstractC2987b.Q(parcel, 2, this.zzb);
        AbstractC2987b.Q(parcel, 3, this.zzc);
        AbstractC2987b.p0(iX, parcel);
    }

    public zzop(String str, String str2) {
        this(1, str, str2);
    }
}
