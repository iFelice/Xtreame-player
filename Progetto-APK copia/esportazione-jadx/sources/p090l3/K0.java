package p090l3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;

/* JADX INFO: loaded from: classes.dex */
public final class K0 extends AbstractBinderC2328z5 implements InterfaceC3086j0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f26488G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f26489H;

    public K0(String str, String str2) {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        this.f26488G = str;
        this.f26489H = str2;
    }

    public static InterfaceC3086j0 z3(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return iInterfaceQueryLocalInterface instanceof InterfaceC3086j0 ? (InterfaceC3086j0) iInterfaceQueryLocalInterface : new C3084i0(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdReason", 0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            parcel2.writeNoException();
            parcel2.writeString(this.f26488G);
            return true;
        }
        if (i8 != 2) {
            return false;
        }
        parcel2.writeNoException();
        parcel2.writeString(this.f26489H);
        return true;
    }

    @Override // p090l3.InterfaceC3086j0
    public final String zze() {
        return this.f26488G;
    }

    @Override // p090l3.InterfaceC3086j0
    public final String zzf() {
        return this.f26489H;
    }
}
