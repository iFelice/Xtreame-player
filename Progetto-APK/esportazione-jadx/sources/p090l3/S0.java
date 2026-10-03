package p090l3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;

/* JADX INFO: loaded from: classes.dex */
public final class S0 extends AbstractBinderC2328z5 implements InterfaceC3100q0 {
    public S0() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    public static InterfaceC3100q0 z3(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        return iInterfaceQueryLocalInterface instanceof InterfaceC3100q0 ? (InterfaceC3100q0) iInterfaceQueryLocalInterface : new C3098p0(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            A5.b(parcel);
            parcel2.writeNoException();
            return true;
        }
        if (i8 != 2) {
            return false;
        }
        parcel2.writeNoException();
        ClassLoader classLoader = A5.f11962a;
        parcel2.writeInt(1);
        return true;
    }

    @Override // p090l3.InterfaceC3100q0
    public final boolean zzf() {
        return true;
    }

    @Override // p090l3.InterfaceC3100q0
    public final void C2(e1 e1Var) {
    }
}
