package p021c4;

import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: c4.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0575e extends a {
    public static final Parcelable.Creator<C0575e> CREATOR = new v(5);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f11153G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f11154H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f11155I;

    public C0575e(int i8, long j8, long j9) {
        this.f11153G = j8;
        this.f11154H = i8;
        this.f11155I = j9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 8);
        parcel.writeLong(this.f11153G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f11154H);
        AbstractC2987b.v0(parcel, 3, 8);
        parcel.writeLong(this.f11155I);
        AbstractC2987b.p0(iX, parcel);
    }
}
