package S;

import android.os.Parcel;
import android.os.Parcelable;
import p086l.m1;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements Parcelable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Parcelable f6316G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final a f6315H = new a();
    public static final Parcelable.Creator<b> CREATOR = new m1(2);

    public b() {
        this.f6316G = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i8) {
        parcel.writeParcelable(this.f6316G, i8);
    }

    public b(Parcelable parcelable) {
        if (parcelable != null) {
            this.f6316G = parcelable == f6315H ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public b(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f6316G = parcelable == null ? f6315H : parcelable;
    }
}
