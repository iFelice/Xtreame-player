package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ic, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC1469ic extends AbstractBinderC2328z5 implements InterfaceC1519jc {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f19304G = 0;

    public AbstractBinderC1469ic() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        switch (i8) {
            case 1:
                Bundle bundle = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                P1(bundle);
                parcel2.writeNoException();
                return true;
            case 2:
                parcel2.writeNoException();
                return true;
            case 3:
                e();
                parcel2.writeNoException();
                return true;
            case 4:
                zzr();
                parcel2.writeNoException();
                return true;
            case 5:
                k();
                parcel2.writeNoException();
                return true;
            case 6:
                Bundle bundle2 = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                c2(bundle2);
                parcel2.writeNoException();
                A5.d(parcel2, bundle2);
                return true;
            case 7:
                n();
                parcel2.writeNoException();
                return true;
            case 8:
                zzm();
                parcel2.writeNoException();
                return true;
            case 9:
                f();
                parcel2.writeNoException();
                return true;
            case 10:
                zzi();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean zQ = Q();
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(zQ ? 1 : 0);
                return true;
            case 12:
                parcel.readInt();
                parcel.readInt();
                A5.b(parcel);
                parcel2.writeNoException();
                return true;
            case 13:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                p1(aVarJ0);
                parcel2.writeNoException();
                return true;
            case 14:
                h();
                parcel2.writeNoException();
                return true;
            case 15:
                int i9 = parcel.readInt();
                String[] strArrCreateStringArray = parcel.createStringArray();
                int[] iArrCreateIntArray = parcel.createIntArray();
                A5.b(parcel);
                k1(i9, strArrCreateStringArray, iArrCreateIntArray);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
