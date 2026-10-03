package O1;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class k0 implements Parcelable {
    public static final Parcelable.Creator<k0> CREATOR = new p016c.a(16);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f5439G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f5440H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f5441I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int[] f5442J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f5443K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int[] f5444L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public List f5445M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f5446N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f5447O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f5448P;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f5439G);
        parcel.writeInt(this.f5440H);
        parcel.writeInt(this.f5441I);
        if (this.f5441I > 0) {
            parcel.writeIntArray(this.f5442J);
        }
        parcel.writeInt(this.f5443K);
        if (this.f5443K > 0) {
            parcel.writeIntArray(this.f5444L);
        }
        parcel.writeInt(this.f5446N ? 1 : 0);
        parcel.writeInt(this.f5447O ? 1 : 0);
        parcel.writeInt(this.f5448P ? 1 : 0);
        parcel.writeList(this.f5445M);
    }
}
