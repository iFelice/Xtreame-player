package p120p3;

import A0.O;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class a extends M3.a {
    public static final Parcelable.Creator<a> CREATOR = new f1(6);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f28196G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f28197H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f28198I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f28199J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f28200K;

    /* JADX WARN: Illegal instructions before constructor call */
    public a(int i8, int i9, boolean z7, boolean z8) {
        String str = z7 ? "0" : "1";
        StringBuilder sbD = O.D("afma-sdk-a-v", i8, ".", i9, ".");
        sbD.append(str);
        this(sbD.toString(), i8, i9, z7, z8);
    }

    public static a i() {
        return new a(true, 12451000, 12451000);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f28196G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f28197H);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f28198I);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f28199J ? 1 : 0);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(this.f28200K ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }

    public a(String str, int i8, int i9, boolean z7, boolean z8) {
        this.f28196G = str;
        this.f28197H = i8;
        this.f28198I = i9;
        this.f28199J = z7;
        this.f28200K = z8;
    }

    public a(boolean z7, int i8, int i9) {
        this(i8, i9, z7, false);
    }
}
