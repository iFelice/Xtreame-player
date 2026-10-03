package p113o3;

import R3.a;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: loaded from: classes.dex */
public final class w extends AbstractC2276y5 implements x {
    @Override // p113o3.x
    public final void zze(a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(2, parcelJ0);
    }

    @Override // p113o3.x
    public final boolean zzf(a aVar, String str, String str2) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        Parcel parcelN2 = n2(1, parcelJ0);
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // p113o3.x
    public final boolean zzg(a aVar, p097m3.a aVar2) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, aVar2);
        Parcel parcelN2 = n2(3, parcelJ0);
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }
}
