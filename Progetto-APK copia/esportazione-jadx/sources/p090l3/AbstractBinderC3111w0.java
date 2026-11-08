package p090l3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.BinderC1630lj;

/* JADX INFO: renamed from: l3.w0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC3111w0 extends AbstractBinderC2328z5 implements InterfaceC3113x0 {
    public static InterfaceC3113x0 z3(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        return iInterfaceQueryLocalInterface instanceof InterfaceC3113x0 ? (InterfaceC3113x0) iInterfaceQueryLocalInterface : new C3109v0(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        switch (i8) {
            case 1:
                parcel2.writeNoException();
                parcel2.writeString(((BinderC1630lj) this).f19824G);
                return true;
            case 2:
                parcel2.writeNoException();
                parcel2.writeString(((BinderC1630lj) this).f19825H);
                return true;
            case 3:
                parcel2.writeNoException();
                parcel2.writeTypedList(((BinderC1630lj) this).f19828K);
                return true;
            case 4:
                g1 g1VarZzf = ((BinderC1630lj) this).zzf();
                parcel2.writeNoException();
                A5.d(parcel2, g1VarZzf);
                return true;
            case 5:
                parcel2.writeNoException();
                A5.d(parcel2, ((BinderC1630lj) this).f19832O);
                return true;
            case 6:
                parcel2.writeNoException();
                parcel2.writeString(((BinderC1630lj) this).f19826I);
                return true;
            default:
                return false;
        }
    }
}
