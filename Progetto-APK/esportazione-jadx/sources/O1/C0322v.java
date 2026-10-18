package O1;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: O1.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0322v implements Parcelable {
    public static final Parcelable.Creator<C0322v> CREATOR = new p016c.a(14);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f5534G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f5535H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f5536I;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f5534G);
        parcel.writeInt(this.f5535H);
        parcel.writeInt(this.f5536I ? 1 : 0);
    }
}
