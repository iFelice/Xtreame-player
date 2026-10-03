package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC1364gb extends AbstractBinderC2328z5 implements InterfaceC1416hb {
    public AbstractBinderC1364gb() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static InterfaceC1416hb z3(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface : new C1312fb(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC1728nd c1676md;
        switch (i8) {
            case 1:
                b();
                break;
            case 2:
                a();
                break;
            case 3:
                int i9 = parcel.readInt();
                A5.b(parcel);
                zzg(i9);
                break;
            case 4:
                zzn();
                break;
            case 5:
                U1();
                break;
            case 6:
                k();
                break;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                }
                A5.b(parcel);
                break;
            case 8:
                zzm();
                break;
            case 9:
                String string = parcel.readString();
                String string2 = parcel.readString();
                A5.b(parcel);
                s2(string, string2);
                break;
            case 10:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                    if (iInterfaceQueryLocalInterface instanceof InterfaceC1295f9) {
                    }
                }
                parcel.readString();
                A5.b(parcel);
                break;
            case 11:
                h();
                break;
            case 12:
                parcel.readString();
                A5.b(parcel);
                break;
            case 13:
                g0();
                break;
            case 14:
                C1624ld c1624ld = (C1624ld) A5.a(parcel, C1624ld.CREATOR);
                A5.b(parcel);
                B2(c1624ld);
                break;
            case 15:
                p();
                break;
            case 16:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 == null) {
                    c1676md = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    c1676md = iInterfaceQueryLocalInterface2 instanceof InterfaceC1728nd ? (InterfaceC1728nd) iInterfaceQueryLocalInterface2 : new C1676md(strongBinder3);
                }
                A5.b(parcel);
                w2(c1676md);
                break;
            case 17:
                int i10 = parcel.readInt();
                A5.b(parcel);
                m2(i10);
                break;
            case 18:
                n();
                break;
            case 19:
                A5.b(parcel);
                break;
            case 20:
                f();
                break;
            case 21:
                String string3 = parcel.readString();
                A5.b(parcel);
                z(string3);
                break;
            case 22:
                int i11 = parcel.readInt();
                String string4 = parcel.readString();
                A5.b(parcel);
                n0(i11, string4);
                break;
            case 23:
                C3117z0 c3117z0 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
                A5.b(parcel);
                R0(c3117z0);
                break;
            case 24:
                C3117z0 c3117z1 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
                A5.b(parcel);
                S1(c3117z1);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
