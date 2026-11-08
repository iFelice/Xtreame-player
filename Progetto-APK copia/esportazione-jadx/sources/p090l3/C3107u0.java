package p090l3;

import R3.b;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.android.gms.internal.ads.InterfaceC1157cb;

/* JADX INFO: renamed from: l3.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3107u0 extends AbstractC2276y5 {
    public final InterfaceC3105t0 z3(b bVar, InterfaceC1157cb interfaceC1157cb) {
        InterfaceC3105t0 c3101r0;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, bVar);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(1, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c3101r0 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            c3101r0 = iInterfaceQueryLocalInterface instanceof InterfaceC3105t0 ? (InterfaceC3105t0) iInterfaceQueryLocalInterface : new C3101r0(strongBinder);
        }
        parcelN2.recycle();
        return c3101r0;
    }
}
