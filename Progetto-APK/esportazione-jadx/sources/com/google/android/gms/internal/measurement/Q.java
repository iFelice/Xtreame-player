package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: loaded from: classes.dex */
public final class Q extends AbstractC2276y5 implements S {
    public Q(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy", 4);
    }

    @Override // com.google.android.gms.internal.measurement.S
    public final int J() {
        Parcel parcelV0 = v0(2, j0());
        int i8 = parcelV0.readInt();
        parcelV0.recycle();
        return i8;
    }

    @Override // com.google.android.gms.internal.measurement.S
    public final void U0(long j8, Bundle bundle, String str, String str2) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        AbstractC2658y.c(parcelJ0, bundle);
        parcelJ0.writeLong(j8);
        r1(1, parcelJ0);
    }
}
