package D3;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class E extends M3.a {
    public static final Parcelable.Creator<E> CREATOR = new f1(16);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f2330G;

    public E(boolean z7) {
        this.f2330G = z7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f2330G ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
