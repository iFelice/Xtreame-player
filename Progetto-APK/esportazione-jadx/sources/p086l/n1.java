package p086l;

import S.b;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class n1 extends b {
    public static final Parcelable.Creator<n1> CREATOR = new m1(0);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f26321I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f26322J;

    public n1(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f26321I = parcel.readInt();
        this.f26322J = parcel.readInt() != 0;
    }

    @Override // S.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        super.writeToParcel(parcel, i8);
        parcel.writeInt(this.f26321I);
        parcel.writeInt(this.f26322J ? 1 : 0);
    }
}
