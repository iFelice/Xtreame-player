package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class L0 extends P0 {
    public static final Parcelable.Creator<L0> CREATOR = new E0(6);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f14446H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f14447I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f14448J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final long f14449K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long f14450L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final P0[] f14451M;

    public L0(Parcel parcel) {
        super("CHAP");
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f14446H = string;
        this.f14447I = parcel.readInt();
        this.f14448J = parcel.readInt();
        this.f14449K = parcel.readLong();
        this.f14450L = parcel.readLong();
        int i9 = parcel.readInt();
        this.f14451M = new P0[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            this.f14451M[i10] = (P0) parcel.readParcelable(P0.class.getClassLoader());
        }
    }

    @Override // com.google.android.gms.internal.ads.P0, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && L0.class == obj.getClass()) {
            L0 l4 = (L0) obj;
            if (this.f14447I == l4.f14447I && this.f14448J == l4.f14448J && this.f14449K == l4.f14449K && this.f14450L == l4.f14450L && Objects.equals(this.f14446H, l4.f14446H) && Arrays.equals(this.f14451M, l4.f14451M)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f14446H;
        return ((((((((this.f14447I + 527) * 31) + this.f14448J) * 31) + ((int) this.f14449K)) * 31) + ((int) this.f14450L)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f14446H);
        parcel.writeInt(this.f14447I);
        parcel.writeInt(this.f14448J);
        parcel.writeLong(this.f14449K);
        parcel.writeLong(this.f14450L);
        P0[] p0Arr = this.f14451M;
        parcel.writeInt(p0Arr.length);
        for (P0 p7 : p0Arr) {
            parcel.writeParcelable(p7, 0);
        }
    }

    public L0(String str, int i8, int i9, long j8, long j9, P0[] p0Arr) {
        super("CHAP");
        this.f14446H = str;
        this.f14447I = i8;
        this.f14448J = i9;
        this.f14449K = j8;
        this.f14450L = j9;
        this.f14451M = p0Arr;
    }
}
