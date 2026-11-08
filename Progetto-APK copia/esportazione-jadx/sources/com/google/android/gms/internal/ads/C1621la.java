package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.la, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1621la extends M3.a {
    public static final Parcelable.Creator<C1621la> CREATOR = new E0(28);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f19798G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f19799H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f19800I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f19801J;

    public C1621la(int i8, String str, int i9, int i10) {
        this.f19798G = i8;
        this.f19799H = i9;
        this.f19800I = str;
        this.f19801J = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f19799H);
        AbstractC2987b.Q(parcel, 2, this.f19800I);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f19801J);
        AbstractC2987b.v0(parcel, 1000, 4);
        parcel.writeInt(this.f19798G);
        AbstractC2987b.p0(iX, parcel);
    }
}
