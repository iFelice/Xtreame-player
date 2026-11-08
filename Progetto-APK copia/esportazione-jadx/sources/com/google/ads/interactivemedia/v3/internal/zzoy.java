package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zzoy extends M3.a {
    public static final Parcelable.Creator<zzoy> CREATOR = new zzoz();
    public final int zza;
    public final int zzb;
    public final String zzc;
    public final String zzd;
    public final int zze;

    public zzoy(int i8, int i9, int i10, String str, String str2) {
        this.zza = i8;
        this.zzb = i9;
        this.zzc = str;
        this.zzd = str2;
        this.zze = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int i9 = this.zza;
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(i9);
        int i10 = this.zzb;
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(i10);
        AbstractC2987b.Q(parcel, 3, this.zzc);
        AbstractC2987b.Q(parcel, 4, this.zzd);
        int i11 = this.zze;
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(i11);
        AbstractC2987b.p0(iX, parcel);
    }

    public zzoy(int i8, int i9, String str, String str2) {
        this(1, 1, i9 - 1, str, str2);
    }
}
