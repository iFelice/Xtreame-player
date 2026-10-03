package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class Z extends AbstractC2276y5 implements F {
    @Override // com.google.android.gms.common.internal.F
    public final int zzc() {
        Parcel parcelY = Y(2, j0());
        int i8 = parcelY.readInt();
        parcelY.recycle();
        return i8;
    }

    @Override // com.google.android.gms.common.internal.F
    public final R3.a zzd() {
        return U2.f(Y(1, j0()));
    }
}
