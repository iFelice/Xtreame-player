package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class S8 extends AbstractC2276y5 implements T8 {
    public S8(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage", 0);
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final double zzb() {
        Parcel parcelN2 = n2(3, j0());
        double d6 = parcelN2.readDouble();
        parcelN2.recycle();
        return d6;
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final int zzc() {
        Parcel parcelN2 = n2(5, j0());
        int i8 = parcelN2.readInt();
        parcelN2.recycle();
        return i8;
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final int zzd() {
        Parcel parcelN2 = n2(4, j0());
        int i8 = parcelN2.readInt();
        parcelN2.recycle();
        return i8;
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final Uri zze() {
        Parcel parcelN2 = n2(2, j0());
        Uri uri = (Uri) A5.a(parcelN2, Uri.CREATOR);
        parcelN2.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final R3.a zzf() {
        return com.google.protobuf.U2.f(n2(1, j0()));
    }
}
