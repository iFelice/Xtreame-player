package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class N8 extends AbstractC2276y5 implements P8 {
    public N8(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo", 0);
    }

    @Override // com.google.android.gms.internal.ads.P8
    public final String zzg() {
        Parcel parcelN2 = n2(2, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.P8
    public final ArrayList zzh() {
        Parcel parcelN2 = n2(3, j0());
        ArrayList arrayList = parcelN2.readArrayList(A5.f11962a);
        parcelN2.recycle();
        return arrayList;
    }
}
