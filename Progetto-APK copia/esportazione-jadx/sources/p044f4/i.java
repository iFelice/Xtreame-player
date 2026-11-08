package p044f4;

import J3.b;
import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.D;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class i extends a {
    public static final Parcelable.Creator<i> CREATOR = new v(19);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f25213G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final b f25214H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final D f25215I;

    public i(int i8, b bVar, D d6) {
        this.f25213G = i8;
        this.f25214H = bVar;
        this.f25215I = d6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f25213G);
        AbstractC2987b.P(parcel, 2, this.f25214H, i8);
        AbstractC2987b.P(parcel, 3, this.f25215I, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
