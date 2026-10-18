package E3;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class c extends M3.a {
    public static final Parcelable.Creator<c> CREATOR = new f1(14);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f2837G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f2838H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f2839I;

    public c(int i8, int i9, int i10) {
        this.f2837G = i8;
        this.f2838H = i9;
        this.f2839I = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f2837G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f2838H);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f2839I);
        AbstractC2987b.p0(iX, parcel);
    }
}
