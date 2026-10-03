package A3;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class d extends M3.a {
    public static final Parcelable.Creator<d> CREATOR = new f1(10);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f639G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f640H;

    public d(String str, int i8) {
        this.f639G = str;
        this.f640H = i8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f639G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f640H);
        AbstractC2987b.p0(iX, parcel);
    }
}
