package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class R0 extends P0 {
    public static final Parcelable.Creator<R0> CREATOR = new E0(10);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f16188H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f16189I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f16190J;

    public R0(Parcel parcel) {
        super("----");
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f16188H = string;
        this.f16189I = parcel.readString();
        this.f16190J = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && R0.class == obj.getClass()) {
            R0 r7 = (R0) obj;
            if (Objects.equals(this.f16189I, r7.f16189I) && Objects.equals(this.f16188H, r7.f16188H) && Objects.equals(this.f16190J, r7.f16190J)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f16188H;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16189I;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i8 = iHashCode + 527;
        String str3 = this.f16190J;
        return (((i8 * 31) + iHashCode2) * 31) + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.google.android.gms.internal.ads.P0
    public final String toString() {
        return this.f15304G + ": domain=" + this.f16188H + ", description=" + this.f16189I;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f15304G);
        parcel.writeString(this.f16188H);
        parcel.writeString(this.f16190J);
    }

    public R0(String str, String str2, String str3) {
        super("----");
        this.f16188H = str;
        this.f16189I = str2;
        this.f16190J = str3;
    }
}
