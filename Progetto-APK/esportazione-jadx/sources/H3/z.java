package H3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class z extends M3.a {
    public static final Parcelable.Creator<z> CREATOR = new f1(19);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f3762G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f3763H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f3764I;

    public z(int i8, boolean z7, boolean z8) {
        this.f3762G = i8;
        this.f3763H = z7;
        this.f3764I = z8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return this.f3762G == zVar.f3762G && this.f3763H == zVar.f3763H && this.f3764I == zVar.f3764I;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3762G), Boolean.valueOf(this.f3763H), Boolean.valueOf(this.f3764I)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f3762G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f3763H ? 1 : 0);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f3764I ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
