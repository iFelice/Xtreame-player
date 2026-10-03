package E3;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class e extends M3.a {
    public static final Parcelable.Creator<e> CREATOR = new f1(15);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f2853G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f2854H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f2855I;

    public e(String str, int i8, String str2) {
        this.f2853G = str;
        this.f2854H = i8;
        this.f2855I = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f2853G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f2854H);
        AbstractC2987b.Q(parcel, 4, this.f2855I);
        AbstractC2987b.p0(iX, parcel);
    }
}
