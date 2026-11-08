package androidx.leanback.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: androidx.leanback.widget.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0490p implements Parcelable {
    public static final Parcelable.Creator<C0490p> CREATOR = new p016c.a(9);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f9320G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Bundle f9321H;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f9320G);
        parcel.writeBundle(this.f9321H);
    }
}
