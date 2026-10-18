package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: loaded from: classes.dex */
public final class L extends AbstractC2276y5 implements M {
    public L(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver", 4);
    }

    @Override // com.google.android.gms.internal.measurement.M
    public final void V0(Bundle bundle) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, bundle);
        r1(1, parcelJ0);
    }
}
