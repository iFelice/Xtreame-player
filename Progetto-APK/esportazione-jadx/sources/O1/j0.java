package O1;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class j0 implements Parcelable {
    public static final Parcelable.Creator<j0> CREATOR = new p016c.a(15);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f5431G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f5432H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int[] f5433I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f5434J;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.f5431G + ", mGapDir=" + this.f5432H + ", mHasUnwantedGapAfter=" + this.f5434J + ", mGapPerSpan=" + Arrays.toString(this.f5433I) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f5431G);
        parcel.writeInt(this.f5432H);
        parcel.writeInt(this.f5434J ? 1 : 0);
        int[] iArr = this.f5433I;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f5433I);
        }
    }
}
