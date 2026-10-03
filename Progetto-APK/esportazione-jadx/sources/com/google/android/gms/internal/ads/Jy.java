package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class Jy extends AbstractBinderC2328z5 implements Iy {
    public Jy() {
        super("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        switch (i8) {
            case 2:
                R3.b.j0(parcel.readStrongBinder());
                parcel.readString();
                A5.b(parcel);
                break;
            case 3:
                break;
            case 4:
                parcel.createIntArray();
                A5.b(parcel);
                break;
            case 5:
                parcel.createByteArray();
                A5.b(parcel);
                break;
            case 6:
                parcel.readInt();
                A5.b(parcel);
                break;
            case 7:
                parcel.readInt();
                A5.b(parcel);
                break;
            case 8:
                R3.b.j0(parcel.readStrongBinder());
                parcel.readString();
                parcel.readString();
                A5.b(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void zzg(int i8) {
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void zzh(int[] iArr) {
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void zzi(int i8) {
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void zzj(byte[] bArr) {
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void G(R3.b bVar, String str) {
    }
}
