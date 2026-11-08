package J3;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class w extends M3.a {
    public static final Parcelable.Creator<w> CREATOR = new v(1);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f4180G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f4181H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f4182I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f4183J;

    public w(String str, int i8, int i9, boolean z7) {
        this.f4180G = z7;
        this.f4181H = str;
        this.f4182I = AbstractC2987b.W(i8) - 1;
        this.f4183J = com.bumptech.glide.c.w(i9) - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f4180G ? 1 : 0);
        AbstractC2987b.Q(parcel, 2, this.f4181H);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f4182I);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f4183J);
        AbstractC2987b.p0(iX, parcel);
    }
}
