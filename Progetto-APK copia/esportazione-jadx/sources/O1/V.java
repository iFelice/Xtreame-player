package O1;

import android.os.Parcel;
import android.os.Parcelable;
import p086l.m1;

/* JADX INFO: loaded from: classes.dex */
public final class V extends S.b {
    public static final Parcelable.Creator<V> CREATOR = new m1(3);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Parcelable f5306I;

    public V(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f5306I = parcel.readParcelable(classLoader == null ? L.class.getClassLoader() : classLoader);
    }

    @Override // S.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        super.writeToParcel(parcel, i8);
        parcel.writeParcelable(this.f5306I, 0);
    }
}
