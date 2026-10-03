package p090l3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: renamed from: l3.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3084i0 extends AbstractC2276y5 implements InterfaceC3086j0 {
    @Override // p090l3.InterfaceC3086j0
    public final String zze() {
        Parcel parcelN2 = n2(1, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // p090l3.InterfaceC3086j0
    public final String zzf() {
        Parcel parcelN2 = n2(2, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }
}
