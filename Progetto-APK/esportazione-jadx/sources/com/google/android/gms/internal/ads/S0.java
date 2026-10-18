package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class S0 extends P0 {
    public static final Parcelable.Creator<S0> CREATOR = new E0(11);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f16389H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f16390I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f16391J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int[] f16392K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int[] f16393L;

    public S0(int i8, int i9, int i10, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f16389H = i8;
        this.f16390I = i9;
        this.f16391J = i10;
        this.f16392K = iArr;
        this.f16393L = iArr2;
    }

    @Override // com.google.android.gms.internal.ads.P0, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && S0.class == obj.getClass()) {
            S0 s7 = (S0) obj;
            if (this.f16389H == s7.f16389H && this.f16390I == s7.f16390I && this.f16391J == s7.f16391J && Arrays.equals(this.f16392K, s7.f16392K) && Arrays.equals(this.f16393L, s7.f16393L)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f16393L) + ((Arrays.hashCode(this.f16392K) + ((((((this.f16389H + 527) * 31) + this.f16390I) * 31) + this.f16391J) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f16389H);
        parcel.writeInt(this.f16390I);
        parcel.writeInt(this.f16391J);
        parcel.writeIntArray(this.f16392K);
        parcel.writeIntArray(this.f16393L);
    }

    public S0(Parcel parcel) {
        super("MLLT");
        this.f16389H = parcel.readInt();
        this.f16390I = parcel.readInt();
        this.f16391J = parcel.readInt();
        int[] iArrCreateIntArray = parcel.createIntArray();
        int i8 = Et.f13234a;
        this.f16392K = iArrCreateIntArray;
        this.f16393L = parcel.createIntArray();
    }
}
