package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1106bb extends AbstractC2276y5 implements InterfaceC1157cb {
    @Override // com.google.android.gms.internal.ads.InterfaceC1157cb
    public final InterfaceC0771Ib i(String str) {
        InterfaceC0771Ib c0756Hb;
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        Parcel parcelN2 = n2(3, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        int i8 = BinderC0846Nb.f14908H;
        if (strongBinder == null) {
            c0756Hb = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
            c0756Hb = iInterfaceQueryLocalInterface instanceof InterfaceC0771Ib ? (InterfaceC0771Ib) iInterfaceQueryLocalInterface : new C0756Hb(strongBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter", 0);
        }
        parcelN2.recycle();
        return c0756Hb;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1157cb
    public final InterfaceC1260eb m(String str) {
        InterfaceC1260eb c1209db;
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        Parcel parcelN2 = n2(1, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c1209db = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c1209db = iInterfaceQueryLocalInterface instanceof InterfaceC1260eb ? (InterfaceC1260eb) iInterfaceQueryLocalInterface : new C1209db(strongBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter", 0);
        }
        parcelN2.recycle();
        return c1209db;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1157cb
    public final boolean o(String str) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        Parcel parcelN2 = n2(2, parcelJ0);
        ClassLoader classLoader = A5.f11962a;
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1157cb
    public final boolean s(String str) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        Parcel parcelN2 = n2(4, parcelJ0);
        ClassLoader classLoader = A5.f11962a;
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }
}
