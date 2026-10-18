package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class V0 extends P0 {
    public static final Parcelable.Creator<V0> CREATOR = new E0(14);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f16930H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f16931I;

    /* JADX WARN: Illegal instructions before constructor call */
    public V0(Parcel parcel) {
        String string = parcel.readString();
        int i8 = Et.f13234a;
        super(string);
        this.f16930H = parcel.readString();
        this.f16931I = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && V0.class == obj.getClass()) {
            V0 v5 = (V0) obj;
            if (this.f15304G.equals(v5.f15304G) && Objects.equals(this.f16930H, v5.f16930H) && Objects.equals(this.f16931I, v5.f16931I)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f15304G.hashCode() + 527;
        String str = this.f16930H;
        int iHashCode2 = str != null ? str.hashCode() : 0;
        int i8 = iHashCode * 31;
        String str2 = this.f16931I;
        return ((i8 + iHashCode2) * 31) + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.google.android.gms.internal.ads.P0
    public final String toString() {
        return this.f15304G + ": url=" + this.f16931I;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f15304G);
        parcel.writeString(this.f16930H);
        parcel.writeString(this.f16931I);
    }

    public V0(String str, String str2, String str3) {
        super(str);
        this.f16930H = str2;
        this.f16931I = str3;
    }
}
