package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: C3.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0110j extends M3.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f1518G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f1519H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f1520I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f1521J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final H3.b f1517K = new H3.b("MediaLiveSeekableRange", null);
    public static final Parcelable.Creator<C0110j> CREATOR = new H(1);

    public C0110j(long j8, long j9, boolean z7, boolean z8) {
        this.f1518G = Math.max(j8, 0L);
        this.f1519H = Math.max(j9, 0L);
        this.f1520I = z7;
        this.f1521J = z8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0110j)) {
            return false;
        }
        C0110j c0110j = (C0110j) obj;
        return this.f1518G == c0110j.f1518G && this.f1519H == c0110j.f1519H && this.f1520I == c0110j.f1520I && this.f1521J == c0110j.f1521J;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f1518G), Long.valueOf(this.f1519H), Boolean.valueOf(this.f1520I), Boolean.valueOf(this.f1521J)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 8);
        parcel.writeLong(this.f1518G);
        AbstractC2987b.v0(parcel, 3, 8);
        parcel.writeLong(this.f1519H);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f1520I ? 1 : 0);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f1521J ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
