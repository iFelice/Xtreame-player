package com.google.android.gms.internal.pal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2719g2 extends AbstractC2276y5 {
    public final IBinder z3(R3.b bVar) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString("h.3.2.2/n.android.3.2.2");
        AbstractC2671a2.b(parcelJ0, bVar);
        Parcel parcelU3 = u3(2, parcelJ0);
        IBinder strongBinder = parcelU3.readStrongBinder();
        parcelU3.recycle();
        return strongBinder;
    }
}
