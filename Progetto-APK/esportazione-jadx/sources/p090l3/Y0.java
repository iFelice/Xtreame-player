package p090l3;

import D0.C0117g;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class Y0 extends a {
    public static final Parcelable.Creator<Y0> CREATOR = new p016c.a(27);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f26509G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f26510H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f26511I;

    public Y0(C0117g c0117g) {
        this(c0117g.f1935a, c0117g.f1936b, c0117g.f1937c);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f26509G ? 1 : 0);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f26510H ? 1 : 0);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f26511I ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }

    public Y0(boolean z7, boolean z8, boolean z9) {
        this.f26509G = z7;
        this.f26510H = z8;
        this.f26511I = z9;
    }
}
