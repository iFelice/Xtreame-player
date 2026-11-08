package p090l3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.InterfaceC1157cb;

/* JADX INFO: renamed from: l3.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC3072c0 extends AbstractBinderC2328z5 implements InterfaceC3074d0 {
    public static InterfaceC3074d0 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
        return iInterfaceQueryLocalInterface instanceof InterfaceC3074d0 ? (InterfaceC3074d0) iInterfaceQueryLocalInterface : new C3070b0(iBinder, "com.google.android.gms.ads.internal.client.ILiteSdkInfo", 0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            L0 liteSdkVersion = getLiteSdkVersion();
            parcel2.writeNoException();
            A5.d(parcel2, liteSdkVersion);
        } else {
            if (i8 != 2) {
                return false;
            }
            InterfaceC1157cb adapterCreator = getAdapterCreator();
            parcel2.writeNoException();
            A5.e(parcel2, adapterCreator);
        }
        return true;
    }
}
