package Y;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class L implements Parcelable {
    public static final Parcelable.Creator<L> CREATOR = new p016c.a(7);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public ArrayList f7748G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ArrayList f7749H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C0390b[] f7750I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f7751J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f7752K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ArrayList f7753L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ArrayList f7754M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ArrayList f7755N;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeStringList(this.f7748G);
        parcel.writeStringList(this.f7749H);
        parcel.writeTypedArray(this.f7750I, i8);
        parcel.writeInt(this.f7751J);
        parcel.writeString(this.f7752K);
        parcel.writeStringList(this.f7753L);
        parcel.writeTypedList(this.f7754M);
        parcel.writeTypedList(this.f7755N);
    }
}
