package A3;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class c extends M3.a {
    public static final Parcelable.Creator<c> CREATOR = new f1(9);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f637G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f638H;

    public c(String str, String str2) {
        this.f637G = str;
        this.f638H = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f637G);
        AbstractC2987b.Q(parcel, 2, this.f638H);
        AbstractC2987b.p0(iX, parcel);
    }
}
