package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class O8 extends AbstractBinderC2328z5 implements P8 {
    public static P8 z3(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        return iInterfaceQueryLocalInterface instanceof P8 ? (P8) iInterfaceQueryLocalInterface : new N8(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 2) {
            parcel2.writeNoException();
            parcel2.writeString(((H8) this).f13720G);
            return true;
        }
        if (i8 != 3) {
            return false;
        }
        ArrayList arrayList = ((H8) this).f13722I;
        parcel2.writeNoException();
        parcel2.writeList(arrayList);
        return true;
    }
}
