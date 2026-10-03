package com.google.android.gms.internal.pal;

import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.e2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2703e2 extends AbstractC2276y5 implements InterfaceC2711f2 {
    @Override // com.google.android.gms.internal.pal.InterfaceC2711f2
    public final String zze(R3.a aVar, String str) {
        Parcel parcelJ0 = j0();
        AbstractC2671a2.b(parcelJ0, aVar);
        parcelJ0.writeString(HttpUrl.FRAGMENT_ENCODE_SET);
        Parcel parcelU3 = u3(8, parcelJ0);
        String string = parcelU3.readString();
        parcelU3.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2711f2
    public final String zzg(R3.a aVar, byte[] bArr) {
        Parcel parcelJ0 = j0();
        AbstractC2671a2.b(parcelJ0, aVar);
        parcelJ0.writeByteArray(null);
        Parcel parcelU3 = u3(12, parcelJ0);
        String string = parcelU3.readString();
        parcelU3.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2711f2
    public final String zzk(R3.a aVar, R3.a aVar2, R3.a aVar3) {
        Parcel parcelJ0 = j0();
        AbstractC2671a2.b(parcelJ0, aVar);
        AbstractC2671a2.b(parcelJ0, aVar2);
        AbstractC2671a2.b(parcelJ0, aVar3);
        Parcel parcelU3 = u3(14, parcelJ0);
        String string = parcelU3.readString();
        parcelU3.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2711f2
    public final void zzl(R3.a aVar) {
        Parcel parcelJ0 = j0();
        AbstractC2671a2.b(parcelJ0, aVar);
        y3(9, parcelJ0);
    }
}
