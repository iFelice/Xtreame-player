package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: C3.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0103c extends M3.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f1491G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f1492H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f1493I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f1494J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final long f1495K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final H3.b f1490L = new H3.b("AdBreakStatus", null);
    public static final Parcelable.Creator<C0103c> CREATOR = new H(2);

    public C0103c(long j8, long j9, String str, String str2, long j10) {
        this.f1491G = j8;
        this.f1492H = j9;
        this.f1493I = str;
        this.f1494J = str2;
        this.f1495K = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0103c)) {
            return false;
        }
        C0103c c0103c = (C0103c) obj;
        return this.f1491G == c0103c.f1491G && this.f1492H == c0103c.f1492H && H3.a.e(this.f1493I, c0103c.f1493I) && H3.a.e(this.f1494J, c0103c.f1494J) && this.f1495K == c0103c.f1495K;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f1491G), Long.valueOf(this.f1492H), this.f1493I, this.f1494J, Long.valueOf(this.f1495K)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 8);
        parcel.writeLong(this.f1491G);
        AbstractC2987b.v0(parcel, 3, 8);
        parcel.writeLong(this.f1492H);
        AbstractC2987b.Q(parcel, 4, this.f1493I);
        AbstractC2987b.Q(parcel, 5, this.f1494J);
        AbstractC2987b.v0(parcel, 6, 8);
        parcel.writeLong(this.f1495K);
        AbstractC2987b.p0(iX, parcel);
    }
}
