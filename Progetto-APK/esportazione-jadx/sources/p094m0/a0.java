package p094m0;

import android.os.Parcel;
import android.os.Parcelable;
import p016c.a;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class a0 implements Comparable, Parcelable {
    public static final Parcelable.Creator<a0> CREATOR = new a(12);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f26802G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f26803H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f26804I;

    static {
        M.L(0);
        M.L(1);
        M.L(2);
    }

    public a0() {
        this.f26802G = -1;
        this.f26803H = -1;
        this.f26804I = -1;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        a0 a0Var = (a0) obj;
        int i8 = this.f26802G - a0Var.f26802G;
        if (i8 != 0) {
            return i8;
        }
        int i9 = this.f26803H - a0Var.f26803H;
        return i9 == 0 ? this.f26804I - a0Var.f26804I : i9;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a0.class != obj.getClass()) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f26802G == a0Var.f26802G && this.f26803H == a0Var.f26803H && this.f26804I == a0Var.f26804I;
    }

    public final int hashCode() {
        return (((this.f26802G * 31) + this.f26803H) * 31) + this.f26804I;
    }

    public final String toString() {
        return this.f26802G + "." + this.f26803H + "." + this.f26804I;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f26802G);
        parcel.writeInt(this.f26803H);
        parcel.writeInt(this.f26804I);
    }

    public a0(Parcel parcel) {
        this.f26802G = parcel.readInt();
        this.f26803H = parcel.readInt();
        this.f26804I = parcel.readInt();
    }
}
