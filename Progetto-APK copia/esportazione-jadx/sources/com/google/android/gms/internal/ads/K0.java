package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class K0 extends P0 {
    public static final Parcelable.Creator<K0> CREATOR = new E0(5);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final byte[] f14286H;

    /* JADX WARN: Illegal instructions before constructor call */
    public K0(Parcel parcel) {
        String string = parcel.readString();
        int i8 = Et.f13234a;
        super(string);
        this.f14286H = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && K0.class == obj.getClass()) {
            K0 k8 = (K0) obj;
            if (this.f15304G.equals(k8.f15304G) && Arrays.equals(this.f14286H, k8.f14286H)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f14286H) + ((this.f15304G.hashCode() + 527) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f15304G);
        parcel.writeByteArray(this.f14286H);
    }

    public K0(byte[] bArr, String str) {
        super(str);
        this.f14286H = bArr;
    }
}
