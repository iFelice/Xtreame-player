package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class W8 extends AbstractBinderC2328z5 implements X8 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f17174G = 0;

    public W8() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        R8 q8;
        switch (i8) {
            case 1:
                String string = parcel.readString();
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                u1(aVarJ0, string);
                parcel2.writeNoException();
                return true;
            case 2:
                String string2 = parcel.readString();
                A5.b(parcel);
                R3.a aVarM = m(string2);
                parcel2.writeNoException();
                A5.e(parcel2, aVarM);
                return true;
            case 3:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                N0(aVarJ1);
                parcel2.writeNoException();
                return true;
            case 4:
                zzc();
                parcel2.writeNoException();
                return true;
            case 5:
                R3.b.j0(parcel.readStrongBinder());
                parcel.readInt();
                A5.b(parcel);
                parcel2.writeNoException();
                return true;
            case 6:
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                m3(aVarJ2);
                parcel2.writeNoException();
                return true;
            case 7:
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                d1(aVarJ3);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    q8 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    q8 = iInterfaceQueryLocalInterface instanceof R8 ? (R8) iInterfaceQueryLocalInterface : new Q8(strongBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent", 0);
                }
                A5.b(parcel);
                Z(q8);
                parcel2.writeNoException();
                return true;
            case 9:
                R3.a aVarJ4 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                r0(aVarJ4);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
