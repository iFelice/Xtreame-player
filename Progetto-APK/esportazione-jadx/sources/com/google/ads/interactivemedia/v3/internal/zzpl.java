package com.google.ads.interactivemedia.v3.internal;

import R3.b;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzpl extends zzlh implements zzpm {
    public zzpl() {
        super("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlh
    public final boolean zza(int i8, Parcel parcel, Parcel parcel2, int i9) {
        switch (i8) {
            case 2:
                b.j0(parcel.readStrongBinder());
                parcel.readString();
                zzli.zzb(parcel);
                break;
            case 3:
                break;
            case 4:
                parcel.createIntArray();
                zzli.zzb(parcel);
                break;
            case 5:
                parcel.createByteArray();
                zzli.zzb(parcel);
                break;
            case 6:
                parcel.readInt();
                zzli.zzb(parcel);
                break;
            case 7:
                parcel.readInt();
                zzli.zzb(parcel);
                break;
            case 8:
                b.j0(parcel.readStrongBinder());
                parcel.readString();
                parcel.readString();
                zzli.zzb(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
