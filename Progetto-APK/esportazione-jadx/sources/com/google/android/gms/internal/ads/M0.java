package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class M0 extends P0 {
    public static final Parcelable.Creator<M0> CREATOR = new E0(7);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f14598H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f14599I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f14600J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String[] f14601K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final P0[] f14602L;

    public M0(Parcel parcel) {
        super("CTOC");
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f14598H = string;
        this.f14599I = parcel.readByte() != 0;
        this.f14600J = parcel.readByte() != 0;
        this.f14601K = parcel.createStringArray();
        int i9 = parcel.readInt();
        this.f14602L = new P0[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            this.f14602L[i10] = (P0) parcel.readParcelable(P0.class.getClassLoader());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && M0.class == obj.getClass()) {
            M0 m7 = (M0) obj;
            if (this.f14599I == m7.f14599I && this.f14600J == m7.f14600J && Objects.equals(this.f14598H, m7.f14598H) && Arrays.equals(this.f14601K, m7.f14601K) && Arrays.equals(this.f14602L, m7.f14602L)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f14598H;
        return (((((this.f14599I ? 1 : 0) + 527) * 31) + (this.f14600J ? 1 : 0)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f14598H);
        parcel.writeByte(this.f14599I ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14600J ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f14601K);
        P0[] p0Arr = this.f14602L;
        parcel.writeInt(p0Arr.length);
        for (P0 p7 : p0Arr) {
            parcel.writeParcelable(p7, 0);
        }
    }

    public M0(String str, boolean z7, boolean z8, String[] strArr, P0[] p0Arr) {
        super("CTOC");
        this.f14598H = str;
        this.f14599I = z7;
        this.f14600J = z8;
        this.f14601K = strArr;
        this.f14602L = p0Arr;
    }
}
