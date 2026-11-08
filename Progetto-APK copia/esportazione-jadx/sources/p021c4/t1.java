package p021c4;

import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class t1 extends a {
    public static final Parcelable.Creator<t1> CREATOR = new v(13);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f11370G;

    public t1(List list) {
        this.f11370G = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.U(parcel, 1, this.f11370G);
        AbstractC2987b.p0(iX, parcel);
    }
}
