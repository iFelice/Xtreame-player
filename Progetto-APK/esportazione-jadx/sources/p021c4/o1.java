package p021c4;

import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class o1 extends a {
    public static final Parcelable.Creator<o1> CREATOR = new v(10);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f11318G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f11319H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f11320I;

    public o1(int i8, long j8, String str) {
        this.f11318G = str;
        this.f11319H = j8;
        this.f11320I = i8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f11318G);
        AbstractC2987b.v0(parcel, 2, 8);
        parcel.writeLong(this.f11319H);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f11320I);
        AbstractC2987b.p0(iX, parcel);
    }
}
