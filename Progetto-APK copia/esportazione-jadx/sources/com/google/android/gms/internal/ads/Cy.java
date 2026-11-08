package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class Cy extends M3.a {
    public static final Parcelable.Creator<Cy> CREATOR = new C2350zc(20);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f12733G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final byte[] f12734H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f12735I;

    public Cy(int i8, byte[] bArr, int i9) {
        this.f12733G = i8;
        this.f12734H = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.f12735I = i9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f12733G);
        AbstractC2987b.K(parcel, 2, this.f12734H);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f12735I);
        AbstractC2987b.p0(iX, parcel);
    }

    public Cy() {
        this(1, null, 1);
    }
}
