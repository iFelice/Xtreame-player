package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class Z0 implements K9 {
    public static final Parcelable.Creator<Z0> CREATOR = new E0(18);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final float f17703G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f17704H;

    public Z0(int i8, float f8) {
        this.f17703G = f8;
        this.f17704H = i8;
    }

    @Override // com.google.android.gms.internal.ads.K9
    public final /* synthetic */ void b(A8 a8) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Z0.class == obj.getClass()) {
            Z0 z7 = (Z0) obj;
            if (this.f17703G == z7.f17703G && this.f17704H == z7.f17704H) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.f17703G).hashCode() + 527) * 31) + this.f17704H;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.f17703G + ", svcTemporalLayerCount=" + this.f17704H;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeFloat(this.f17703G);
        parcel.writeInt(this.f17704H);
    }

    public /* synthetic */ Z0(Parcel parcel) {
        this.f17703G = parcel.readFloat();
        this.f17704H = parcel.readInt();
    }
}
