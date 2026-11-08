package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class J0 extends P0 {
    public static final Parcelable.Creator<J0> CREATOR = new E0(4);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f14100H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f14101I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f14102J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final byte[] f14103K;

    public J0(Parcel parcel) {
        super("APIC");
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f14100H = string;
        this.f14101I = parcel.readString();
        this.f14102J = parcel.readInt();
        this.f14103K = parcel.createByteArray();
    }

    @Override // com.google.android.gms.internal.ads.P0, com.google.android.gms.internal.ads.K9
    public final void b(A8 a8) {
        a8.a(this.f14102J, this.f14103K);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && J0.class == obj.getClass()) {
            J0 j8 = (J0) obj;
            if (this.f14102J == j8.f14102J && Objects.equals(this.f14100H, j8.f14100H) && Objects.equals(this.f14101I, j8.f14101I) && Arrays.equals(this.f14103K, j8.f14103K)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f14100H;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f14101I;
        return Arrays.hashCode(this.f14103K) + ((((((this.f14102J + 527) * 31) + iHashCode) * 31) + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.gms.internal.ads.P0
    public final String toString() {
        return this.f15304G + ": mimeType=" + this.f14100H + ", description=" + this.f14101I;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f14100H);
        parcel.writeString(this.f14101I);
        parcel.writeInt(this.f14102J);
        parcel.writeByteArray(this.f14103K);
    }

    public J0(String str, String str2, int i8, byte[] bArr) {
        super("APIC");
        this.f14100H = str;
        this.f14101I = str2;
        this.f14102J = i8;
        this.f14103K = bArr;
    }
}
