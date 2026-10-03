package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zzpa extends M3.a {
    public static final Parcelable.Creator<zzpa> CREATOR = new zzpb();
    public final int zza;
    public final byte[] zzb;
    public final int zzc;

    public zzpa(int i8, byte[] bArr, int i9) {
        this.zza = i8;
        this.zzb = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.zzc = i9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int i9 = this.zza;
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(i9);
        AbstractC2987b.K(parcel, 2, this.zzb);
        int i10 = this.zzc;
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(i10);
        AbstractC2987b.p0(iX, parcel);
    }

    public zzpa(byte[] bArr, int i8) {
        this(1, null, 1);
    }
}
