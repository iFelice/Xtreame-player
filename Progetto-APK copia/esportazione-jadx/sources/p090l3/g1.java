package p090l3;

import M3.a;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class g1 extends a {
    public static final Parcelable.Creator<g1> CREATOR = new f1(1);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f26577G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f26578H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C3117z0 f26579I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Bundle f26580J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f26581K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f26582L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f26583M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final String f26584N;

    public g1(String str, long j8, C3117z0 c3117z0, Bundle bundle, String str2, String str3, String str4, String str5) {
        this.f26577G = str;
        this.f26578H = j8;
        this.f26579I = c3117z0;
        this.f26580J = bundle;
        this.f26581K = str2;
        this.f26582L = str3;
        this.f26583M = str4;
        this.f26584N = str5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f26577G);
        long j8 = this.f26578H;
        AbstractC2987b.v0(parcel, 2, 8);
        parcel.writeLong(j8);
        AbstractC2987b.P(parcel, 3, this.f26579I, i8);
        AbstractC2987b.J(parcel, 4, this.f26580J);
        AbstractC2987b.Q(parcel, 5, this.f26581K);
        AbstractC2987b.Q(parcel, 6, this.f26582L);
        AbstractC2987b.Q(parcel, 7, this.f26583M);
        AbstractC2987b.Q(parcel, 8, this.f26584N);
        AbstractC2987b.p0(iX, parcel);
    }
}
