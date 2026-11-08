package p090l3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class V0 extends a {
    public static final Parcelable.Creator<V0> CREATOR = new p016c.a(26);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f26506G;

    public V0(String str) {
        this.f26506G = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 15, this.f26506G);
        AbstractC2987b.p0(iX, parcel);
    }
}
