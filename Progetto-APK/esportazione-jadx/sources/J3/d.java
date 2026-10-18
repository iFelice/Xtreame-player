package J3;

import C3.H;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class d extends M3.a {
    public static final Parcelable.Creator<d> CREATOR = new H(29);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f4139G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f4140H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f4141I;

    public d(int i8, long j8, String str) {
        this.f4139G = str;
        this.f4140H = i8;
        this.f4141I = j8;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            String str = this.f4139G;
            if (((str != null && str.equals(dVar.f4139G)) || (str == null && dVar.f4139G == null)) && i() == dVar.i()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4139G, Long.valueOf(i())});
    }

    public final long i() {
        long j8 = this.f4141I;
        return j8 == -1 ? this.f4140H : j8;
    }

    public final String toString() {
        p096m2.e eVar = new p096m2.e(this);
        eVar.d(this.f4139G, "name");
        eVar.d(Long.valueOf(i()), "version");
        return eVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f4139G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f4140H);
        long jI = i();
        AbstractC2987b.v0(parcel, 3, 8);
        parcel.writeLong(jI);
        AbstractC2987b.p0(iX, parcel);
    }

    public d(long j8, String str) {
        this.f4139G = str;
        this.f4141I = j8;
        this.f4140H = -1;
    }
}
