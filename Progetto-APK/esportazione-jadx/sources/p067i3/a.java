package p067i3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class a extends M3.a {
    public static final Parcelable.Creator<a> CREATOR = new p016c.a(18);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f25561G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final IBinder f25562H;

    public a(boolean z7, IBinder iBinder) {
        this.f25561G = z7;
        this.f25562H = iBinder;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f25561G ? 1 : 0);
        AbstractC2987b.L(parcel, 2, this.f25562H);
        AbstractC2987b.p0(iX, parcel);
    }
}
