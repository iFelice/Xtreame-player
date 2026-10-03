package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class G extends M3.a {
    public static final Parcelable.Creator<G> CREATOR = new f1(27);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f1465G;

    public G(int i8) {
        this.f1465G = i8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof G) && this.f1465G == ((G) obj).f1465G;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1465G)});
    }

    public final String toString() {
        String str;
        int i8 = this.f1465G;
        if (i8 != 0) {
            str = i8 != 2 ? "UNKNOWN" : "INVISIBLE";
        } else {
            str = "STRONG";
        }
        return p000a.r.g("joinOptions(connectionType=", str, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f1465G);
        AbstractC2987b.p0(iX, parcel);
    }
}
