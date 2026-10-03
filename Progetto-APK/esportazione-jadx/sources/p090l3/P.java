package p090l3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.BinderC1800ox;
import com.google.android.gms.internal.ads.C1904qx;
import com.google.android.gms.internal.ads.InterfaceC1137c6;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.InterfaceC1884qd;
import java.util.ArrayList;
import p043f3.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class P extends AbstractBinderC2328z5 {
    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        O o4;
        J j8;
        switch (i8) {
            case 1:
                ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(T0.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    o4 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
                    o4 = iInterfaceQueryLocalInterface instanceof O ? (O) iInterfaceQueryLocalInterface : new O(strongBinder, "com.google.android.gms.ads.internal.client.IAdPreloadCallback", 0);
                }
                A5.b(parcel);
                ((BinderC1800ox) this).B3(arrayListCreateTypedArrayList, o4);
                parcel2.writeNoException();
                return true;
            case 2:
                String string = parcel.readString();
                A5.b(parcel);
                boolean zE3 = ((BinderC1800ox) this).E3(string);
                parcel2.writeNoException();
                parcel2.writeInt(zE3 ? 1 : 0);
                return true;
            case 3:
                String string2 = parcel.readString();
                A5.b(parcel);
                InterfaceC1884qd interfaceC1884qdA3 = ((BinderC1800ox) this).A3(string2);
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC1884qdA3);
                return true;
            case 4:
                String string3 = parcel.readString();
                A5.b(parcel);
                boolean zC3 = ((BinderC1800ox) this).C3(string3);
                parcel2.writeNoException();
                parcel2.writeInt(zC3 ? 1 : 0);
                return true;
            case 5:
                String string4 = parcel.readString();
                A5.b(parcel);
                InterfaceC1137c6 interfaceC1137c6Z3 = ((BinderC1800ox) this).z3(string4);
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC1137c6Z3);
                return true;
            case 6:
                String string5 = parcel.readString();
                A5.b(parcel);
                boolean zD3 = ((BinderC1800ox) this).D3(string5);
                parcel2.writeNoException();
                parcel2.writeInt(zD3 ? 1 : 0);
                return true;
            case 7:
                String string6 = parcel.readString();
                A5.b(parcel);
                C1904qx c1904qx = ((BinderC1800ox) this).f20360G;
                synchronized (c1904qx) {
                    j8 = (J) c1904qx.d(J.class, string6, a.INTERSTITIAL).orElse(null);
                }
                parcel2.writeNoException();
                A5.e(parcel2, j8);
                return true;
            case 8:
                InterfaceC1157cb interfaceC1157cbZ3 = BinderC1054ab.z3(parcel.readStrongBinder());
                A5.b(parcel);
                ((BinderC1800ox) this).f20360G.f20661c.f21409e = interfaceC1157cbZ3;
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
