package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ec, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1261ec extends AbstractC2276y5 implements InterfaceC1365gc {
    public final InterfaceC1210dc z3(R3.b bVar, InterfaceC1157cb interfaceC1157cb) {
        InterfaceC1210dc c1158cc;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, bVar);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(1, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c1158cc = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            c1158cc = iInterfaceQueryLocalInterface instanceof InterfaceC1210dc ? (InterfaceC1210dc) iInterfaceQueryLocalInterface : new C1158cc(strongBinder);
        }
        parcelN2.recycle();
        return c1158cc;
    }
}
