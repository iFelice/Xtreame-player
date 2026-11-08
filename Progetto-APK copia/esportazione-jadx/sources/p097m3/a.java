package p097m3;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class a extends M3.a {
    public static final Parcelable.Creator<a> CREATOR = new f1(3);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f27281G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f27282H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f27283I;

    public a(String str, String str2, String str3) {
        this.f27281G = str;
        this.f27282H = str2;
        this.f27283I = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f27281G);
        AbstractC2987b.Q(parcel, 2, this.f27282H);
        AbstractC2987b.Q(parcel, 3, this.f27283I);
        AbstractC2987b.p0(iX, parcel);
    }
}
