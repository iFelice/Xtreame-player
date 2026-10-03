package p067i3;

import M3.a;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.S;
import p090l3.T;
import p090l3.U;

/* JADX INFO: loaded from: classes.dex */
public final class d extends a {
    public static final Parcelable.Creator<d> CREATOR = new p016c.a(19);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f25570G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final U f25571H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final IBinder f25572I;

    public d(boolean z7, IBinder iBinder, IBinder iBinder2) {
        U s7;
        this.f25570G = z7;
        if (iBinder != null) {
            int i8 = T.f26499G;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            s7 = iInterfaceQueryLocalInterface instanceof U ? (U) iInterfaceQueryLocalInterface : new S(iBinder);
        } else {
            s7 = null;
        }
        this.f25571H = s7;
        this.f25572I = iBinder2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f25570G ? 1 : 0);
        U u7 = this.f25571H;
        AbstractC2987b.L(parcel, 2, u7 == null ? null : u7.asBinder());
        AbstractC2987b.L(parcel, 3, this.f25572I);
        AbstractC2987b.p0(iX, parcel);
    }
}
