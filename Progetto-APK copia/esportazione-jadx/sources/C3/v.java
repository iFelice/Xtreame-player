package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class v extends M3.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f1613G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f1614H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f1615I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final H3.b f1612J = new H3.b("VideoInfo", null);
    public static final Parcelable.Creator<v> CREATOR = new H(14);

    public v(int i8, int i9, int i10) {
        this.f1613G = i8;
        this.f1614H = i9;
        this.f1615I = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f1614H == vVar.f1614H && this.f1613G == vVar.f1613G && this.f1615I == vVar.f1615I;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1614H), Integer.valueOf(this.f1613G), Integer.valueOf(this.f1615I)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f1613G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f1614H);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f1615I);
        AbstractC2987b.p0(iX, parcel);
    }
}
