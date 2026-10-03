package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC1726nb extends AbstractBinderC2328z5 implements InterfaceC1830pb {
    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        switch (i8) {
            case 2:
                String strZzs = ((BinderC2141vb) this).zzs();
                parcel2.writeNoException();
                parcel2.writeString(strZzs);
                return true;
            case 3:
                List listG = ((BinderC2141vb) this).g();
                parcel2.writeNoException();
                parcel2.writeList(listG);
                return true;
            case 4:
                String strZzq = ((BinderC2141vb) this).zzq();
                parcel2.writeNoException();
                parcel2.writeString(strZzq);
                return true;
            case 5:
                T8 t8Zzl = ((BinderC2141vb) this).zzl();
                parcel2.writeNoException();
                A5.e(parcel2, t8Zzl);
                return true;
            case 6:
                String strZzr = ((BinderC2141vb) this).zzr();
                parcel2.writeNoException();
                parcel2.writeString(strZzr);
                return true;
            case 7:
                String strZzp = ((BinderC2141vb) this).zzp();
                parcel2.writeNoException();
                parcel2.writeString(strZzp);
                return true;
            case 8:
                double dZze = ((BinderC2141vb) this).zze();
                parcel2.writeNoException();
                parcel2.writeDouble(dZze);
                return true;
            case 9:
                String strU = ((BinderC2141vb) this).u();
                parcel2.writeNoException();
                parcel2.writeString(strU);
                return true;
            case 10:
                String strE = ((BinderC2141vb) this).e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 11:
                p090l3.B0 b0Zzj = ((BinderC2141vb) this).zzj();
                parcel2.writeNoException();
                A5.e(parcel2, b0Zzj);
                return true;
            case 12:
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 13:
                ((BinderC2141vb) this).zzm();
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 14:
                ((BinderC2141vb) this).zzn();
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 15:
                R3.a aVarZzo = ((BinderC2141vb) this).zzo();
                parcel2.writeNoException();
                A5.e(parcel2, aVarZzo);
                return true;
            case 16:
                Bundle bundleZzi = ((BinderC2141vb) this).zzi();
                parcel2.writeNoException();
                A5.d(parcel2, bundleZzi);
                return true;
            case 17:
                boolean zT = ((BinderC2141vb) this).t();
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(zT ? 1 : 0);
                return true;
            case 18:
                boolean zV = ((BinderC2141vb) this).v();
                parcel2.writeNoException();
                ClassLoader classLoader2 = A5.f11962a;
                parcel2.writeInt(zV ? 1 : 0);
                return true;
            case 19:
                ((BinderC2141vb) this).f();
                parcel2.writeNoException();
                return true;
            case 20:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                ((BinderC2141vb) this).l0(aVarJ0);
                parcel2.writeNoException();
                return true;
            case 21:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                ((BinderC2141vb) this).j1(aVarJ1, aVarJ2, aVarJ3);
                parcel2.writeNoException();
                return true;
            case 22:
                R3.a aVarJ4 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                ((BinderC2141vb) this).f2(aVarJ4);
                parcel2.writeNoException();
                return true;
            case 23:
                ((BinderC2141vb) this).zzf();
                parcel2.writeNoException();
                parcel2.writeFloat(0.0f);
                return true;
            case 24:
                ((BinderC2141vb) this).zzh();
                parcel2.writeNoException();
                parcel2.writeFloat(0.0f);
                return true;
            case 25:
                ((BinderC2141vb) this).zzg();
                parcel2.writeNoException();
                parcel2.writeFloat(0.0f);
                return true;
            default:
                return false;
        }
    }
}
