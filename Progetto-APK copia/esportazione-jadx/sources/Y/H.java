package Y;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class H implements Parcelable {
    public static final Parcelable.Creator<H> CREATOR = new p016c.a(6);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f7703G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f7704H;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f7703G);
        parcel.writeInt(this.f7704H);
    }
}
