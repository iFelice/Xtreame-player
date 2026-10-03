package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ud, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2091ud extends AbstractC2276y5 {
    public final IBinder z3(R3.b bVar, String str, InterfaceC1157cb interfaceC1157cb) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, bVar);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(1, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        parcelN2.recycle();
        return strongBinder;
    }
}
