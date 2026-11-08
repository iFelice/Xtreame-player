package H3;

import C3.C0104d;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Locale;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class d extends M3.a {
    public static final Parcelable.Creator<d> CREATOR = new f1(20);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public double f3683G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f3684H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f3685I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C0104d f3686J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f3687K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public C3.x f3688L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public double f3689M;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f3683G == dVar.f3683G && this.f3684H == dVar.f3684H && this.f3685I == dVar.f3685I && a.e(this.f3686J, dVar.f3686J) && this.f3687K == dVar.f3687K) {
            C3.x xVar = this.f3688L;
            if (a.e(xVar, xVar) && this.f3689M == dVar.f3689M) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Double.valueOf(this.f3683G), Boolean.valueOf(this.f3684H), Integer.valueOf(this.f3685I), this.f3686J, Integer.valueOf(this.f3687K), this.f3688L, Double.valueOf(this.f3689M)});
    }

    public final String toString() {
        return String.format(Locale.ROOT, "volume=%f", Double.valueOf(this.f3683G));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 8);
        parcel.writeDouble(this.f3683G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f3684H ? 1 : 0);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f3685I);
        AbstractC2987b.P(parcel, 5, this.f3686J, i8);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(this.f3687K);
        AbstractC2987b.P(parcel, 7, this.f3688L, i8);
        AbstractC2987b.v0(parcel, 8, 8);
        parcel.writeDouble(this.f3689M);
        AbstractC2987b.p0(iX, parcel);
    }
}
