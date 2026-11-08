package p098m4;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import p086l.m1;

/* JADX INFO: loaded from: classes.dex */
public final class b extends S.b {
    public static final Parcelable.Creator<b> CREATOR = new m1(6);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f27285I;

    public b(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f27285I = parcel.readInt();
    }

    @Override // S.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        super.writeToParcel(parcel, i8);
        parcel.writeInt(this.f27285I);
    }

    public b(AbsSavedState absSavedState, int i8) {
        super(absSavedState);
        this.f27285I = i8;
    }
}
