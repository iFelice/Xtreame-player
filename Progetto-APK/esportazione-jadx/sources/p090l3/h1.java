package p090l3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class h1 extends a {
    public static final Parcelable.Creator<h1> CREATOR = new f1(2);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f26590G;

    public h1(int i8) {
        this.f26590G = i8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f26590G);
        AbstractC2987b.p0(iX, parcel);
    }
}
