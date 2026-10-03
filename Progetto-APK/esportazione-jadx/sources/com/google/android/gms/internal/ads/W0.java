package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class W0 implements K9 {
    public static final Parcelable.Creator<W0> CREATOR = new E0(15);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f17145G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f17146H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f17147I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f17148J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final long f17149K;

    public W0(long j8, long j9, long j10, long j11, long j12) {
        this.f17145G = j8;
        this.f17146H = j9;
        this.f17147I = j10;
        this.f17148J = j11;
        this.f17149K = j12;
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
        if (obj != null && W0.class == obj.getClass()) {
            W0 w7 = (W0) obj;
            if (this.f17145G == w7.f17145G && this.f17146H == w7.f17146H && this.f17147I == w7.f17147I && this.f17148J == w7.f17148J && this.f17149K == w7.f17149K) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j8 = this.f17145G;
        int i8 = ((int) (j8 ^ (j8 >>> 32))) + 527;
        long j9 = this.f17149K;
        long j10 = j9 ^ (j9 >>> 32);
        long j11 = this.f17148J;
        long j12 = j11 ^ (j11 >>> 32);
        long j13 = this.f17147I;
        long j14 = j13 ^ (j13 >>> 32);
        long j15 = this.f17146H;
        return (((((((i8 * 31) + ((int) (j15 ^ (j15 >>> 32)))) * 31) + ((int) j14)) * 31) + ((int) j12)) * 31) + ((int) j10);
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f17145G + ", photoSize=" + this.f17146H + ", photoPresentationTimestampUs=" + this.f17147I + ", videoStartPosition=" + this.f17148J + ", videoSize=" + this.f17149K;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeLong(this.f17145G);
        parcel.writeLong(this.f17146H);
        parcel.writeLong(this.f17147I);
        parcel.writeLong(this.f17148J);
        parcel.writeLong(this.f17149K);
    }

    public /* synthetic */ W0(Parcel parcel) {
        this.f17145G = parcel.readLong();
        this.f17146H = parcel.readLong();
        this.f17147I = parcel.readLong();
        this.f17148J = parcel.readLong();
        this.f17149K = parcel.readLong();
    }
}
