package p044f4;

import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class h extends a {
    public static final Parcelable.Creator<h> CREATOR = new v(18);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f25211G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C f25212H;

    public h(int i8, C c8) {
        this.f25211G = i8;
        this.f25212H = c8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f25211G);
        AbstractC2987b.P(parcel, 2, this.f25212H, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
