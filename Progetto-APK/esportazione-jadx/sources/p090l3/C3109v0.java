package p090l3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: l3.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3109v0 extends AbstractC2276y5 implements InterfaceC3113x0 {
    public C3109v0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo", 0);
    }

    @Override // p090l3.InterfaceC3113x0
    public final Bundle zze() {
        Parcel parcelN2 = n2(5, j0());
        Bundle bundle = (Bundle) A5.a(parcelN2, Bundle.CREATOR);
        parcelN2.recycle();
        return bundle;
    }

    @Override // p090l3.InterfaceC3113x0
    public final g1 zzf() {
        Parcel parcelN2 = n2(4, j0());
        g1 g1Var = (g1) A5.a(parcelN2, g1.CREATOR);
        parcelN2.recycle();
        return g1Var;
    }

    @Override // p090l3.InterfaceC3113x0
    public final String zzg() {
        Parcel parcelN2 = n2(1, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // p090l3.InterfaceC3113x0
    public final String zzh() {
        Parcel parcelN2 = n2(6, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // p090l3.InterfaceC3113x0
    public final String zzi() {
        Parcel parcelN2 = n2(2, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // p090l3.InterfaceC3113x0
    public final List zzj() {
        Parcel parcelN2 = n2(3, j0());
        ArrayList arrayListCreateTypedArrayList = parcelN2.createTypedArrayList(g1.CREATOR);
        parcelN2.recycle();
        return arrayListCreateTypedArrayList;
    }
}
