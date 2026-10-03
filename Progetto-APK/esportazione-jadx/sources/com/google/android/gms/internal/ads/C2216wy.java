package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2216wy extends M3.a {
    public static final Parcelable.Creator<C2216wy> CREATOR = new C2350zc(16);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f21776G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final byte[] f21777H;

    public C2216wy(int i8, byte[] bArr) {
        this.f21776G = i8;
        this.f21777H = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f21776G);
        AbstractC2987b.K(parcel, 2, this.f21777H);
        AbstractC2987b.p0(iX, parcel);
    }
}
