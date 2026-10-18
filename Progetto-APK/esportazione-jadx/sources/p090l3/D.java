package p090l3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.android.gms.internal.ads.InterfaceC1709n9;
import com.google.android.gms.internal.ads.InterfaceC1813p9;
import com.google.android.gms.internal.ads.InterfaceC2124v9;
import com.google.android.gms.internal.ads.M8;

/* JADX INFO: loaded from: classes.dex */
public final class D extends AbstractC2276y5 implements F {
    public D(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder", 0);
    }

    @Override // p090l3.F
    public final void J1(InterfaceC3110w interfaceC3110w) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC3110w);
        O2(2, parcelJ0);
    }

    @Override // p090l3.F
    public final void L2(String str, InterfaceC1813p9 interfaceC1813p9, InterfaceC1709n9 interfaceC1709n9) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1813p9);
        A5.e(parcelJ0, interfaceC1709n9);
        O2(5, parcelJ0);
    }

    @Override // p090l3.F
    public final void e1(InterfaceC2124v9 interfaceC2124v9) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC2124v9);
        O2(10, parcelJ0);
    }

    @Override // p090l3.F
    public final void i3(M8 m8) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, m8);
        O2(6, parcelJ0);
    }

    @Override // p090l3.F
    public final C zze() {
        C a8;
        Parcel parcelN2 = n2(1, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            a8 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            a8 = iInterfaceQueryLocalInterface instanceof C ? (C) iInterfaceQueryLocalInterface : new A(strongBinder, "com.google.android.gms.ads.internal.client.IAdLoader", 0);
        }
        parcelN2.recycle();
        return a8;
    }
}
