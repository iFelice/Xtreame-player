package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class O0 extends P0 {
    public static final Parcelable.Creator<O0> CREATOR = new E0(9);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f15113H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f15114I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f15115J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final byte[] f15116K;

    public O0(Parcel parcel) {
        super("GEOB");
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f15113H = string;
        this.f15114I = parcel.readString();
        this.f15115J = parcel.readString();
        this.f15116K = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && O0.class == obj.getClass()) {
            O0 o4 = (O0) obj;
            if (Objects.equals(this.f15113H, o4.f15113H) && Objects.equals(this.f15114I, o4.f15114I) && Objects.equals(this.f15115J, o4.f15115J) && Arrays.equals(this.f15116K, o4.f15116K)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f15113H;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f15114I;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i8 = iHashCode + 527;
        String str3 = this.f15115J;
        return Arrays.hashCode(this.f15116K) + (((((i8 * 31) + iHashCode2) * 31) + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.gms.internal.ads.P0
    public final String toString() {
        return this.f15304G + ": mimeType=" + this.f15113H + ", filename=" + this.f15114I + ", description=" + this.f15115J;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f15113H);
        parcel.writeString(this.f15114I);
        parcel.writeString(this.f15115J);
        parcel.writeByteArray(this.f15116K);
    }

    public O0(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f15113H = str;
        this.f15114I = str2;
        this.f15115J = str3;
        this.f15116K = bArr;
    }
}
