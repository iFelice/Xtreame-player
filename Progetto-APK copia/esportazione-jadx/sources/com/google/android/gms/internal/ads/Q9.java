package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class Q9 implements Parcelable {
    public static final Parcelable.Creator<Q9> CREATOR = new E0(23);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final K9[] f15993G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f15994H;

    public Q9(long j8, K9... k9Arr) {
        this.f15994H = j8;
        this.f15993G = k9Arr;
    }

    public final int a() {
        return this.f15993G.length;
    }

    public final K9 c(int i8) {
        return this.f15993G[i8];
    }

    public final Q9 d(K9... k9Arr) {
        int length = k9Arr.length;
        if (length == 0) {
            return this;
        }
        int i8 = Et.f13234a;
        K9[] k9Arr2 = this.f15993G;
        int length2 = k9Arr2.length;
        Object[] objArrCopyOf = Arrays.copyOf(k9Arr2, length2 + length);
        System.arraycopy(k9Arr, 0, objArrCopyOf, length2, length);
        return new Q9(this.f15994H, (K9[]) objArrCopyOf);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final Q9 e(Q9 q9) {
        return q9 == null ? this : d(q9.f15993G);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Q9.class == obj.getClass()) {
            Q9 q9 = (Q9) obj;
            if (Arrays.equals(this.f15993G, q9.f15993G) && this.f15994H == q9.f15994H) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.f15993G) * 31;
        long j8 = this.f15994H;
        return iHashCode + ((int) (j8 ^ (j8 >>> 32)));
    }

    public final String toString() {
        long j8 = this.f15994H;
        return p000a.r.g("entries=", Arrays.toString(this.f15993G), j8 == -9223372036854775807L ? HttpUrl.FRAGMENT_ENCODE_SET : A0.O.z(", presentationTimeUs=", j8));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        K9[] k9Arr = this.f15993G;
        parcel.writeInt(k9Arr.length);
        for (K9 k9 : k9Arr) {
            parcel.writeParcelable(k9, 0);
        }
        parcel.writeLong(this.f15994H);
    }

    public Q9(Parcel parcel) {
        this.f15993G = new K9[parcel.readInt()];
        int i8 = 0;
        while (true) {
            K9[] k9Arr = this.f15993G;
            if (i8 >= k9Arr.length) {
                this.f15994H = parcel.readLong();
                return;
            } else {
                k9Arr[i8] = (K9) parcel.readParcelable(K9.class.getClassLoader());
                i8++;
            }
        }
    }

    public Q9(List list) {
        this(-9223372036854775807L, (K9[]) list.toArray(new K9[0]));
    }
}
