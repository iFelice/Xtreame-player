package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ae, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1057ae extends AbstractC2276y5 implements InterfaceC1160ce {
    public final InterfaceC1016Zd z3(R3.b bVar, InterfaceC1157cb interfaceC1157cb) {
        InterfaceC1016Zd c0988Xd;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, bVar);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(2, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c0988Xd = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            c0988Xd = iInterfaceQueryLocalInterface instanceof InterfaceC1016Zd ? (InterfaceC1016Zd) iInterfaceQueryLocalInterface : new C0988Xd(strongBinder);
        }
        parcelN2.recycle();
        return c0988Xd;
    }
}
