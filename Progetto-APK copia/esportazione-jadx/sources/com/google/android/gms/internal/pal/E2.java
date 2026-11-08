package com.google.android.gms.internal.pal;

import android.os.Parcel;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;

/* JADX INFO: loaded from: classes.dex */
public final class E2 extends AbstractBinderC2478o implements D2 {
    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        switch (i8) {
            case 2:
                R3.b.j0(parcel.readStrongBinder());
                parcel.readString();
                AbstractC2671a2.a(parcel);
                break;
            case 3:
                break;
            case 4:
                parcel.createIntArray();
                AbstractC2671a2.a(parcel);
                break;
            case 5:
                parcel.createByteArray();
                AbstractC2671a2.a(parcel);
                break;
            case 6:
                parcel.readInt();
                AbstractC2671a2.a(parcel);
                break;
            case 7:
                parcel.readInt();
                AbstractC2671a2.a(parcel);
                break;
            case 8:
                R3.b.j0(parcel.readStrongBinder());
                parcel.readString();
                parcel.readString();
                AbstractC2671a2.a(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void a() {
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void zzg(int i8) {
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void zzh(int[] iArr) {
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void zzi(int i8) {
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void zzj(byte[] bArr) {
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void G(R3.b bVar, String str) {
    }
}
