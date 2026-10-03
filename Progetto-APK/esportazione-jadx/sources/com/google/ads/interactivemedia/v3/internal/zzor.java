package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class zzor extends M3.a {
    public static final Parcelable.Creator<zzor> CREATOR = new zzos();
    public final int zza;
    private zzbp zzb = null;
    private byte[] zzc;

    public zzor(int i8, byte[] bArr) {
        this.zza = i8;
        this.zzc = bArr;
        zzb();
    }

    private final void zzb() {
        zzbp zzbpVar = this.zzb;
        if (zzbpVar != null || this.zzc == null) {
            if (zzbpVar == null || this.zzc != null) {
                if (zzbpVar != null && this.zzc != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (zzbpVar != null || this.zzc != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int i9 = this.zza;
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(i9);
        byte[] bArrZzav = this.zzc;
        if (bArrZzav == null) {
            bArrZzav = this.zzb.zzav();
        }
        AbstractC2987b.K(parcel, 2, bArrZzav);
        AbstractC2987b.p0(iX, parcel);
    }

    public final zzbp zza() {
        if (this.zzb == null) {
            try {
                this.zzb = zzbp.zzd(this.zzc, zzadk.zza());
                this.zzc = null;
            } catch (zzaeg | NullPointerException e8) {
                throw new IllegalStateException(e8);
            }
        }
        zzb();
        return this.zzb;
    }
}
