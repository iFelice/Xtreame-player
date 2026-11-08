package Y;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: renamed from: Y.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0391c implements Parcelable {
    public static final Parcelable.Creator<C0391c> CREATOR = new p016c.a(5);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f7851G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f7852H;

    public C0391c(Parcel parcel) {
        this.f7851G = parcel.createStringArrayList();
        this.f7852H = parcel.createTypedArrayList(C0390b.CREATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeStringList(this.f7851G);
        parcel.writeTypedList(this.f7852H);
    }
}
