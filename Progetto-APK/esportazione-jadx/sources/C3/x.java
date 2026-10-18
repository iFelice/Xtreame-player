package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class x extends M3.a {
    public static final Parcelable.Creator<x> CREATOR = new f1(25);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final w f1619G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final w f1620H;

    public x(w wVar, w wVar2) {
        this.f1619G = wVar;
        this.f1620H = wVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return H3.a.e(this.f1619G, xVar.f1619G) && H3.a.e(this.f1620H, xVar.f1620H);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1619G, this.f1620H});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.P(parcel, 2, this.f1619G, i8);
        AbstractC2987b.P(parcel, 3, this.f1620H, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
