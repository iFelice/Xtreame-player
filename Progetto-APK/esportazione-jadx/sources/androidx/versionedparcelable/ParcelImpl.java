package androidx.versionedparcelable;

import Z1.b;
import Z1.c;
import android.os.Parcel;
import android.os.Parcelable;
import p016c.a;

/* JADX INFO: loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new a(17);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final c f9717G;

    public ParcelImpl(c cVar) {
        this.f9717G = cVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        new b(parcel).l(this.f9717G);
    }

    public ParcelImpl(Parcel parcel) {
        this.f9717G = new b(parcel).h();
    }
}
