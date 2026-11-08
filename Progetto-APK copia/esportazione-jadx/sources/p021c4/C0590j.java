package p021c4;

import J3.v;
import M3.a;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: c4.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0590j extends a {
    public static final Parcelable.Creator<C0590j> CREATOR = new v(7);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Bundle f11220G;

    public C0590j(Bundle bundle) {
        this.f11220G = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.J(parcel, 1, this.f11220G);
        AbstractC2987b.p0(iX, parcel);
    }
}
