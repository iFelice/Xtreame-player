package p090l3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class E0 extends a {
    public static final Parcelable.Creator<E0> CREATOR = new p016c.a(21);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f26448G;

    public E0(int i8) {
        this.f26448G = i8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f26448G);
        AbstractC2987b.p0(iX, parcel);
    }
}
