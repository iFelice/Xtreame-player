package p090l3;

import M3.a;
import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.bumptech.glide.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class b1 extends a {
    public static final Parcelable.Creator<b1> CREATOR = new p016c.a(28);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f26517G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f26518H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Bundle f26519I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f26520J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final List f26521K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f26522L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f26523M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f26524N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final String f26525O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final V0 f26526P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Location f26527Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final String f26528R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final Bundle f26529S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Bundle f26530T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final List f26531U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final String f26532V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final String f26533W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final boolean f26534X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final L f26535Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final int f26536Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final String f26537a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final List f26538b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int f26539c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final String f26540d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final int f26541e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final long f26542f0;

    public b1(int i8, long j8, Bundle bundle, int i9, List list, boolean z7, int i10, boolean z8, String str, V0 v5, Location location, String str2, Bundle bundle2, Bundle bundle3, List list2, String str3, String str4, boolean z9, L l4, int i11, String str5, List list3, int i12, String str6, int i13, long j9) {
        this.f26517G = i8;
        this.f26518H = j8;
        this.f26519I = bundle == null ? new Bundle() : bundle;
        this.f26520J = i9;
        this.f26521K = list;
        this.f26522L = z7;
        this.f26523M = i10;
        this.f26524N = z8;
        this.f26525O = str;
        this.f26526P = v5;
        this.f26527Q = location;
        this.f26528R = str2;
        this.f26529S = bundle2 == null ? new Bundle() : bundle2;
        this.f26530T = bundle3;
        this.f26531U = list2;
        this.f26532V = str3;
        this.f26533W = str4;
        this.f26534X = z9;
        this.f26535Y = l4;
        this.f26536Z = i11;
        this.f26537a0 = str5;
        this.f26538b0 = list3 == null ? new ArrayList() : list3;
        this.f26539c0 = i12;
        this.f26540d0 = str6;
        this.f26541e0 = i13;
        this.f26542f0 = j9;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b1) {
            return i(obj) && this.f26542f0 == ((b1) obj).f26542f0;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f26517G), Long.valueOf(this.f26518H), this.f26519I, Integer.valueOf(this.f26520J), this.f26521K, Boolean.valueOf(this.f26522L), Integer.valueOf(this.f26523M), Boolean.valueOf(this.f26524N), this.f26525O, this.f26526P, this.f26527Q, this.f26528R, this.f26529S, this.f26530T, this.f26531U, this.f26532V, this.f26533W, Boolean.valueOf(this.f26534X), Integer.valueOf(this.f26536Z), this.f26537a0, this.f26538b0, Integer.valueOf(this.f26539c0), this.f26540d0, Integer.valueOf(this.f26541e0), Long.valueOf(this.f26542f0)});
    }

    public final boolean i(Object obj) {
        if (!(obj instanceof b1)) {
            return false;
        }
        b1 b1Var = (b1) obj;
        return this.f26517G == b1Var.f26517G && this.f26518H == b1Var.f26518H && c.C(this.f26519I, b1Var.f26519I) && this.f26520J == b1Var.f26520J && U4.a.c(this.f26521K, b1Var.f26521K) && this.f26522L == b1Var.f26522L && this.f26523M == b1Var.f26523M && this.f26524N == b1Var.f26524N && U4.a.c(this.f26525O, b1Var.f26525O) && U4.a.c(this.f26526P, b1Var.f26526P) && U4.a.c(this.f26527Q, b1Var.f26527Q) && U4.a.c(this.f26528R, b1Var.f26528R) && c.C(this.f26529S, b1Var.f26529S) && c.C(this.f26530T, b1Var.f26530T) && U4.a.c(this.f26531U, b1Var.f26531U) && U4.a.c(this.f26532V, b1Var.f26532V) && U4.a.c(this.f26533W, b1Var.f26533W) && this.f26534X == b1Var.f26534X && this.f26536Z == b1Var.f26536Z && U4.a.c(this.f26537a0, b1Var.f26537a0) && U4.a.c(this.f26538b0, b1Var.f26538b0) && this.f26539c0 == b1Var.f26539c0 && U4.a.c(this.f26540d0, b1Var.f26540d0) && this.f26541e0 == b1Var.f26541e0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f26517G);
        AbstractC2987b.v0(parcel, 2, 8);
        parcel.writeLong(this.f26518H);
        AbstractC2987b.J(parcel, 3, this.f26519I);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f26520J);
        AbstractC2987b.S(parcel, 5, this.f26521K);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(this.f26522L ? 1 : 0);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f26523M);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f26524N ? 1 : 0);
        AbstractC2987b.Q(parcel, 9, this.f26525O);
        AbstractC2987b.P(parcel, 10, this.f26526P, i8);
        AbstractC2987b.P(parcel, 11, this.f26527Q, i8);
        AbstractC2987b.Q(parcel, 12, this.f26528R);
        AbstractC2987b.J(parcel, 13, this.f26529S);
        AbstractC2987b.J(parcel, 14, this.f26530T);
        AbstractC2987b.S(parcel, 15, this.f26531U);
        AbstractC2987b.Q(parcel, 16, this.f26532V);
        AbstractC2987b.Q(parcel, 17, this.f26533W);
        AbstractC2987b.v0(parcel, 18, 4);
        parcel.writeInt(this.f26534X ? 1 : 0);
        AbstractC2987b.P(parcel, 19, this.f26535Y, i8);
        AbstractC2987b.v0(parcel, 20, 4);
        parcel.writeInt(this.f26536Z);
        AbstractC2987b.Q(parcel, 21, this.f26537a0);
        AbstractC2987b.S(parcel, 22, this.f26538b0);
        AbstractC2987b.v0(parcel, 23, 4);
        parcel.writeInt(this.f26539c0);
        AbstractC2987b.Q(parcel, 24, this.f26540d0);
        AbstractC2987b.v0(parcel, 25, 4);
        parcel.writeInt(this.f26541e0);
        AbstractC2987b.v0(parcel, 26, 8);
        parcel.writeLong(this.f26542f0);
        AbstractC2987b.p0(iX, parcel);
    }
}
