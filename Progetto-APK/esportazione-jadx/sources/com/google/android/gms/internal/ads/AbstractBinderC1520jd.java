package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC1520jd extends AbstractBinderC2328z5 implements InterfaceC1572kd {
    public AbstractBinderC1520jd() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        switch (i8) {
            case 1:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                zzl(aVarJ0);
                break;
            case 2:
                R3.b.j0(parcel.readStrongBinder());
                parcel.readInt();
                A5.b(parcel);
                x();
                break;
            case 3:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                zzi(aVarJ1);
                break;
            case 4:
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                K1(aVarJ2);
                break;
            case 5:
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                l3(aVarJ3);
                break;
            case 6:
                R3.a aVarJ4 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                zzf(aVarJ4);
                break;
            case 7:
                R3.a aVarJ5 = R3.b.j0(parcel.readStrongBinder());
                C1624ld c1624ld = (C1624ld) A5.a(parcel, C1624ld.CREATOR);
                A5.b(parcel);
                w0(aVarJ5, c1624ld);
                break;
            case 8:
                R3.a aVarJ6 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                zze(aVarJ6);
                break;
            case 9:
                R3.a aVarJ7 = R3.b.j0(parcel.readStrongBinder());
                int i9 = parcel.readInt();
                A5.b(parcel);
                d2(aVarJ7, i9);
                break;
            case 10:
                R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                e3();
                break;
            case 11:
                R3.a aVarJ8 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                y(aVarJ8);
                break;
            case 12:
                A5.b(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
