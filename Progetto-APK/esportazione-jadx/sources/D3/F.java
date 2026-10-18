package D3;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class F extends M3.a {
    public static final Parcelable.Creator<F> CREATOR = new f1(17);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f2331G;

    public F(int i8) {
        this.f2331G = i8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f2331G);
        AbstractC2987b.p0(iX, parcel);
    }
}
