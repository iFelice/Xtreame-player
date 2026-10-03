package p113o3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: renamed from: o3.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3158p extends a {
    public static final Parcelable.Creator<C3158p> CREATOR = new f1(7);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f27987G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f27988H;

    public C3158p(String str, int i8) {
        this.f27987G = str == null ? HttpUrl.FRAGMENT_ENCODE_SET : str;
        this.f27988H = i8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f27987G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f27988H);
        AbstractC2987b.p0(iX, parcel);
    }
}
