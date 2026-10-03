package p021c4;

import J3.v;
import M3.a;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class r1 extends a {
    public static final Parcelable.Creator<r1> CREATOR = new v(11);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f11349G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public byte[] f11350H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f11351I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Bundle f11352J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f11353K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long f11354L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public String f11355M;

    public r1(long j8, byte[] bArr, String str, Bundle bundle, int i8, long j9, String str2) {
        this.f11349G = j8;
        this.f11350H = bArr;
        this.f11351I = str;
        this.f11352J = bundle;
        this.f11353K = i8;
        this.f11354L = j9;
        this.f11355M = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 8);
        parcel.writeLong(this.f11349G);
        AbstractC2987b.K(parcel, 2, this.f11350H);
        AbstractC2987b.Q(parcel, 3, this.f11351I);
        AbstractC2987b.J(parcel, 4, this.f11352J);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f11353K);
        AbstractC2987b.v0(parcel, 6, 8);
        parcel.writeLong(this.f11354L);
        AbstractC2987b.Q(parcel, 7, this.f11355M);
        AbstractC2987b.p0(iX, parcel);
    }
}
