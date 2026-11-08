package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class X0 implements Parcelable {
    public static final Parcelable.Creator<X0> CREATOR = new E0(17);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f17358G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f17359H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f17360I;

    public X0(int i8, long j8, long j9) {
        p113o3.r.J(j8 < j9);
        this.f17358G = j8;
        this.f17359H = j9;
        this.f17360I = i8;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && X0.class == obj.getClass()) {
            X0 x7 = (X0) obj;
            if (this.f17358G == x7.f17358G && this.f17359H == x7.f17359H && this.f17360I == x7.f17360I) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f17358G), Long.valueOf(this.f17359H), Integer.valueOf(this.f17360I)});
    }

    public final String toString() {
        Locale locale = Locale.US;
        return "Segment: startTimeMs=" + this.f17358G + ", endTimeMs=" + this.f17359H + ", speedDivisor=" + this.f17360I;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeLong(this.f17358G);
        parcel.writeLong(this.f17359H);
        parcel.writeInt(this.f17360I);
    }
}
