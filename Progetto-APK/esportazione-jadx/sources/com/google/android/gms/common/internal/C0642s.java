package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0642s extends M3.a {
    public static final Parcelable.Creator<C0642s> CREATOR = new C3.H(23);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f11893G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f11894H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f11895I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f11896J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f11897K;

    public C0642s(int i8, boolean z7, boolean z8, int i9, int i10) {
        this.f11893G = i8;
        this.f11894H = z7;
        this.f11895I = z8;
        this.f11896J = i9;
        this.f11897K = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f11893G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f11894H ? 1 : 0);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f11895I ? 1 : 0);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f11896J);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f11897K);
        AbstractC2987b.p0(iX, parcel);
    }
}
