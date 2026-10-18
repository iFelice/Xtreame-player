package com.google.ads.interactivemedia.v3.internal;

import R3.b;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzln extends zzlh implements zzlo {
    public zzln() {
        super("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlh
    public final boolean zza(int i8, Parcel parcel, Parcel parcel2, int i9) {
        switch (i8) {
            case 1:
                String strZzj = zzj();
                parcel2.writeNoException();
                parcel2.writeString(strZzj);
                return true;
            case 2:
                String string = parcel.readString();
                String string2 = parcel.readString();
                zzli.zzb(parcel);
                zzn(string, string2);
                parcel2.writeNoException();
                return true;
            case 3:
                R3.a aVarJ0 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                boolean zZzp = zzp(aVarJ0);
                parcel2.writeNoException();
                parcel2.writeInt(zZzp ? 1 : 0);
                return true;
            case 4:
                R3.a aVarJ1 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                boolean zZzq = zzq(aVarJ1);
                parcel2.writeNoException();
                parcel2.writeInt(zZzq ? 1 : 0);
                return true;
            case 5:
                String string3 = parcel.readString();
                zzli.zzb(parcel);
                zzo(string3);
                parcel2.writeNoException();
                return true;
            case 6:
                R3.a aVarJ2 = b.j0(parcel.readStrongBinder());
                R3.a aVarJ3 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                R3.a aVarZzd = zzd(aVarJ2, aVarJ3);
                parcel2.writeNoException();
                zzli.zzd(parcel2, aVarZzd);
                return true;
            case 7:
                R3.a aVarJ4 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                String strZzf = zzf(aVarJ4);
                parcel2.writeNoException();
                parcel2.writeString(strZzf);
                return true;
            case 8:
                R3.a aVarJ5 = b.j0(parcel.readStrongBinder());
                String string4 = parcel.readString();
                zzli.zzb(parcel);
                String strZze = zze(aVarJ5, string4);
                parcel2.writeNoException();
                parcel2.writeString(strZze);
                return true;
            case 9:
                R3.a aVarJ6 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                zzl(aVarJ6);
                parcel2.writeNoException();
                return true;
            case 10:
                R3.a aVarJ7 = b.j0(parcel.readStrongBinder());
                R3.a aVarJ8 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                R3.a aVarZzc = zzc(aVarJ7, aVarJ8);
                parcel2.writeNoException();
                zzli.zzd(parcel2, aVarZzc);
                return true;
            case 11:
                parcel.readString();
                int i10 = zzli.zza;
                parcel.readInt();
                zzli.zzb(parcel);
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case 12:
                R3.a aVarJ9 = b.j0(parcel.readStrongBinder());
                byte[] bArrCreateByteArray = parcel.createByteArray();
                zzli.zzb(parcel);
                String strZzg = zzg(aVarJ9, bArrCreateByteArray);
                parcel2.writeNoException();
                parcel2.writeString(strZzg);
                return true;
            case 13:
                R3.a aVarJ10 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                String strZzi = zzi(aVarJ10);
                parcel2.writeNoException();
                parcel2.writeString(strZzi);
                return true;
            case 14:
                R3.a aVarJ11 = b.j0(parcel.readStrongBinder());
                R3.a aVarJ12 = b.j0(parcel.readStrongBinder());
                R3.a aVarJ13 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                String strZzk = zzk(aVarJ11, aVarJ12, aVarJ13);
                parcel2.writeNoException();
                parcel2.writeString(strZzk);
                return true;
            case 15:
                R3.a aVarJ14 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                zzm(aVarJ14);
                parcel2.writeNoException();
                return true;
            case 16:
            default:
                return false;
            case 17:
                R3.a aVarJ15 = b.j0(parcel.readStrongBinder());
                R3.a aVarJ16 = b.j0(parcel.readStrongBinder());
                R3.a aVarJ17 = b.j0(parcel.readStrongBinder());
                R3.a aVarJ18 = b.j0(parcel.readStrongBinder());
                zzli.zzb(parcel);
                String strZzh = zzh(aVarJ15, aVarJ16, aVarJ17, aVarJ18);
                parcel2.writeNoException();
                parcel2.writeString(strZzh);
                return true;
            case 18:
                boolean zZzr = zzr();
                parcel2.writeNoException();
                int i11 = zzli.zza;
                parcel2.writeInt(zZzr ? 1 : 0);
                return true;
            case 19:
                boolean zZzs = zzs();
                parcel2.writeNoException();
                int i12 = zzli.zza;
                parcel2.writeInt(zZzs ? 1 : 0);
                return true;
            case 20:
                int iZzb = zzb();
                parcel2.writeNoException();
                parcel2.writeInt(iZzb);
                return true;
        }
    }
}
