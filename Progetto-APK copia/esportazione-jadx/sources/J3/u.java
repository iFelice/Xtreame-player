package J3;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class u extends M3.a {
    public static final Parcelable.Creator<u> CREATOR = new v(0);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f4173G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f4174H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f4175I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Context f4176J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f4177K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f4178L;

    public u(String str, boolean z7, boolean z8, IBinder iBinder, boolean z9, boolean z10) {
        this.f4173G = str;
        this.f4174H = z7;
        this.f4175I = z8;
        this.f4176J = (Context) R3.b.v0(R3.b.j0(iBinder));
        this.f4177K = z9;
        this.f4178L = z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f4173G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f4174H ? 1 : 0);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f4175I ? 1 : 0);
        AbstractC2987b.L(parcel, 4, new R3.b(this.f4176J));
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f4177K ? 1 : 0);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(this.f4178L ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
