package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class I0 implements K9 {
    public static final Parcelable.Creator<I0> CREATOR = new E0(3);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f13828G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f13829H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f13830I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f13831J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f13832K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f13833L;

    public I0(int i8, int i9, String str, String str2, String str3, boolean z7) {
        boolean z8 = true;
        if (i9 != -1 && i9 <= 0) {
            z8 = false;
        }
        p113o3.r.J(z8);
        this.f13828G = i8;
        this.f13829H = str;
        this.f13830I = str2;
        this.f13831J = str3;
        this.f13832K = z7;
        this.f13833L = i9;
    }

    @Override // com.google.android.gms.internal.ads.K9
    public final void b(A8 a8) {
        String str = this.f13830I;
        if (str != null) {
            a8.f11984v = str;
        }
        String str2 = this.f13829H;
        if (str2 != null) {
            a8.f11983u = str2;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && I0.class == obj.getClass()) {
            I0 i8 = (I0) obj;
            if (this.f13828G == i8.f13828G && Objects.equals(this.f13829H, i8.f13829H) && Objects.equals(this.f13830I, i8.f13830I) && Objects.equals(this.f13831J, i8.f13831J) && this.f13832K == i8.f13832K && this.f13833L == i8.f13833L) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f13829H;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f13830I;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i8 = ((this.f13828G + 527) * 31) + iHashCode;
        String str3 = this.f13831J;
        return (((((((i8 * 31) + iHashCode2) * 31) + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f13832K ? 1 : 0)) * 31) + this.f13833L;
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.f13830I + "\", genre=\"" + this.f13829H + "\", bitrate=" + this.f13828G + ", metadataInterval=" + this.f13833L;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f13828G);
        parcel.writeString(this.f13829H);
        parcel.writeString(this.f13830I);
        parcel.writeString(this.f13831J);
        int i9 = Et.f13234a;
        parcel.writeInt(this.f13832K ? 1 : 0);
        parcel.writeInt(this.f13833L);
    }

    public I0(Parcel parcel) {
        this.f13828G = parcel.readInt();
        this.f13829H = parcel.readString();
        this.f13830I = parcel.readString();
        this.f13831J = parcel.readString();
        int i8 = Et.f13234a;
        this.f13832K = parcel.readInt() != 0;
        this.f13833L = parcel.readInt();
    }
}
