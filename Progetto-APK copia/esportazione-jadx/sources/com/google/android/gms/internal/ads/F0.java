package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class F0 implements K9 {
    public static final Parcelable.Creator<F0> CREATOR;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f13268G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f13269H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f13270I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f13271J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final byte[] f13272K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f13273L;

    static {
        K k8 = new K();
        k8.f("application/id3");
        k8.h();
        K k9 = new K();
        k9.f("application/x-scte35");
        k9.h();
        CREATOR = new E0(0);
    }

    public F0(Parcel parcel) {
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f13268G = string;
        this.f13269H = parcel.readString();
        this.f13270I = parcel.readLong();
        this.f13271J = parcel.readLong();
        this.f13272K = parcel.createByteArray();
    }

    @Override // com.google.android.gms.internal.ads.K9
    public final /* synthetic */ void b(A8 a8) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && F0.class == obj.getClass()) {
            F0 f8 = (F0) obj;
            if (this.f13270I == f8.f13270I && this.f13271J == f8.f13271J && Objects.equals(this.f13268G, f8.f13268G) && Objects.equals(this.f13269H, f8.f13269H) && Arrays.equals(this.f13272K, f8.f13272K)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f13273L;
        if (i8 != 0) {
            return i8;
        }
        String str = this.f13268G;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f13269H;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        long j8 = this.f13271J;
        long j9 = this.f13270I;
        int iHashCode3 = Arrays.hashCode(this.f13272K) + ((((((((iHashCode + 527) * 31) + iHashCode2) * 31) + ((int) (j9 ^ (j9 >>> 32)))) * 31) + ((int) (j8 ^ (j8 >>> 32)))) * 31);
        this.f13273L = iHashCode3;
        return iHashCode3;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.f13268G + ", id=" + this.f13271J + ", durationMs=" + this.f13270I + ", value=" + this.f13269H;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f13268G);
        parcel.writeString(this.f13269H);
        parcel.writeLong(this.f13270I);
        parcel.writeLong(this.f13271J);
        parcel.writeByteArray(this.f13272K);
    }
}
