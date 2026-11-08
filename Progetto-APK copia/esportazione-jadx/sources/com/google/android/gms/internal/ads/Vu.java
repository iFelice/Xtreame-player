package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class Vu implements K9 {
    public static final Parcelable.Creator<Vu> CREATOR = new C2350zc(13);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final float f17126G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final float f17127H;

    public Vu(float f8, float f9) {
        boolean z7 = false;
        if (f8 >= -90.0f && f8 <= 90.0f && f9 >= -180.0f && f9 <= 180.0f) {
            z7 = true;
        }
        p113o3.r.L(z7, "Invalid latitude or longitude");
        this.f17126G = f8;
        this.f17127H = f9;
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
        if (obj != null && Vu.class == obj.getClass()) {
            Vu vu = (Vu) obj;
            if (this.f17126G == vu.f17126G && this.f17127H == vu.f17127H) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.f17126G).hashCode() + 527) * 31) + Float.valueOf(this.f17127H).hashCode();
    }

    public final String toString() {
        return "xyz: latitude=" + this.f17126G + ", longitude=" + this.f17127H;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeFloat(this.f17126G);
        parcel.writeFloat(this.f17127H);
    }

    public /* synthetic */ Vu(Parcel parcel) {
        this.f17126G = parcel.readFloat();
        this.f17127H = parcel.readFloat();
    }
}
