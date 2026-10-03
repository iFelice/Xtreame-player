package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class N0 extends P0 {
    public static final Parcelable.Creator<N0> CREATOR = new E0(8);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f14837H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f14838I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f14839J;

    public N0(Parcel parcel) {
        super("COMM");
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f14837H = string;
        this.f14838I = parcel.readString();
        this.f14839J = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && N0.class == obj.getClass()) {
            N0 n7 = (N0) obj;
            if (Objects.equals(this.f14838I, n7.f14838I) && Objects.equals(this.f14837H, n7.f14837H) && Objects.equals(this.f14839J, n7.f14839J)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f14837H;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f14838I;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i8 = iHashCode + 527;
        String str3 = this.f14839J;
        return (((i8 * 31) + iHashCode2) * 31) + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.google.android.gms.internal.ads.P0
    public final String toString() {
        return this.f15304G + ": language=" + this.f14837H + ", description=" + this.f14838I + ", text=" + this.f14839J;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f15304G);
        parcel.writeString(this.f14837H);
        parcel.writeString(this.f14839J);
    }

    public N0(String str, String str2, String str3) {
        super("COMM");
        this.f14837H = str;
        this.f14838I = str2;
        this.f14839J = str3;
    }
}
