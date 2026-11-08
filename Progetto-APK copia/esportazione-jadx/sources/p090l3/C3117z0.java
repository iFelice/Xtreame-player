package p090l3;

import B0.w0;
import M3.a;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p043f3.j;
import p043f3.p;

/* JADX INFO: renamed from: l3.z0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3117z0 extends a {
    public static final Parcelable.Creator<C3117z0> CREATOR = new p016c.a(22);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f26629G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f26630H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f26631I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C3117z0 f26632J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public IBinder f26633K;

    public C3117z0(int i8, String str, String str2, C3117z0 c3117z0, IBinder iBinder) {
        this.f26629G = i8;
        this.f26630H = str;
        this.f26631I = str2;
        this.f26632J = c3117z0;
        this.f26633K = iBinder;
    }

    public final w0 i() {
        C3117z0 c3117z0 = this.f26632J;
        return new w0(this.f26629G, this.f26630H, this.f26631I, c3117z0 == null ? null : new w0(c3117z0.f26629G, c3117z0.f26630H, c3117z0.f26631I));
    }

    public final j l() {
        w0 w0Var;
        InterfaceC3113x0 c3109v0;
        C3117z0 c3117z0 = this.f26632J;
        if (c3117z0 == null) {
            w0Var = null;
        } else {
            w0Var = new w0(c3117z0.f26629G, c3117z0.f26630H, c3117z0.f26631I);
        }
        IBinder iBinder = this.f26633K;
        if (iBinder == null) {
            c3109v0 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            c3109v0 = iInterfaceQueryLocalInterface instanceof InterfaceC3113x0 ? (InterfaceC3113x0) iInterfaceQueryLocalInterface : new C3109v0(iBinder);
        }
        return new j(this.f26629G, this.f26630H, this.f26631I, w0Var, c3109v0 != null ? new p(c3109v0) : null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f26629G);
        AbstractC2987b.Q(parcel, 2, this.f26630H);
        AbstractC2987b.Q(parcel, 3, this.f26631I);
        AbstractC2987b.P(parcel, 4, this.f26632J, i8);
        AbstractC2987b.L(parcel, 5, this.f26633K);
        AbstractC2987b.p0(iX, parcel);
    }
}
