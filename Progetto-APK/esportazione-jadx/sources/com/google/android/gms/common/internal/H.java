package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: loaded from: classes.dex */
public final class H extends AbstractC2276y5 implements J {
    public final boolean zzi() {
        Parcel parcelY = Y(7, j0());
        int i8 = Y3.a.f8133a;
        boolean z7 = parcelY.readInt() != 0;
        parcelY.recycle();
        return z7;
    }
}
