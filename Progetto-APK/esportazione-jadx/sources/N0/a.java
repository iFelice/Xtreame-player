package N0;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new p016c.a(13);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f4933G;

    public a(int i8) {
        this.f4933G = (i8 & 2) != 0 ? i8 | 1 : i8;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        return this.f4933G == ((a) obj).f4933G;
    }

    public final int hashCode() {
        return this.f4933G;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f4933G);
    }
}
