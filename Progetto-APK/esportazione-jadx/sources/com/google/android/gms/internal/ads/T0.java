package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class T0 extends P0 {
    public static final Parcelable.Creator<T0> CREATOR = new E0(12);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f16574H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f16575I;

    public T0(Parcel parcel) {
        super("PRIV");
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f16574H = string;
        this.f16575I = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && T0.class == obj.getClass()) {
            T0 t7 = (T0) obj;
            if (Objects.equals(this.f16574H, t7.f16574H) && Arrays.equals(this.f16575I, t7.f16575I)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f16574H;
        return Arrays.hashCode(this.f16575I) + (((str != null ? str.hashCode() : 0) + 527) * 31);
    }

    @Override // com.google.android.gms.internal.ads.P0
    public final String toString() {
        return this.f15304G + ": owner=" + this.f16574H;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f16574H);
        parcel.writeByteArray(this.f16575I);
    }

    public T0(byte[] bArr, String str) {
        super("PRIV");
        this.f16574H = str;
        this.f16575I = bArr;
    }
}
