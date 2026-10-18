package E3;

import A0.O;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class b extends M3.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f2831G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f2832H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final n f2833I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final g f2834J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f2835K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f2836L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final H3.b f2830M = new H3.b("CastMediaOptions", null);
    public static final Parcelable.Creator<b> CREATOR = new f1(12);

    public b(String str, String str2, IBinder iBinder, g gVar, boolean z7, boolean z8) {
        n nVar;
        this.f2831G = str;
        this.f2832H = str2;
        if (iBinder == null) {
            nVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IImagePicker");
            nVar = iInterfaceQueryLocalInterface instanceof n ? (n) iInterfaceQueryLocalInterface : new n(iBinder, "com.google.android.gms.cast.framework.media.IImagePicker", 2);
        }
        this.f2833I = nVar;
        this.f2834J = gVar;
        this.f2835K = z7;
        this.f2836L = z8;
    }

    public final void i() {
        n nVar = this.f2833I;
        if (nVar != null) {
            try {
                Parcel parcelV0 = nVar.v0(2, nVar.j0());
                R3.a aVarJ0 = R3.b.j0(parcelV0.readStrongBinder());
                parcelV0.recycle();
                O.I(R3.b.v0(aVarJ0));
            } catch (RemoteException e8) {
                f2830M.a(e8, "Unable to call %s on %s.", "getWrappedClientObject", n.class.getSimpleName());
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f2831G);
        AbstractC2987b.Q(parcel, 3, this.f2832H);
        n nVar = this.f2833I;
        AbstractC2987b.L(parcel, 4, nVar == null ? null : nVar.f21992H);
        AbstractC2987b.P(parcel, 5, this.f2834J, i8);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(this.f2835K ? 1 : 0);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f2836L ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
