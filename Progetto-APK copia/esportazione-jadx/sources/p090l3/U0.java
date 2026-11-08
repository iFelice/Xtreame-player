package p090l3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class U0 extends a {
    public static final Parcelable.Creator<U0> CREATOR = new p016c.a(25);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f26504G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f26505H;

    public U0(int i8, int i9) {
        this.f26504G = i8;
        this.f26505H = i9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f26504G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f26505H);
        AbstractC2987b.p0(iX, parcel);
    }
}
