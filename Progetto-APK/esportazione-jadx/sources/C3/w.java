package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class w extends M3.a {
    public static final Parcelable.Creator<w> CREATOR = new f1(24);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final float f1616G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final float f1617H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final float f1618I;

    public w(float f8, float f9, float f10) {
        this.f1616G = f8;
        this.f1617H = f9;
        this.f1618I = f10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.f1616G == wVar.f1616G && this.f1617H == wVar.f1617H && this.f1618I == wVar.f1618I;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f1616G), Float.valueOf(this.f1617H), Float.valueOf(this.f1618I)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeFloat(this.f1616G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeFloat(this.f1617H);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeFloat(this.f1618I);
        AbstractC2987b.p0(iX, parcel);
    }
}
