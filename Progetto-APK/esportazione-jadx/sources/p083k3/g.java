package p083k3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class g extends a {
    public static final Parcelable.Creator<g> CREATOR = new f1(8);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f25958G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f25959H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f25960I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f25961J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final float f25962K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f25963L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f25964M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f25965N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f25966O;

    public g(boolean z7, boolean z8, String str, boolean z9, float f8, int i8, boolean z10, boolean z11, boolean z12) {
        this.f25958G = z7;
        this.f25959H = z8;
        this.f25960I = str;
        this.f25961J = z9;
        this.f25962K = f8;
        this.f25963L = i8;
        this.f25964M = z10;
        this.f25965N = z11;
        this.f25966O = z12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f25958G ? 1 : 0);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f25959H ? 1 : 0);
        AbstractC2987b.Q(parcel, 4, this.f25960I);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f25961J ? 1 : 0);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeFloat(this.f25962K);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f25963L);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f25964M ? 1 : 0);
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(this.f25965N ? 1 : 0);
        AbstractC2987b.v0(parcel, 10, 4);
        parcel.writeInt(this.f25966O ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }

    public g(boolean z7, boolean z8, boolean z9, float f8, boolean z10, boolean z11, boolean z12) {
        this(z7, z8, null, z9, f8, -1, z10, z11, z12);
    }
}
