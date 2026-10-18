package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2213wv implements K9 {
    public static final Parcelable.Creator<C2213wv> CREATOR = new C2350zc(14);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f21767G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f21768H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f21769I;

    public C2213wv(long j8, long j9, long j10) {
        this.f21767G = j8;
        this.f21768H = j9;
        this.f21769I = j10;
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
        if (!(obj instanceof C2213wv)) {
            return false;
        }
        C2213wv c2213wv = (C2213wv) obj;
        return this.f21767G == c2213wv.f21767G && this.f21768H == c2213wv.f21768H && this.f21769I == c2213wv.f21769I;
    }

    public final int hashCode() {
        long j8 = this.f21767G;
        int i8 = ((int) (j8 ^ (j8 >>> 32))) + 527;
        long j9 = this.f21769I;
        long j10 = j9 ^ (j9 >>> 32);
        long j11 = this.f21768H;
        return (((i8 * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) j10);
    }

    public final String toString() {
        return "Mp4Timestamp: creation time=" + this.f21767G + ", modification time=" + this.f21768H + ", timescale=" + this.f21769I;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeLong(this.f21767G);
        parcel.writeLong(this.f21768H);
        parcel.writeLong(this.f21769I);
    }

    public /* synthetic */ C2213wv(Parcel parcel) {
        this.f21767G = parcel.readLong();
        this.f21768H = parcel.readLong();
        this.f21769I = parcel.readLong();
    }
}
