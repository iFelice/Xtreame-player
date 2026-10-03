package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zznb extends M3.a {
    public static final Parcelable.Creator<zznb> CREATOR = new zznc();
    private final String zza;
    private final int zzb;
    private final String zzc;

    public zznb(String str, int i8, String str2) {
        this.zza = str;
        this.zzb = i8;
        this.zzc = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        String str = this.zza;
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, str);
        int i9 = this.zzb;
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(i9);
        AbstractC2987b.Q(parcel, 3, this.zzc);
        AbstractC2987b.p0(iX, parcel);
    }
}
