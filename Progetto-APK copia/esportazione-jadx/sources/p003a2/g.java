package p003a2;

import S.b;
import android.os.Parcel;
import android.os.Parcelable;
import p000a.r;
import p086l.m1;

/* JADX INFO: loaded from: classes.dex */
public final class g extends b {
    public static final Parcelable.Creator<g> CREATOR = new m1(4);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f8645I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Parcelable f8646J;

    public g(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? g.class.getClassLoader() : classLoader;
        this.f8645I = parcel.readInt();
        this.f8646J = parcel.readParcelable(classLoader);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentPager.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" position=");
        return r.h(sb, this.f8645I, "}");
    }

    @Override // S.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        super.writeToParcel(parcel, i8);
        parcel.writeInt(this.f8645I);
        parcel.writeParcelable(this.f8646J, i8);
    }
}
