package p086l;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import p016c.a;

/* JADX INFO: loaded from: classes.dex */
public final class U extends View.BaseSavedState {
    public static final Parcelable.Creator<U> CREATOR = new a(2);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f26181G;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        super.writeToParcel(parcel, i8);
        parcel.writeByte(this.f26181G ? (byte) 1 : (byte) 0);
    }
}
