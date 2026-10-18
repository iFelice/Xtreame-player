package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ba, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1105ba extends M3.a {
    public static final Parcelable.Creator<C1105ba> CREATOR = new E0(25);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f18045G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f18046H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f18047I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final byte[] f18048J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String[] f18049K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String[] f18050L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f18051M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final long f18052N;

    public C1105ba(boolean z7, String str, int i8, byte[] bArr, String[] strArr, String[] strArr2, boolean z8, long j8) {
        this.f18045G = z7;
        this.f18046H = str;
        this.f18047I = i8;
        this.f18048J = bArr;
        this.f18049K = strArr;
        this.f18050L = strArr2;
        this.f18051M = z8;
        this.f18052N = j8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f18045G ? 1 : 0);
        AbstractC2987b.Q(parcel, 2, this.f18046H);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f18047I);
        AbstractC2987b.K(parcel, 4, this.f18048J);
        AbstractC2987b.R(parcel, 5, this.f18049K);
        AbstractC2987b.R(parcel, 6, this.f18050L);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f18051M ? 1 : 0);
        AbstractC2987b.v0(parcel, 8, 8);
        parcel.writeLong(this.f18052N);
        AbstractC2987b.p0(iX, parcel);
    }
}
