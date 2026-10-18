package p090l3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class L0 extends a {
    public static final Parcelable.Creator<L0> CREATOR = new p016c.a(23);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f26492G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f26493H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f26494I;

    public L0(int i8, int i9, String str) {
        this.f26492G = i8;
        this.f26493H = i9;
        this.f26494I = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f26492G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f26493H);
        AbstractC2987b.Q(parcel, 3, this.f26494I);
        AbstractC2987b.p0(iX, parcel);
    }
}
