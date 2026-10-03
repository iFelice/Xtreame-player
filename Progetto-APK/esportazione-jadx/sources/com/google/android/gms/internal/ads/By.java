package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class By extends M3.a {
    public static final Parcelable.Creator<By> CREATOR = new C2350zc(19);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f12521G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f12522H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f12523I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f12524J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f12525K;

    public By(int i8, int i9, int i10, String str, String str2) {
        this.f12521G = i8;
        this.f12522H = i9;
        this.f12523I = str;
        this.f12524J = str2;
        this.f12525K = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f12521G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f12522H);
        AbstractC2987b.Q(parcel, 3, this.f12523I);
        AbstractC2987b.Q(parcel, 4, this.f12524J);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f12525K);
        AbstractC2987b.p0(iX, parcel);
    }
}
