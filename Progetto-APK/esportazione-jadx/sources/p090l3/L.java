package p090l3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class L extends a {
    public static final Parcelable.Creator<L> CREATOR = new p016c.a(20);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f26490G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f26491H;

    public L(String str, String str2) {
        this.f26490G = str;
        this.f26491H = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f26490G);
        AbstractC2987b.Q(parcel, 2, this.f26491H);
        AbstractC2987b.p0(iX, parcel);
    }
}
