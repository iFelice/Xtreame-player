package p090l3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class e1 extends a {
    public static final Parcelable.Creator<e1> CREATOR = new f1(0);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f26565G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f26566H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f26567I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f26568J;

    public e1(int i8, int i9, long j8, String str) {
        this.f26565G = i8;
        this.f26566H = i9;
        this.f26567I = str;
        this.f26568J = j8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f26565G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f26566H);
        AbstractC2987b.Q(parcel, 3, this.f26567I);
        AbstractC2987b.v0(parcel, 4, 8);
        parcel.writeLong(this.f26568J);
        AbstractC2987b.p0(iX, parcel);
    }
}
