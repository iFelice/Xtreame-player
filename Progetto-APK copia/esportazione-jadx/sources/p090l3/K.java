package p090l3;

import R3.b;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.android.gms.internal.ads.InterfaceC1157cb;

/* JADX INFO: loaded from: classes.dex */
public final class K extends AbstractC2276y5 {
    public K(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator", 0);
    }

    public final IBinder z3(b bVar, d1 d1Var, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, bVar);
        A5.c(parcelJ0, d1Var);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        parcelJ0.writeInt(i8);
        Parcel parcelN2 = n2(2, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        parcelN2.recycle();
        return strongBinder;
    }
}
