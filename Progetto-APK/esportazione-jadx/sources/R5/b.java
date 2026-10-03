package R5;

import J3.v;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new v(22);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f6309G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public String f6310H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f6311I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f6312J;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f6310H);
    }
}
