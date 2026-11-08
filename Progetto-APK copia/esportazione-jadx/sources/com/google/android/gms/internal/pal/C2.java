package com.google.android.gms.internal.pal;

import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: loaded from: classes.dex */
public final class C2 extends AbstractC2276y5 implements D2 {
    @Override // com.google.android.gms.internal.pal.D2
    public final void G(R3.b bVar, String str) {
        Parcel parcelJ0 = j0();
        AbstractC2671a2.b(parcelJ0, bVar);
        parcelJ0.writeString("ADSHIELD");
        parcelJ0.writeString(null);
        y3(8, parcelJ0);
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void a() {
        y3(3, j0());
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void zzg(int i8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        y3(7, parcelJ0);
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void zzh(int[] iArr) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeIntArray(null);
        y3(4, parcelJ0);
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void zzi(int i8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        y3(6, parcelJ0);
    }

    @Override // com.google.android.gms.internal.pal.D2
    public final void zzj(byte[] bArr) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeByteArray(bArr);
        y3(5, parcelJ0);
    }
}
